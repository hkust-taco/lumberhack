Review #70A
===========================================================================

Functional-reusable badge
-------------------------
2. Functional

Available badge
---------------
2. Yes

Reviewer expertise
------------------
3. Knowledgeable

Paper summary
-------------
Lumberhack is a Scala implementation of MLScript with alternative Haskell syntax, that applies deforestation to remove lingering intermediate representations with the goal of improving performance.

Comments for authors
--------------------
The setup is, unfortunately, fairly cumbersome. It's written in Scala, accepts -- alternatively -- Haskell syntax, and generates OCaml. Not many people (hopefully) will be in a situation like this one to reuse this software. While I love the contribution made by the authors, it's hard for me to see the artifact as a reference implementation: 
  - what parts exist because of the setup, and what's intrinsic of the contribution? (sad given that the contribution is about eliminating intermediate representations)
  - a handful of comments in the codebase, increasing the amount of detective work required;
  - many pieces of code were commented out, rather than removed or given a rationale on why it's there.

What I would've hoped for this artifact was the main contribution to exist standalone (either via a parametrised AST or the glue code to exist elsewhere).  For instance, `registerExprToType` in `Deforest.scala` is still dealing with quirks inherited from the Haskell syntax.



Review #70B
===========================================================================

Functional-reusable badge
-------------------------
2. Functional

Available badge
---------------
2. Yes

Reviewer expertise
------------------
2. Some familiarity

Paper summary
-------------
The paper discusses how Lumberhack addresses deforestation. Lumberhack is a versatile approach that works with both call-by-need and call-by-value languages, handles a wide range of programs and relatively avoids excessive code duplication.

Comments for authors
--------------------
I recommend restructuring the README to provide clearer and more precise steps for different operations. This will help users follow the instructions more easily and reduce the likelihood of errors and enhance accessibility ; specifically during the installation process, configuration settings, and running various commands.



Review #70C
===========================================================================

Functional-reusable badge
-------------------------
3. Reusable

Available badge
---------------
2. Yes

Reviewer expertise
------------------
3. Knowledgeable

Paper summary
-------------
The artifact implements a type-inference-based approach to general deforestation of call-by-value functional programs. The provided docker images include the source code of the tool, Lumberhack, in Scala, the example programs and the benchmarks (in MLscript or Haskell) presented in the paper, as well as scripts to generate plots and tables.

Comments for authors
--------------------
I was able to run and fully evaluate the provided docker for ARM64 architecture on an M1 MacBook Pro. However, I could only partially evaluate the AMD64 one on a Linux box, due to errors in executing `plot.sh` (perhaps `bench.sh` also threw some errors that I didn't catch). Nonetheless, I can verify that the artifact supports the claims in the paper and provides a reusable platform for future researchers.

Note: the "Complaints" sections below are the things I hope the authors address, and "Nitpicks" are some minor comments that will strengthen the artifact IMO but not necessary; the authors may choose to address "nitpicks" if they think it is worth the effort.

## Functional

The artifact reaches functional quality. In particular:

- All benchmarks passed, and the generated plots for time and size look very similar to the corresponding figures in the paper.
- Almost all examples (except for a few small ones in section 3) presented in the paper are provided in the artifact as MLscript programs. These programs and their "after fusion" results correspond to the code in the paper fairly well.

#### Complaints

The evaluation failed on my AMD64 Linux machine. Although `bench.sh` seemingly finished without issues, `plot.sh` gave me the following error:
```
Error in if (f(ratio)) { : missing value where TRUE/FALSE needed
Calls: sprintf -> unlist -> lapply -> FUN
Execution halted
```

It nonetheless generated a time plot for me, which looked wrong. The size plot seems correct though. I will attach `time.txt` and `time.pdf` in a hotcrp comment.

In addition, `table.sh` also gave me an error, perhaps due to the `plot.sh` error:
```
    lh = i[3]
IndexError: list index out of range
```

#### Nitpicks

The generated plots have the benchmarks in a different order than that in the paper. For example, the first 3 benchmarks on the second row are LCSS, Lambda and LastPiece in the paper, but they are Lambda, LastPiece and LCSS in the plots. It will make the correspondence easier to spot if they are arranged in the same way.


## Reusable

I believe the artifact is reusable. In particular:

- The README document is well-structured and well-written. I have no problem following the instructions to evaluate and play with the implementation.
- The inline feedback from compiling a program is helpful. I believe they can help readers understand the algorithm and implementation better. That said, there is still room for improvement (see below).
- I am able to provide my own programs (including some taken from existing literature) and exercise the deforestation process. This helps me understand the algorithm and limitation, as well as comparing to other approaches. It is also quite fun!
- Error messages are good enough. I deliberately introduced some syntactic mistakes, and most of the generated inline error messages are easy to understand and help me debug.


#### Complaints

I cannot make sense of the "fusion matches" sections in the inline feedback. Take 2.1 (Fig.2) as an example:

```
//│ >>>>>>> fusion matches >>>>>>>
//│ [Some 123]: 4 --->
//│     case x⁰ of {Some v⁰ => (v⁰ + 1) | None  => 0}: 16
//│ [None]: 5 --->
//│     case x⁰ of {Some v⁰ => (v⁰ + 1) | None  => 0}: 16
//│ ------------------
//│ case x⁰ of {Some v⁰ => (v⁰ + 1) | None  => 0}: 16 --->
//│     [Some 123]: 4
//│     [None]: 5
//│ <<<<<<< fusion matches <<<<<<<
```

What does it mean, and what are those numbers? I feel this section is important for understanding the algorithm, but it is hard to parse. I suggest the authors clarify this section in README, and ideally connect it to the paper.

#### Nitpicks

- The error message for unbound / out-of-scope variables and unrecognized operator (e.g., `!=`) is not ideal (some uncaught Java error).
- It would be great if the inline feedback also shows the inferred strategies, or some information about the type inference process.
- Is there a way to run individual task *and* update the benchmark results? This is helpful when some benchmark fails (e.g., possibly on my Linux), and I need to change some parameters to fix it. I would like to avoid running the whole `bench.sh` again as it takes a long time. I guess at least I can run the individual task using the method in README and then manually copy-paste the output to `time.txt`.
- There are not much comments / documents in the Scala source code. While the lack of comments does not necessarily mean the code base is hard to understand (which I cannot testify due to my poor Scala fluency), I think some comments that connect the source code to the algorithm (e.g., Fig.4 and Fig.6) would be great. This can help future researchers build their work on this paper and artifact.



Comment @A5 by Reviewer C
---------------------------------------------------------------------------
The attached `time.txt` and `time.pdf` are generated from my Linux machine where `plot.sh` complained. See my review for context.