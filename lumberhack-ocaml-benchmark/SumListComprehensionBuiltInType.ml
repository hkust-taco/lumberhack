(*
touch ./SumListComprehensionBuiltInType.mli && ocamlc ./SumListComprehensionBuiltInType.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./SumListComprehensionBuiltInType.ml -o "./SumListComprehensionBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumListComprehensionBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
module Module_original = struct
let rec enumFromTo__d0 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d0 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec sum__d0 _lh_sum_arg1_1 =
  (match _lh_sum_arg1_1 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      (_lh_sum_LH_C_0_1 + (sum__d0 _lh_sum_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec testSumListComprehensionBuiltInType__d0 _lh_testSumListComprehensionBuiltInType_arg1_1 =
  (sum__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (`LH_C((_lh_listcomp_fun_ls_h_2 * _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            | `LH_N -> 
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
          (_lh_listcomp_fun_3 ((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 ((enumFromTo__d0 1) _lh_testSumListComprehensionBuiltInType_arg1_1))));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec sum__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (fun _lh_listcomp_fun_5 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
            ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_5)) in
            (_lh_listcomp_fun_6 ((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_3))))))
  else
    (fun _lh_listcomp_fun_7 _lh_dummy_1 -> 
      0))
and enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (let rec _lh_sum_LH_C_1_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
            (let rec _lh_sum_LH_C_0_0 = (_lh_listcomp_fun_ls_h_1 * _lh_listcomp_fun_ls_h_0) in
              (fun _lh_dummy_0 -> 
                (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0))))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and testSumListComprehensionBuiltInType__d0 _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum__d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((enumFromTo__d0 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec sum__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo__d0 a_1 b_1 _lh_popOutId_0_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
          ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_6 ((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_3)))))
  else
    (fun _lh_dummy_1 -> 
      0))
and enumFromTo__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (fun _lh_dummy_0 -> 
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
        (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
          (let rec _lh_sum_LH_C_1_0 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0) in
            (let rec _lh_sum_LH_C_0_0 = (_lh_popOutId_0_0 * _lh_listcomp_fun_ls_h_0) in
              (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0)))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and testSumListComprehensionBuiltInType__d0 _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum__d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((enumFromTo__d0 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumListComprehensionBuiltInType" (fun () -> ignore (let open Module_original in ((testSumListComprehensionBuiltInType__d0 1000))));
  Bench.Test.create ~name:"lumberhack_SumListComprehensionBuiltInType" (fun () -> ignore (let open Module_lumberhack in ((testSumListComprehensionBuiltInType__d0 1000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumListComprehensionBuiltInType" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testSumListComprehensionBuiltInType__d0 1000))));
])
