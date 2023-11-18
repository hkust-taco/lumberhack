(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Rsa_nofib.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Rsa_nofib.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Rsa_nofib" (fun () -> ignore (let open Module_original.Module_original in ((testRsa_nofib__d0 50520))));
  Bench.Test.create ~name:"lumberhack_Rsa_nofib" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testRsa_nofib__d0 50520))));
  Bench.Test.create ~name:"lumberhack_pop_out_Rsa_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testRsa_nofib__d0 50520))));
])