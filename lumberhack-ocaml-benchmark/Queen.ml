(*
ocamlfind ocamlopt -rectypes -thread -O3 ./Queen.ml -o "./Queen.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Queen.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;


(* original *)
let rec enumFromTo_d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (a_2::((enumFromTo_d0 (a_2 + 1)) b_2))
  else
    [])
and gen_d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      ([]::[])
    | _ -> 
      (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | (_lh_listcomp_fun_ls_h_2 :: _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | (_lh_listcomp_fun_ls_h_3 :: _lh_listcomp_fun_ls_t_3) -> 
                  (if (((safe_d0 _lh_listcomp_fun_ls_h_3) 1) _lh_listcomp_fun_ls_h_2) then
                    ((_lh_listcomp_fun_ls_h_3::_lh_listcomp_fun_ls_h_2)::(_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                  else
                    (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                | [] -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ((enumFromTo_d0 1) _lh_gen_arg2_1)))
          | [] -> 
            [])) in
        (_lh_listcomp_fun_2 ((gen_d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1))))
and length_d0 ls_7 =
  (match ls_7 with
    | (h_7 :: t_8) -> 
      (1 + (length_d0 t_8))
    | [] -> 
      0)
and nsoln_d0 _lh_nsoln_arg1_1 =
  (length_d0 ((gen_d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and safe_d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | [] -> 
      true
    | (_lh_safe_LH_C_0_1 :: _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 != _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 != (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 != (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe_d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "match error"))
and testQueen_d0 _lh_testQueen_arg1_1 =
  (nsoln_d0 _lh_testQueen_arg1_1);;

(* lumberhack *)
let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1 -> 
          (if (((safe_d0_d0 _lh_listcomp_fun_ls_h_0) 1) _lh_listcomp_fun_ls_h_1) then
            ((let rec _lh_safe_LH_C_0_0 = _lh_listcomp_fun_ls_h_0 in
              (let rec _lh_safe_LH_C_1_0 = _lh_listcomp_fun_ls_h_1 in
                (fun _lh_safe_arg1_0 _lh_safe_arg2_0 -> 
                  ((((_lh_safe_arg1_0 != _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 != (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 != (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe_d0_d0 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0)))))::(_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          else
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and gen_d0_d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      ((fun _lh_safe_arg1_2 _lh_safe_arg2_2 -> 
        true)::[])
    | _ -> 
      (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | (_lh_listcomp_fun_ls_h_3 :: _lh_listcomp_fun_ls_t_3) -> 
            (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
              ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_5) _lh_listcomp_fun_4) _lh_listcomp_fun_ls_t_3)) in
              (_lh_listcomp_fun_5 ((enumFromTo_d0_d0 1) _lh_gen_arg2_0)))
          | [] -> 
            [])) in
        (_lh_listcomp_fun_4 ((gen_d0_d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0))))
and length_d0_d0 ls_0 =
  (match ls_0 with
    | (h_0 :: t_0) -> 
      (1 + (length_d0_d0 t_0))
    | [] -> 
      0)
and nsoln_d0_d0 _lh_nsoln_arg1_0 =
  (length_d0_d0 ((gen_d0_d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and safe_d0_d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_0 =
  ((_lh_safe_arg3_0 _lh_safe_arg1_1) _lh_safe_arg2_1)
and testQueen_d0_d0 _lh_testQueen_arg1_0 =
  (nsoln_d0_d0 _lh_testQueen_arg1_0);;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0_d0 a_1 b_1 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_h_4 = a_1 in
      (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo_d0_d0_d0 (a_1 + 1)) b_1) in
        (if (((safe_d0_d0_d0 _lh_listcomp_fun_ls_h_4) 1) _lh_popOutId_0_0) then
          ((let rec _lh_safe_LH_C_0_1 = _lh_listcomp_fun_ls_h_4 in
            (let rec _lh_safe_LH_C_1_1 = _lh_popOutId_0_0 in
              (fun _lh_safe_arg1_4 _lh_safe_arg2_4 -> 
                ((((_lh_safe_arg1_4 != _lh_safe_LH_C_0_1) && (_lh_safe_arg1_4 != (_lh_safe_LH_C_0_1 + _lh_safe_arg2_4))) && (_lh_safe_arg1_4 != (_lh_safe_LH_C_0_1 - _lh_safe_arg2_4))) && (((safe_d0_d0_d1 _lh_safe_arg1_4) (_lh_safe_arg2_4 + 1)) _lh_safe_LH_C_1_1)))))::(_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_4))
        else
          (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_4))))
  else
    (_lh_popOutId_2_0 _lh_popOutId_3_0))
and gen_d0_d0_d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      ((fun _lh_safe_arg1_6 _lh_safe_arg2_6 -> 
        true)::[])
    | _ -> 
      (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | (_lh_listcomp_fun_ls_h_7 :: _lh_listcomp_fun_ls_t_7) -> 
            (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_3 -> 
              ((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_7) _lh_listcomp_fun_1_1) _lh_listcomp_fun_1_0) _lh_listcomp_fun_ls_t_7)) in
              (_lh_listcomp_fun_1_1 ((enumFromTo_d0_d0_d0 1) _lh_gen_arg2_1)))
          | [] -> 
            [])) in
        (_lh_listcomp_fun_1_0 ((gen_d0_d0_d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1))))
and length_d0_d0_d0 ls_1 =
  (match ls_1 with
    | (h_1 :: t_1) -> 
      (1 + (length_d0_d0_d0 t_1))
    | [] -> 
      0)
and nsoln_d0_d0_d0 _lh_nsoln_arg1_1 =
  (length_d0_d0_d0 ((gen_d0_d0_d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and safe_d0_d0_d0 _lh_safe_arg1_5 _lh_safe_arg2_5 _lh_safe_arg3_2 =
  ((_lh_safe_arg3_2 _lh_safe_arg1_5) _lh_safe_arg2_5)
and safe_d0_d0_d1 _lh_safe_arg1_3 _lh_safe_arg2_3 _lh_safe_arg3_1 =
  ((_lh_safe_arg3_1 _lh_safe_arg1_3) _lh_safe_arg2_3)
and testQueen_d0_d0_d0 _lh_testQueen_arg1_1 =
  (nsoln_d0_d0_d0 _lh_testQueen_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Queen" (fun () -> ignore ((testQueen_d0 11)));
  Bench.Test.create ~name:"lumberhack_Queen" (fun () -> ignore ((testQueen_d0_d0 11)));
  Bench.Test.create ~name:"lumberhack_pop_out_Queen" (fun () -> ignore ((testQueen_d0_d0_d0 11)));
])