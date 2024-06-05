(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_____________.ml ./Module_lumberhack___________.ml ./Module_lumberhack_float_out_.ml ./main.ml -o Fig1_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Fig1_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Fig1_lh" (fun () -> ignore (let open Module_original_____________.Module_original_____________(struct end) in (run ())));
  Bench.Test.create ~name:"lumberhack_Fig1_lh" (fun () -> ignore (let open Module_lumberhack___________.Module_lumberhack___________(struct end) in (run ())));
  Bench.Test.create ~name:"lumberhack_float_out_Fig1_lh" (fun () -> ignore (let open Module_lumberhack_float_out_.Module_lumberhack_float_out_(struct end) in (run ())));
])
