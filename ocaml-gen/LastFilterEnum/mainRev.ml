(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original___________.ml ./Module_lumberhack_________.ml ./Module_lumberhack_pop_out_.ml ./mainRev.ml -o LastFilterEnumRev.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilterEnumRev.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilterEnum" (fun () -> ignore (let open Module_lumberhack_pop_out_.Module_lumberhack_pop_out_(struct end) in (run ())));
  Bench.Test.create ~name:"lumberhack_LastFilterEnum" (fun () -> ignore (let open Module_lumberhack_________.Module_lumberhack_________(struct end) in (run ())));
  Bench.Test.create ~name:"original_LastFilterEnum" (fun () -> ignore (let open Module_original___________.Module_original___________(struct end) in (run ())));
])