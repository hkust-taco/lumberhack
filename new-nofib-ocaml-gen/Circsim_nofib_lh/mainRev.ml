(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_float_out_____.ml ./mainRev.ml -o Circsim_nofib_lhRev.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Circsim_nofib_lhRev.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"lumberhack_float_out_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_float_out_____.Module_lumberhack_float_out_____(struct end) in (run ())));
  Bench.Test.create ~name:"lumberhack_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________(struct end) in (run ())));
  Bench.Test.create ~name:"lumberhack_only_expanded_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_(struct end) in (run ())));
  Bench.Test.create ~name:"original_Circsim_nofib_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________(struct end) in (run ())));
])
