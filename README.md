# ICFP 2024 Artifact

Name: The Long Way to Deforestation: A Type Inference and Elaboration Technique for Removing Intermediate Data Structures

## Abstract

[TODO:]

## Artifact Instructions

### Setting up the Artifact

- Using the Docker Image
  
  We have built Docker images containing all necessary dependencies
  compiled for both `amd64` and `arm64` platforms and pushed them to
  [DockerHub](https://hub.docker.com/r/crescentonc/lumberhack-docker/tags).
  One can pull the `amd64` image and launch a container with the following command:

  ```
  docker pull crescentonc/lumberhack-docker:v0-amd64 [FIXME: change tag later]
  docker run -it --rm crescentonc/lumberhack-docker:v0-amd64
  ```
  
  If one wants to use the `arm64` image, the commands are:
  
  ```
  docker pull crescentonc/lumberhack-docker:v0-arm64 [FIXME: change tag later]
  docker run -it --rm crescentonc/lumberhack-docker:v0-arm64
  ```
  
  The user will be attached to the shell of the container after the image gets
  pulled and the container is launched.
  Please `cd` to `mlscript/` and launch the SBT shell by typing `sbt`.

- Setting up from Scratch

  1. **To compile the project and run the tests**: you need [JDK (≥11) supported by Scala][supported-jdk-versions], [`sbt`][sbt], [`java-tree-sitter`][java-tree-sitter] (Java binding of tree-sitter)
  and [`tree-sitter-haskell`][tree-sitter-haskell] (Haskell syntax for tree-sitter). `java-tree-sitter` and `tree-sitter-haskell` are needed to
  parse input Haskell programs into our core language AST so that Lumberhack can perform optimization on them.

      We recommend you install JDK and `sbt` via [coursier][coursier].

      Then, install `java-tree-sitter` (including its submodules) and `tree-sitter-haskell` by cloning them from GitHub.
      After that, some modifications are needed before we start to compile the tree-sitter library due to some compatibility issues.
      The changes are:
      - Enabling c++ compilation for `java-tree-sitter` (explained at point 3 from [this PR](https://github.com/serenadeai/java-tree-sitter/pull/18)).
      This can be done by executing
        ```sh
        sed -i "s/if cpp/if cpp or True/g" ./build.py
        ```
        at the root directory of `java-tree-sitter`
      - Checking out to commit `b6ec26f181dd059eedd506fa5fbeae1b8e5556c8` for `tree-sitter-haskell`

      After the above changes are made, run at the root directory of `java-tree-sitter`:
      ```sh
      ./build.py -o libjava-tree-sitter-haskell -v ../tree-sitter-haskell
      ``` 
      to compile the dynamic library. Then copy the output file to
      `java.library.path` (which can be shown by executing `java -XshowSettings:properties`).
      On linux machine, this can be done by the following command because `/lib` should be a
      `java.library.path`.
      ```sh
      cp ./libjava-tree-sitter-haskell.so /lib/libjava-tree-sitter-haskell.so
      ```

      After installing the prerequisites, change your working directory to the root of this repository and
      launch the SBT shell by typing `sbt` in the terminal.

  2. **To compile the output OCaml programs and run the benchmarks**: you need the
  [optimizing OCaml compiler flambda][flambda] (the version we use is 5.0.0),
  the library [core_bench][core_bench] and [zarith][zarith].

      We recommend you install the above dependencies via `opam`:
      ```sh
      opam switch create artifact --packages=ocaml-variants.5.0.0+options,ocaml-option-flambda -y
      eval $(opam env)
      opam install zarith core_bench -y
      ```

  3. **To generate the plots we used in paper**: you need [R (≥3.5)][R] and
  R packages [ggplot2][ggplot2], [RColorBrewer][], [gridExtra][gridExtra].

      After installing R, run the following command in your shell to install the required packages:
      ```sh
      R -e "install.packages(c('RColorBrewer', 'ggplot2', 'gridExtra'), repos='http://cran.rstudio.com/')"
      ```


  [supported-jdk-versions]: https://docs.scala-lang.org/overviews/jdk-compatibility/overview.html
  [sbt]: https://www.scala-sbt.org/
  [coursier]: https://get-coursier.io/
  [java-tree-sitter]: https://github.com/serenadeai/java-tree-sitter
  [tree-sitter-haskell]: https://github.com/tree-sitter/tree-sitter-haskell
  [flambda]: https://opam.ocaml.org/packages/ocaml-option-flambda/#
  [core_bench]: https://opam.ocaml.org/packages/core_bench/
  [zarith]: https://opam.ocaml.org/packages/zarith/
  [R]: https://www.r-project.org/
  [ggplot2]: https://cran.r-project.org/web/packages/ggplot2/index.html
  [gridExtra]: https://cran.r-project.org/web/packages/gridExtra/index.html
  [RColorBrewer]: https://cran.r-project.org/web/packages/RColorBrewer/index.html



### Evaluation Instructions

This section describes how to run Lumberhack and its generated OCaml program, as well as
how to generate the plots and tables we used in the paper. For the correspondence
between this artifact and the paper, please refer to [the section below](#correspondance-with-claims-in-the-paper).

- To perform and test Lumberhack's optimization on the `nofib` benchmark tests we used in the paper:

  run the following command in your shell:
  ```sh
  sbt 'testOnly mlscript.lumberhack.DiffTestLumberhack'
  ```
  This will start the `sbt` shell and execute the `sbt` command `testOnly mlscript.lumberhack.DiffTestLumberhack`.
  Alternatively, you can start `sbt` shell first and then execute manually the command `testOnly mlscript.lumberhack.DiffTestLumberhack`.

  The output OCaml programs will be located in `new-nofib-ocaml-gen`, grouped by sub-directories following their names.
  These sub-directories contain both the unoptimized programs and the optimized ones, and each of the sub-directories also includes a `main.ml` that contains codes
  utilizing OCaml's benchmark library [`core_bench`](https://opam.ocaml.org/packages/core_bench/) to
  benchmark both the original program and the optimized ones and show the execution time and GC data.

  After OCaml programs are generated, run the following command
  to start executing them.
  ```sh
  ./bench.sh
  ```
  The raw output from `core_bench` about the execution stats and the compiled
  binary size information will be printed to stdout, `plot/time.txt` and `plot/size.txt`.
  
  **NOTE**: some programs require longer running duration to enable `core_bench` to report
  reliable 95% confidence intervals, and their test durations
  are adjusted accordingly in `bench.sh` based on the results of
  executing the tests from the authors' machines.
  Depending on the machine executing the tests, the numbers may need to be further adjusted.
  To make the adjustment, modify `bench.sh` and add an `elif` case after line 35:
  ```sh
  ...
  elif [ "$dir" = "<benchmark_name>" ]
  then
    c=$cmd" -q"" <duration_in_seconds>"
  ...
  ```

- To test output OCaml benchmark programs individually:
  `cd` to the corresponding sub-directory in `new-nofib-ocaml-gen`
  and run the following command to show the suggested command for
  compiling and running the generated OCaml programs.
  ```sh
  echo $(head -2 ./main.ml | tail -1)
  ```
  The suggested command is composed of two commands, the first
  compiles the OCaml programs using `ocamlopt -O3` to produce
  an executable `<benchmark_name>.out`, the second launches
  the generated executable: `./<benchmark_name>.out +time`.
  The `+time` flag tells `core_bench` to measure the
  95% confidence interval. The default benchmarking
  duration is 10 seconds, and it can be changed by passing
  `-q <time_in_seconds>` to the executable. More options
  are also provided by `core_bench`, and they can be listed by
  running `./<benchmark_name>.out --help`.
  

- To write one's own programs and test Lumberhack's optimization on them:
  
  The testing infrastructure for Lumberhack's `sbt` project is set up so that
  if there are any unstaged changes (as determined by `git`) in any test file
(those in `lumberhack/shared/src/test/resources`), only the corresponding files will be processed.
So one can make select modifications to some test files and run the test command (`testOnly mlscript.lumberhack.DiffTestLumberhack`) again in `sbt` shell,
and only your modified tests will be run.
There is a `lumberhack/shared/src/test/resources/PaperExamples.mls` file with examples for you to start editing
and getting new results from Lumberhack.

  Test output (program after expansion, producer/consumer matches and program after optimization)
  is inserted **in place** in the test file after each corresponding block, as comments beginning with `//│`.
  This makes it very easy and convenient to see the test results for each code block.
  For this reason, we recommend using an editor that automatically reloads open files on changes.
  VSCode and Sublime Text work well for this.

  Currently, we support input programs using
  a subset of MLscript syntax (explained below) and
  Haskell syntax (so that we can port the `nofib` benchmarks).
  We recommend using MLscript syntax to manually write programs as inputs to Lumberhack, because
  the generated output tends to be more readable due to less name mangling.

  - The supported MLscript syntax is [described below](#supported-mlscript-syntax).
    We also implemented the example programs we described in the paper using
    this syntax in `lumberhack/shared/src/test/resources/PaperExamples.mls`.
    One can refer to that for a general idea of the MLscript syntax.
  - The supported Haskell syntax suffices to enable us to port the related
    `nofib` benchmarks. Some Haskell features are not supported (including but not limited to):
      - the Haskell record
      - the "as" pattern: `ls@(x : xs)`
      - lambda definition with patterns as its parameters: `\(x:xs) -> ...`
      - `let` groups: `let a = x; b = x in ...`
      - `let` bindings with patterns as its binder: `let (x:xs) = [1] in ...`
      - `where` clauses that refer to variables defined at the outer scope: `f x = g x where g _ = x`

- To generate plots in the paper:

  After the execution of `bench.sh`, `plot/time.txt` and `plot/size.txt`
  should be ready. Then run
  ```bash
  ./plot.sh
  ```
  The scripts in `plot/` will be automatically called, and the plots
  will be generated as `plot/size.pdf` and `plot/time.pdf`. `plot/size.csv` and `plot/time.csv`
  will also be generated along the way as intermediate files, which
  collect information in `csv` format from the raw outputs from `core_bench`.

  Additionally, to generate the tables (in `csv` format) we present in Appendix D
  (table 1 and table 2), run
  ```sh
  ./table.sh
  ```


### Correspondence with the Paper

[TODO:]



## Supported MLscript Syntax

[TODO:]
[NOTE: we currently do not support nested patterns for input programs written in MLscript syntax]



## Additional Artifact Description

In this artifact, the implementation of Lumberhack is intertwined with MLscript,
a nascent functional programming language intended for real-world usage. This allows
Lumberhack to leverage the DiffTests utility implemented for MLscript.
Additionally, this also makes it possible for Lumberhack to take MLscript
programs as inputs and perform optimization on them.
Although the support for generating MLscript programs is not available yet, it is
anticipated that Lumberhack will be integrated into the MLscript compiler in the future.
[TODO: the examples in the introduction section of the paper are written in MLscript in this artifact]


The `lumberhack` directory contains the sources of implementation of Lumberhack
[TODO:]

The `shared` directory contains the sources for MLscript.

- The `shared/src/main/scala/mlscript` directory contains the sources of the MLscript compiler.
- The `shared/src/test/scala/mlscript` directory contains the sources of the testing infrastructure.
[TODO:]




<!-- # MLscript

#### Directories

- The `shared/src/main/scala/mlscript` directory contains the sources of the MLscript compiler.

- The `shared/src/test/scala/mlscript` directory contains the sources of the testing infrastructure.

- The `shared/src/test/diff` directory contains the actual tests.