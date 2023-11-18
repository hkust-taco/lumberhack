(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Expert_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Expert_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Expert_nofib_lh" (fun () -> ignore (let open Module_original.Module_original in ((testExpert_nofib_lh 3))));
  Bench.Test.create ~name:"lumberhack_Expert_nofib_lh" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testExpert_nofib__d0 3))));
  Bench.Test.create ~name:"lumberhack_pop_out_Expert_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testExpert_nofib__d0 3))));
])
