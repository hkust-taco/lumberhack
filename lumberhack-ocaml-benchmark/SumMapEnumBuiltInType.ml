(*
ocamlfind ocamlopt -rectypes -thread -O3 ./SumMapEnumBuiltInType.ml -o "./SumMapEnumBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumMapEnumBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec enumFromTo_d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (`LH_C(a_2, ((enumFromTo_d0 (a_2 + 1)) b_2)))
  else
    (`LH_N));;
let rec map_d0 f_4 ls_7 =
  (match ls_7 with
    | `LH_C(h_7, t_8) -> 
      (`LH_C((f_4 h_7), ((map_d0 f_4) t_8)))
    | `LH_N -> 
      (`LH_N));;
let rec sum_d0 _lh_sum_arg1_1 =
  (match _lh_sum_arg1_1 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      (_lh_sum_LH_C_0_1 + (sum_d0 _lh_sum_LH_C_1_1))
    | _ -> 
      (failwith "match error"));;
let rec testSumMapEnumBuiltInType_d0 _lh_testSumMapEnumBuiltInType_arg1_1 =
  (sum_d0 ((map_d0 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo_d0 1) _lh_testSumMapEnumBuiltInType_arg1_1)));;

(* lumberhack *)
let rec map_d0_d0 f_2 ls_0 =
  (ls_0 f_2);;
let rec sum_d0_d0 _lh_sum_arg1_0 =
  _lh_sum_arg1_0;;
let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec h_0 = a_0 in
      (let rec t_0 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
        (fun f_0 -> 
          (let rec _lh_sum_LH_C_0_0 = (f_0 h_0) in
            (let rec _lh_sum_LH_C_1_0 = ((map_d0_d0 f_0) t_0) in
              (_lh_sum_LH_C_0_0 + (sum_d0_d0 _lh_sum_LH_C_1_0)))))))
  else
    (fun f_1 -> 
      0))
and testSumMapEnumBuiltInType_d0_d0 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum_d0_d0 ((map_d0_d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_d0_d0 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;

(* lumberhack_pop_out *)
let rec map_d0_d0_d0 f_5 ls_1 =
  (ls_1 f_5);;
let rec map_d0_d0_d1 f_6 ls_2 =
  (ls_2 f_6);;
let rec sum_d0_d0_d0 _lh_sum_arg1_2 =
  _lh_sum_arg1_2;;
let rec sum_d0_d0_d1 _lh_sum_arg1_1 =
  _lh_sum_arg1_1;;
let rec enumFromTo_d0_d0_d0 a_1 b_1 _lh_popOutId_0_0 =
  (if (a_1 <= b_1) then
    (let rec h_1 = a_1 in
      (let rec t_1 = ((enumFromTo_d0_d0_d0 (a_1 + 1)) b_1) in
        (let rec _lh_sum_LH_C_0_1 = (_lh_popOutId_0_0 h_1) in
          (let rec _lh_sum_LH_C_1_1 = ((map_d0_d0_d0 _lh_popOutId_0_0) t_1) in
            (_lh_sum_LH_C_0_1 + (sum_d0_d0_d0 _lh_sum_LH_C_1_1))))))
  else
    0)
and testSumMapEnumBuiltInType_d0_d0_d0 _lh_testSumMapEnumBuiltInType_arg1_1 =
  (sum_d0_d0_d1 ((map_d0_d0_d1 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo_d0_d0_d0 1) _lh_testSumMapEnumBuiltInType_arg1_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumMapEnumBuiltInType" (fun () -> ignore ((testSumMapEnumBuiltInType_d0 300000)));
  Bench.Test.create ~name:"lumberhack_SumMapEnumBuiltInType" (fun () -> ignore ((testSumMapEnumBuiltInType_d0_d0 300000)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumMapEnumBuiltInType" (fun () -> ignore ((testSumMapEnumBuiltInType_d0_d0_d0 300000)));
])