import Wart._

enablePlugins(ScalaJSPlugin)

ThisBuild / scalaVersion     := "2.13.9"
ThisBuild / version          := "0.1.0-SNAPSHOT"
ThisBuild / organization     := "io.lptk"
ThisBuild / organizationName := "LPTK"

lazy val root = project.in(file("."))
  .aggregate(lumberhackJVM)
  .settings(
    publish := {},
    publishLocal := {},
  )

lazy val mlscript = crossProject(JSPlatform, JVMPlatform).in(file("."))
  .settings(
    name := "mlscript",
    scalacOptions ++= Seq(
      "-deprecation",
      "-feature",
      "-unchecked",
      "-language:higherKinds",
      "-Ywarn-value-discard",
    ),
    scalacOptions ++= {
      if (insideCI.value) Seq("-Wconf:any:error")
      else                Seq("-Wconf:any:warning")
    },
    wartremoverWarnings ++= Warts.allBut(
      Recursion, Throw, Nothing, Return, While, IsInstanceOf,
      Var, MutableDataStructures, NonUnitStatements,
      DefaultArguments, ImplicitParameter, ImplicitConversion,
      StringPlusAny, Any,
      JavaSerializable, Serializable, Product,
      LeakingSealed, Overloading,
      Option2Iterable, IterableOps, ListAppend
    ),
    libraryDependencies += "org.scalatest" %% "scalatest" % "3.2.12" % Test,
    libraryDependencies += "com.lihaoyi" %%% "sourcecode" % "0.3.0",
    libraryDependencies += "com.lihaoyi" %%% "fastparse" % "2.3.3",
    libraryDependencies += "com.lihaoyi" %% "os-lib" % "0.8.0",
    // 
    watchSources += WatchSource(
      sourceDirectory.value.getParentFile().getParentFile()/"shared/src/test/diff", "*.fun", NothingFilter),
    watchSources += WatchSource(
      sourceDirectory.value.getParentFile().getParentFile()/"shared/src/test/diff", "*.mls", NothingFilter),
    Test / testOptions += Tests.Argument(TestFrameworks.ScalaTest, "-oC"),
  )
  .jsSettings(
    scalaJSUseMainModuleInitializer := true,
    libraryDependencies += "org.scala-js" %%% "scalajs-dom" % "2.1.0",
  )

lazy val mlscriptJVM = mlscript.jvm
lazy val mlscriptJS = mlscript.js


lazy val lumberhack = crossProject(JVMPlatform).in(file("lumberhack"))
  .settings(
    resolvers += "jitpack" at "https://jitpack.io",
    name := "lumberhack",
    scalaVersion := "3.3.0",
    sbtJniCoreScope := Compile,
    sourceDirectory := baseDirectory.value.getParentFile()/"shared"/"src",
    watchSources += WatchSource(
      baseDirectory.value.getParentFile()/"shared"/"src"/"test"/"resources", "*.mls", NothingFilter),
    libraryDependencies += ("com.lihaoyi" %% "pprint" % "0.7.0").cross(CrossVersion.for3Use2_13),
    libraryDependencies += ("com.lihaoyi" %% "ammonite-ops" % "2.4.0").cross(CrossVersion.for3Use2_13),
    libraryDependencies += ("com.github.serenadeai" % "java-tree-sitter" % "master"),
  )
  .dependsOn(mlscript % "compile->compile;test->test")

lazy val lumberhackJVM = lumberhack.jvm
