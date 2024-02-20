(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original___________.ml ./Module_lumberhack_________.ml ./Module_lumberhack_pop_out_.ml ./Module_lumberhack_inlined_.ml ./Module_lumberhack_flo_out_.ml ./main.ml -o ZipUnzip.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./ZipUnzip.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_ZipUnzip" (fun () -> ignore (let open Module_original___________.Module_original___________(struct end) in ((testZipUnzip 50000))));
  Bench.Test.create ~name:"lumberhack_ZipUnzip" (fun () -> ignore (let open Module_lumberhack_________.Module_lumberhack_________(struct end) in ((testZipUnzip 50000))));
  Bench.Test.create ~name:"lumberhack_pop_out_ZipUnzip" (fun () -> ignore (let open Module_lumberhack_pop_out_.Module_lumberhack_pop_out_(struct end) in ((testZipUnzip 50000))));
  Bench.Test.create ~name:"lumberhack_inlined_ZipUnzip" (fun () -> ignore (let open Module_lumberhack_inlined_.Module_lumberhack_inlined_(struct end) in ((testZipUnzip 50000))));
  Bench.Test.create ~name:"lumberhack_flo_out_ZipUnzip" (fun () -> ignore (let open Module_lumberhack_flo_out_.Module_lumberhack_flo_out_(struct end) in ((testZipUnzip 50000))));
])