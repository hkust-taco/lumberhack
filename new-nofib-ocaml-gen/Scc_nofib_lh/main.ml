(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Scc_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Scc_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Scc_nofib_lh" (fun () -> ignore (let open Module_original.Module_original in ((testScc_nofib_lh 0))));
  Bench.Test.create ~name:"lumberhack_Scc_nofib_lh" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testScc_nofib__d0 0))));
  Bench.Test.create ~name:"lumberhack_pop_out_Scc_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testScc_nofib__d0 0))));
])