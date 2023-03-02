package mlscript
package lumberhack

import mlscript.{DiffTests, ModeType, TypingUnit, Term, Pgrm}
import mlscript.utils.shorthands.Str
import mlscript.codegen.Helpers.inspect as showStructure
import scala.collection.mutable.StringBuilder

class DiffTestLumberhack extends DiffTests {
  import DiffTestLumberhack.*
  override def postProcess(mode: ModeType, basePath: List[Str], testName: Str, unit: TypingUnit, output: Str => Unit): Unit = {
    // output("Parsed AST:\n")
    // output(Pgrm(unit.entities).toString())
    // output("Parsed AST:\n")
    
    output(">>>>>>>>>> Original >>>>>>>>>>")
    given d: Deforest(mode.stdout)
    val (allowErr, filteredEntities) = unit.entities match {
      case Var("_LUMBERHACK_ERROR") :: t => (true, t)
      case l => (false, l)
    }
    val originalProgram = Program.fromPgrm(Pgrm(filteredEntities))
    val constraints = d(originalProgram)
    // output(originalProgram.pp(using true))
    output(originalProgram.pp)
    output("<<<<<<<<<< Original <<<<<<<<<<")

    if mode.stdout || mode.verbose then {
      output("\n>>>>>>>>>> initial constraints >>>>>>>>>>")
      output(d.constraints.map((p, c) => s"${p.pp(using true)} <: ${c.pp(using true)}").mkString("\n"))
      output("<<<<<<<<<< initial constraints <<<<<<<<<<")
    }
    try {
      d.resolveConstraints

      output("\n>>>>>>> knots >>>>>>>")
      d.recursiveConstr.foreach { r =>
        output(s"${r._1._1.pp} <: ${r._1._2.pp}")
        r._2.foreach { p =>
          output(s"\t${p._1.pp}  --->  ${p._2.pp}")
          if !p._1.p.containsSlice(p._2.p) then output("\t!!NOT SUB-PATH")
        }
      }
      output("<<<<<<< knots <<<<<<<")

      output("\n>>>>>>> splitted knots >>>>>>>")
      d.actualKnotsUsingSplit._1.foreach { (k, v) =>
        output(s"${k.pp(using false)} --> ${v.map(v => s"${v.pp(using false)}").mkString("\n\t")}")
        
        if v.size > 1 then output("\t!!MORE THAN ONE MATCH")
        if !v.forall(vp => k.p.startsWith(vp.p)) then output("\t!!NOT PREFIX")
      }
      output("<<<<<<< splitted knots <<<<<<<")
      
      output("\n>>>>>>> expansion >>>>>>>")
      val callTree = CallTree.callTreeUsingSplitKnot(d)
      // val callTree = CallTree.callTreeUsingNonSplitKnot(d)
      output(callTree._1.map(_.pp).mkString("\n"))
      output("<<<<<<< expansion <<<<<<<")

      if mode.stdout || mode.verbose then {
        output("\n>>>>>>> type variable bounds >>>>>>>")
        val tvs = d.upperBounds.keySet ++ d.lowerBounds.keySet
        tvs.foreach { tv =>
          val ub = d.upperBounds(tv).map(u => s"${u._1.pp} < ${u._2.pp(using true)}")
          val lb = d.lowerBounds(tv).map(l => s"${l._2.pp(using true)} < ${l._1.rev.pp}")
          val tvName = d.varsName(tv)
          output(tvName + ":")
          ub.foreach(u => output(s"\t${tvName}${u}"))
          lb.foreach(l => output(s"\t${l}${tvName}"))
          output("--------------")
        }
        output("<<<<<<< type variable bounds <<<<<<<")
      }

      output("\n>>>>>>> expanded program >>>>>>>")
      val (newProg, newd) = originalProgram.expandedWithNewDeforest(callTree._1)
      output(newProg.pp)
      output("<<<<<<< expanded program <<<<<<<")

      

      // =========== run the typer again and do the fusion ==============

      

      newd(newProg)
      newd.resolveConstraints

      output("\n>>>>>>> fusion matches >>>>>>>")
      val fusionMatchStr = newd.fusionMatch.map { (p, cs) =>
        newd.exprs(p).pp(false)(using true) + "\n" + newd.exprs(p).pp(false) + " --->\n" + cs.map { c =>
          "\t" + newd.exprs(c).pp(false)
        }.mkString("\n") + (if cs.size > 1 then "\n\t MORE THAN ONE MATCH EXPR" else "")
      }.mkString("\n")
      output(fusionMatchStr)
      output("<<<<<<< fusion matches <<<<<<<")

      output("\n>>>>>>> after fusion >>>>>>>")
      val prgmAfterFusion = newProg.rewrite(newd.fusionMatch.toMap, newd)
      output(prgmAfterFusion.pp)
      output("<<<<<<< after fusion <<<<<<<")
      // output("\n>>>>>>> new type variable bounds >>>>>>>")
      // val newtvs = newd.upperBounds.keySet ++ d.lowerBounds.keySet
      // newtvs.foreach { tv =>
      //   val ub = d.upperBounds(tv).map(u => s"${u._1.pp} < ${u._2.pp(using true)}")
      //   val lb = d.lowerBounds(tv).map(l => s"${l._2.pp(using true)} < ${l._1.rev.pp}")
      //   val tvName = d.varsName(tv)
      //   output(tvName + ":")
      //   ub.foreach(u => output(s"\t${tvName}${u}"))
      //   lb.foreach(l => output(s"\t${l}${tvName}"))
      //   output("--------------")
      // }
      // output("<<<<<<< new type variable bounds <<<<<<<")

      // output("\n>>>>>>> new knots >>>>>>>")
      // newd.recursiveConstr.foreach { r =>
      //   output(s"${r._1._1.pp} <: ${r._1._2.pp}")
      //   r._2.foreach { p =>
      //     output(s"\t${p._1.pp}  --->  ${p._2.pp}")
      //     if !p._1.p.containsSlice(p._2.p) then output("\t!!NOT SUB-PATH")
      //   }
      // }
      // output("<<<<<<< new knots <<<<<<<")

      // output("\n>>>>>>> new expansion >>>>>>>")
      // // val newCallTree = CallTree.callTreeUsingSplitKnot(d)
      // val newCallTree = CallTree.callTreeUsingNonSplitKnot(newd)
      // val outputString = newCallTree._1.map(_.pp).mkString("\n")
      // output(outputString)
      // output("<<<<<<< new expansion <<<<<<<")
    } catch {
      case e => if allowErr then {
        output("!!!!!!ERROR!!!!!!")
        output(s"${e.toString()}")
        if mode.stdout || mode.verbose then {
          output(s"\n${e.getStackTrace().take(10).map(_.toString()).mkString("\n")}\n")
        }
        output("!!!!!!ERROR!!!!!!")
      } else { throw e }
    }
  }
  
  override protected lazy val files = allFiles.filter { file =>
    val fileName = file.baseName
    validExt(file.ext) && ((modified.isEmpty || modified(file.relativeTo(pwd))) || lumberhackLocalTest(fileName))
  }
}

object DiffTestLumberhack {
  private val pwd = os.pwd
  private val dir = pwd/"lumberhack"/"shared"/"src"/"test"/"resources"
  private val allFiles = os.walk(dir)
  private val validExt = Set("mls")
  private val modified: Set[os.RelPath] = DiffTests.findModifiedFiles(dir)
  private val lumberhackLocalTest = Set[Str]("_LocalTest")
}
