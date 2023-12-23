

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec foldr_lh__d0 f_5 i_2 ls_2_6 =
  ((ls_2_6 f_5) i_2);;
let rec foldr_lh__d1 f_6 i_3 ls_2_7 =
  ((ls_2_7 f_6) i_3);;
let rec unzip_lh__d0 _lh_unzip_arg1_0 =
  (((foldr_lh__d1 (fun ab_0 asbs_1 -> 
    (let rec _lh_matchIdent_2 = ab_0 in
      (_lh_matchIdent_2 asbs_1)))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
let rec map_lh__d1 f_3_6 ls_4_3 =
  (ls_4_3 f_3_6);;
let rec concat_lh__d1 lss_1 =
  (lss_1 99);;
let rec mappend_lh__d4 xs_6 ys_4_1 =
  (xs_6 ys_4_1);;
let rec map_lh__d2 f_3_5 ls_3_8 =
  (ls_3_8 f_3_5);;
let rec combine_lh__d0 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (let rec t_1_3_1 = (transpose_lh__d0 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0))) in
    (let rec h_1_3_1 = (`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)) in
      (fun f_3_7 -> 
        (let rec t_1_3_2 = ((map_lh__d1 f_3_7) t_1_3_1) in
          (let rec h_1_3_2 = (f_3_7 h_1_3_1) in
            (fun f_3_8 -> 
              (let rec t_1_3_3 = ((map_lh__d2 f_3_8) t_1_3_2) in
                (let rec h_1_3_3 = (f_3_8 h_1_3_2) in
                  (fun _lh_dummy_3 -> 
                    ((mappend_lh__d4 h_1_3_3) (concat_lh__d1 t_1_3_3)))))))))))
and
transpose_lh__d0 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (fun f_0 f_1 _lh_dummy_0 -> 
        (`LH_N))
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose_lh__d0 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_0 = (unzip_lh__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (let rec t_2_7 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
                      (let rec h_2_7 = (let rec _lh_unzip_LH_P2_1_0 = _lh_transpose_LH_C_1_2 in
                        (let rec _lh_unzip_LH_P2_0_0 = _lh_transpose_LH_C_0_2 in
                          (fun asbs_0 -> 
                            (let rec _lh_matchIdent_1 = asbs_0 in
                              (match _lh_matchIdent_1 with
                                | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                                  (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
                                | _ -> 
                                  (failwith "error")))))) in
                        (fun f_2 i_0 -> 
                          ((f_2 h_2_7) (((foldr_lh__d0 f_2) i_0) t_2_7)))))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (fun f_3 i_1 -> 
                  i_1))) in
            (_lh_listcomp_fun_0 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine_lh__d0 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec foldr1_lh__d0 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_lh__d0 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_3_9, t_3_9) -> 
      (let rec t_4_0 = ((mappend_lh__d2 t_3_9) ys_3) in
        (let rec h_4_0 = h_3_9 in
          (fun ys_4 -> 
            (`LH_C(h_4_0, ((mappend_lh__d1 t_4_0) ys_4))))))
    | `LH_N -> 
      ys_3);;
let rec join_lh__d0 _lh_join_arg1_0 =
  ((foldr1_lh__d0 (fun xs_5 ys_3_7 -> 
    ((mappend_lh__d1 ((mappend_lh__d2 xs_5) (let rec t_1_2_9 = (let rec t_1_3_0 = (fun ys_3_8 -> 
      ys_3_8) in
      (let rec h_1_2_9 = ' ' in
        (fun ys_3_9 -> 
          (`LH_C(h_1_2_9, ((mappend_lh__d1 t_1_3_0) ys_3_9)))))) in
      (let rec h_1_3_0 = ' ' in
        (fun ys_4_0 -> 
          (`LH_C(h_1_3_0, ((mappend_lh__d1 t_1_2_9) ys_4_0)))))))) ys_3_7))) _lh_join_arg1_0);;
let rec atIndex_lh__d8 n_8 ls_9 =
  (if (n_8 < 0) then
    (failwith "error")
  else
    (ls_9 n_8));;
let rec atIndex_lh__d2_d5 n_4_8 ls_2_1 =
  (if (n_4_8 < 0) then
    (failwith "error")
  else
    (ls_2_1 n_4_8));;
let rec atIndex_lh__d1_d5 n_6_3 ls_2_5 =
  (if (n_6_3 < 0) then
    (failwith "error")
  else
    (ls_2_5 n_6_3));;
let rec atIndex_lh__d2_d2 n_6_4 ls_2_8 =
  (if (n_6_4 < 0) then
    (failwith "error")
  else
    (ls_2_8 n_6_4));;
let rec atIndex_lh__d1_d6 n_6_6 ls_3_1 =
  (if (n_6_6 < 0) then
    (failwith "error")
  else
    (ls_3_1 n_6_6));;
let rec atIndex_lh__d7 n_6_8 ls_3_3 =
  (if (n_6_8 < 0) then
    (failwith "error")
  else
    (ls_3_3 n_6_8));;
let rec atIndex_lh__d3 n_9_8 ls_3_6 =
  (if (n_9_8 < 0) then
    (failwith "error")
  else
    (ls_3_6 n_9_8));;
let rec atIndex_lh__d2_d3 n_1_0_3 ls_4_2 =
  (if (n_1_0_3 < 0) then
    (failwith "error")
  else
    (ls_4_2 n_1_0_3));;
let rec atIndex_lh__d1_d2 n_1 ls_1 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (ls_1 n_1));;
let rec atIndex_lh__d0 n_1_0_8 ls_4_8 =
  (if (n_1_0_8 < 0) then
    (failwith "error")
  else
    (ls_4_8 n_1_0_8));;
let rec atIndex_lh__d1_d0 n_1_1_2 ls_5_2 =
  (if (n_1_1_2 < 0) then
    (failwith "error")
  else
    (ls_5_2 n_1_1_2));;
let rec atIndex_lh__d1_d4 n_1_1_6 ls_5_5 =
  (if (n_1_1_6 < 0) then
    (failwith "error")
  else
    (ls_5_5 n_1_1_6));;
let rec atIndex_lh__d1 n_3 ls_3 =
  (if (n_3 < 0) then
    (failwith "error")
  else
    (ls_3 n_3));;
let rec atIndex_lh__d1_d1 n_4_1 ls_1_5 =
  (if (n_4_1 < 0) then
    (failwith "error")
  else
    (ls_1_5 n_4_1));;
let rec atIndex_lh__d1_d9 n_4_2 ls_1_6 =
  (if (n_4_2 < 0) then
    (failwith "error")
  else
    (ls_1_6 n_4_2));;
let rec atIndex_lh__d2_d4 n_1_0_2 ls_4_1 =
  (if (n_1_0_2 < 0) then
    (failwith "error")
  else
    (ls_4_1 n_1_0_2));;
let rec atIndex_lh__d5 n_1_0_0 ls_3_9 =
  (if (n_1_0_0 < 0) then
    (failwith "error")
  else
    (ls_3_9 n_1_0_0));;
let rec atIndex_lh__d2_d1 n_1_0_1 ls_4_0 =
  (if (n_1_0_1 < 0) then
    (failwith "error")
  else
    (ls_4_0 n_1_0_1));;
let rec atIndex_lh__d1_d7 n_1_1_8 ls_5_8 =
  (if (n_1_1_8 < 0) then
    (failwith "error")
  else
    (ls_5_8 n_1_1_8));;
let rec atIndex_lh__d6 n_1_1_7 ls_5_7 =
  (if (n_1_1_7 < 0) then
    (failwith "error")
  else
    (ls_5_7 n_1_1_7));;
let rec atIndex_lh__d1_d3 n_1_2_5 ls_6_4 =
  (if (n_1_2_5 < 0) then
    (failwith "error")
  else
    (ls_6_4 n_1_2_5));;
let rec atIndex_lh__d2_d0 n_1_2_6 ls_6_5 =
  (if (n_1_2_6 < 0) then
    (failwith "error")
  else
    (ls_6_5 n_1_2_6));;
let rec atIndex_lh__d4 n_1_2_7 ls_6_6 =
  (if (n_1_2_7 < 0) then
    (failwith "error")
  else
    (ls_6_6 n_1_2_7));;
let rec atIndex_lh__d1_d8 n_1_2_9 ls_6_8 =
  (if (n_1_2_9 < 0) then
    (failwith "error")
  else
    (ls_6_8 n_1_2_9));;
let rec atIndex_lh__d9 n_1_3_0 ls_6_9 =
  (if (n_1_3_0 < 0) then
    (failwith "error")
  else
    (ls_6_9 n_1_3_0));;
let rec atIndex_lh__d2 n_1_3_1 ls_7_0 =
  (if (n_1_3_1 < 0) then
    (failwith "error")
  else
    (ls_7_0 n_1_3_1));;
let rec alphas_lh__d0 _lh_alphas_arg1_0 =
  (let rec t_1 = (let rec t_2 = (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (fun n_1_1 -> 
    (failwith "error")) in
    (let rec h_1 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_2 -> 
        (if (n_1_2 = 0) then
          h_1
        else
          ((atIndex_lh__d1_d7 (n_1_2 - 1)) t_2_6))))) in
    (let rec h_2 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_3 -> 
        (if (n_1_3 = 0) then
          h_2
        else
          ((atIndex_lh__d1_d8 (n_1_3 - 1)) t_2_5))))) in
    (let rec h_3 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_4 -> 
        (if (n_1_4 = 0) then
          h_3
        else
          ((atIndex_lh__d1_d9 (n_1_4 - 1)) t_2_4))))) in
    (let rec h_4 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5 -> 
        (if (n_1_5 = 0) then
          h_4
        else
          ((atIndex_lh__d2_d0 (n_1_5 - 1)) t_2_3))))) in
    (let rec h_5 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6 -> 
        (if (n_1_6 = 0) then
          h_5
        else
          ((atIndex_lh__d2_d1 (n_1_6 - 1)) t_2_2))))) in
    (let rec h_6 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7 -> 
        (if (n_1_7 = 0) then
          h_6
        else
          ((atIndex_lh__d2_d2 (n_1_7 - 1)) t_2_1))))) in
    (let rec h_7 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_8 -> 
        (if (n_1_8 = 0) then
          h_7
        else
          ((atIndex_lh__d2_d3 (n_1_8 - 1)) t_2_0))))) in
    (let rec h_8 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9 -> 
        (if (n_1_9 = 0) then
          h_8
        else
          ((atIndex_lh__d2_d4 (n_1_9 - 1)) t_1_9))))) in
    (let rec h_9 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_0 -> 
        (if (n_2_0 = 0) then
          h_9
        else
          ((atIndex_lh__d2_d5 (n_2_0 - 1)) t_1_8))))) in
    (let rec h_1_0 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_1 -> 
        (if (n_2_1 = 0) then
          h_1_0
        else
          ((atIndex_lh__d0 (n_2_1 - 1)) t_1_7))))) in
    (let rec h_1_1 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_2 -> 
        (if (n_2_2 = 0) then
          h_1_1
        else
          ((atIndex_lh__d1 (n_2_2 - 1)) t_1_6))))) in
    (let rec h_1_2 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_3 -> 
        (if (n_2_3 = 0) then
          h_1_2
        else
          ((atIndex_lh__d2 (n_2_3 - 1)) t_1_5))))) in
    (let rec h_1_3 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_4 -> 
        (if (n_2_4 = 0) then
          h_1_3
        else
          ((atIndex_lh__d3 (n_2_4 - 1)) t_1_4))))) in
    (let rec h_1_4 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_5 -> 
        (if (n_2_5 = 0) then
          h_1_4
        else
          ((atIndex_lh__d4 (n_2_5 - 1)) t_1_3))))) in
    (let rec h_1_5 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_6 -> 
        (if (n_2_6 = 0) then
          h_1_5
        else
          ((atIndex_lh__d5 (n_2_6 - 1)) t_1_2))))) in
    (let rec h_1_6 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_7 -> 
        (if (n_2_7 = 0) then
          h_1_6
        else
          ((atIndex_lh__d6 (n_2_7 - 1)) t_1_1))))) in
    (let rec h_1_7 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_8 -> 
        (if (n_2_8 = 0) then
          h_1_7
        else
          ((atIndex_lh__d7 (n_2_8 - 1)) t_1_0))))) in
    (let rec h_1_8 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_9 -> 
        (if (n_2_9 = 0) then
          h_1_8
        else
          ((atIndex_lh__d8 (n_2_9 - 1)) t_9))))) in
    (let rec h_1_9 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_0 -> 
        (if (n_3_0 = 0) then
          h_1_9
        else
          ((atIndex_lh__d9 (n_3_0 - 1)) t_8))))) in
    (let rec h_2_0 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_1 -> 
        (if (n_3_1 = 0) then
          h_2_0
        else
          ((atIndex_lh__d1_d0 (n_3_1 - 1)) t_7))))) in
    (let rec h_2_1 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_2 -> 
        (if (n_3_2 = 0) then
          h_2_1
        else
          ((atIndex_lh__d1_d1 (n_3_2 - 1)) t_6))))) in
    (let rec h_2_2 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_3 -> 
        (if (n_3_3 = 0) then
          h_2_2
        else
          ((atIndex_lh__d1_d2 (n_3_3 - 1)) t_5))))) in
    (let rec h_2_3 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_4 -> 
        (if (n_3_4 = 0) then
          h_2_3
        else
          ((atIndex_lh__d1_d3 (n_3_4 - 1)) t_4))))) in
    (let rec h_2_4 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_5 -> 
        (if (n_3_5 = 0) then
          h_2_4
        else
          ((atIndex_lh__d1_d4 (n_3_5 - 1)) t_3))))) in
    (let rec h_2_5 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_6 -> 
        (if (n_3_6 = 0) then
          h_2_5
        else
          ((atIndex_lh__d1_d5 (n_3_6 - 1)) t_2))))) in
    (let rec h_2_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_7 -> 
        (if (n_3_7 = 0) then
          h_2_6
        else
          ((atIndex_lh__d1_d6 (n_3_7 - 1)) t_1)))));;
let rec isUpper_lh__d0 _lh_isUpper_arg1_0 =
  (let rec n_4_4 = (int_of_char _lh_isUpper_arg1_0) in
    ((n_4_4 >= 65) && (n_4_4 <= 90)));;
let rec atIndex_lh__d6_d1 n_5 ls_5 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (ls_5 n_5));;
let rec atIndex_lh__d5_d6 n_6 ls_6 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (ls_6 n_6));;
let rec atIndex_lh__d6_d0 n_4_5 ls_1_8 =
  (if (n_4_5 < 0) then
    (failwith "error")
  else
    (ls_1_8 n_4_5));;
let rec atIndex_lh__d6_d2 n_4_7 ls_2_0 =
  (if (n_4_7 < 0) then
    (failwith "error")
  else
    (ls_2_0 n_4_7));;
let rec atIndex_lh__d5_d9 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (ls_0 n_0));;
let rec atIndex_lh__d6_d4 n_5_1 ls_2_4 =
  (if (n_5_1 < 0) then
    (failwith "error")
  else
    (ls_2_4 n_5_1));;
let rec atIndex_lh__d5_d7 n_6_5 ls_2_9 =
  (if (n_6_5 < 0) then
    (failwith "error")
  else
    (ls_2_9 n_6_5));;
let rec atIndex_lh__d5_d5 n_1_0_4 ls_4_4 =
  (if (n_1_0_4 < 0) then
    (failwith "error")
  else
    (ls_4_4 n_1_0_4));;
let rec atIndex_lh__d6_d3 n_1_1_5 ls_5_4 =
  (if (n_1_1_5 < 0) then
    (failwith "error")
  else
    (ls_5_4 n_1_1_5));;
let rec atIndex_lh__d5_d8 n_1_2_1 ls_6_0 =
  (if (n_1_2_1 < 0) then
    (failwith "error")
  else
    (ls_6_0 n_1_2_1));;
let rec digits_lh__d0 _lh_digits_arg1_0 =
  (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (fun n_5_2 -> 
    (failwith "error")) in
    (let rec h_2_9 = (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_3 -> 
        (if (n_5_3 = 0) then
          h_2_9
        else
          ((atIndex_lh__d5_d5 (n_5_3 - 1)) t_3_8))))) in
    (let rec h_3_0 = (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_4 -> 
        (if (n_5_4 = 0) then
          h_3_0
        else
          ((atIndex_lh__d5_d6 (n_5_4 - 1)) t_3_7))))) in
    (let rec h_3_1 = (`LH_C((`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_5 -> 
        (if (n_5_5 = 0) then
          h_3_1
        else
          ((atIndex_lh__d5_d7 (n_5_5 - 1)) t_3_6))))) in
    (let rec h_3_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_6 -> 
        (if (n_5_6 = 0) then
          h_3_2
        else
          ((atIndex_lh__d5_d8 (n_5_6 - 1)) t_3_5))))) in
    (let rec h_3_3 = (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_7 -> 
        (if (n_5_7 = 0) then
          h_3_3
        else
          ((atIndex_lh__d5_d9 (n_5_7 - 1)) t_3_4))))) in
    (let rec h_3_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_8 -> 
        (if (n_5_8 = 0) then
          h_3_4
        else
          ((atIndex_lh__d6_d0 (n_5_8 - 1)) t_3_3))))) in
    (let rec h_3_5 = (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_9 -> 
        (if (n_5_9 = 0) then
          h_3_5
        else
          ((atIndex_lh__d6_d1 (n_5_9 - 1)) t_3_2))))) in
    (let rec h_3_6 = (`LH_C((`LH_C(' ', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_0 -> 
        (if (n_6_0 = 0) then
          h_3_6
        else
          ((atIndex_lh__d6_d2 (n_6_0 - 1)) t_3_1))))) in
    (let rec h_3_7 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('1', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_1 -> 
        (if (n_6_1 = 0) then
          h_3_7
        else
          ((atIndex_lh__d6_d3 (n_6_1 - 1)) t_3_0))))) in
    (let rec h_3_8 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_2 -> 
        (if (n_6_2 = 0) then
          h_3_8
        else
          ((atIndex_lh__d6_d4 (n_6_2 - 1)) t_2_9)))));;
let rec atIndex_lh__d3_d3 n_4 ls_4 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (ls_4 n_4));;
let rec atIndex_lh__d3_d8 n_4_6 ls_1_9 =
  (if (n_4_6 < 0) then
    (failwith "error")
  else
    (ls_1_9 n_4_6));;
let rec atIndex_lh__d3_d7 n_6_7 ls_3_2 =
  (if (n_6_7 < 0) then
    (failwith "error")
  else
    (ls_3_2 n_6_7));;
let rec atIndex_lh__d3_d1 n_6_9 ls_3_4 =
  (if (n_6_9 < 0) then
    (failwith "error")
  else
    (ls_3_4 n_6_9));;
let rec atIndex_lh__d4_d6 n_9_9 ls_3_7 =
  (if (n_9_9 < 0) then
    (failwith "error")
  else
    (ls_3_7 n_9_9));;
let rec atIndex_lh__d3_d6 n_1_0_5 ls_4_5 =
  (if (n_1_0_5 < 0) then
    (failwith "error")
  else
    (ls_4_5 n_1_0_5));;
let rec atIndex_lh__d2_d8 n_1_1_9 ls_5_9 =
  (if (n_1_1_9 < 0) then
    (failwith "error")
  else
    (ls_5_9 n_1_1_9));;
let rec atIndex_lh__d3_d5 n_2 ls_2 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (ls_2 n_2));;
let rec atIndex_lh__d4_d0 n_1_2_3 ls_6_1 =
  (if (n_1_2_3 < 0) then
    (failwith "error")
  else
    (ls_6_1 n_1_2_3));;
let rec atIndex_lh__d2_d6 n_9 ls_1_0 =
  (if (n_9 < 0) then
    (failwith "error")
  else
    (ls_1_0 n_9));;
let rec atIndex_lh__d4_d1 n_7 ls_8 =
  (if (n_7 < 0) then
    (failwith "error")
  else
    (ls_8 n_7));;
let rec atIndex_lh__d5_d1 n_3_8 ls_1_2 =
  (if (n_3_8 < 0) then
    (failwith "error")
  else
    (ls_1_2 n_3_8));;
let rec atIndex_lh__d4_d4 n_1_0 ls_1_1 =
  (if (n_1_0 < 0) then
    (failwith "error")
  else
    (ls_1_1 n_1_0));;
let rec atIndex_lh__d3_d4 n_3_9 ls_1_3 =
  (if (n_3_9 < 0) then
    (failwith "error")
  else
    (ls_1_3 n_3_9));;
let rec atIndex_lh__d3_d9 n_4_0 ls_1_4 =
  (if (n_4_0 < 0) then
    (failwith "error")
  else
    (ls_1_4 n_4_0));;
let rec atIndex_lh__d2_d9 n_4_3 ls_1_7 =
  (if (n_4_3 < 0) then
    (failwith "error")
  else
    (ls_1_7 n_4_3));;
let rec atIndex_lh__d4_d7 n_4_9 ls_2_2 =
  (if (n_4_9 < 0) then
    (failwith "error")
  else
    (ls_2_2 n_4_9));;
let rec atIndex_lh__d4_d5 n_5_0 ls_2_3 =
  (if (n_5_0 < 0) then
    (failwith "error")
  else
    (ls_2_3 n_5_0));;
let rec atIndex_lh__d4_d3 n_1_0_6 ls_4_6 =
  (if (n_1_0_6 < 0) then
    (failwith "error")
  else
    (ls_4_6 n_1_0_6));;
let rec atIndex_lh__d3_d2 n_1_0_7 ls_4_7 =
  (if (n_1_0_7 < 0) then
    (failwith "error")
  else
    (ls_4_7 n_1_0_7));;
let rec atIndex_lh__d3_d0 n_1_0_9 ls_4_9 =
  (if (n_1_0_9 < 0) then
    (failwith "error")
  else
    (ls_4_9 n_1_0_9));;
let rec atIndex_lh__d5_d0 n_1_1_0 ls_5_0 =
  (if (n_1_1_0 < 0) then
    (failwith "error")
  else
    (ls_5_0 n_1_1_0));;
let rec atIndex_lh__d4_d8 n_1_1_1 ls_5_1 =
  (if (n_1_1_1 < 0) then
    (failwith "error")
  else
    (ls_5_1 n_1_1_1));;
let rec atIndex_lh__d4_d2 n_1_1_3 ls_5_3 =
  (if (n_1_1_3 < 0) then
    (failwith "error")
  else
    (ls_5_3 n_1_1_3));;
let rec atIndex_lh__d2_d7 n_1_2_8 ls_6_7 =
  (if (n_1_2_8 < 0) then
    (failwith "error")
  else
    (ls_6_7 n_1_2_8));;
let rec atIndex_lh__d4_d9 n_1_3_2 ls_7_1 =
  (if (n_1_3_2 < 0) then
    (failwith "error")
  else
    (ls_7_1 n_1_3_2));;
let rec alphas_lh__d1 _lh_alphas_arg1_1 =
  (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (let rec t_1_1_4 = (let rec t_1_1_5 = (let rec t_1_1_6 = (let rec t_1_1_7 = (let rec t_1_1_8 = (let rec t_1_1_9 = (let rec t_1_2_0 = (let rec t_1_2_1 = (let rec t_1_2_2 = (let rec t_1_2_3 = (fun n_7_1 -> 
    (failwith "error")) in
    (let rec h_9_8 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_2 -> 
        (if (n_7_2 = 0) then
          h_9_8
        else
          ((atIndex_lh__d4_d3 (n_7_2 - 1)) t_1_2_3))))) in
    (let rec h_9_9 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_3 -> 
        (if (n_7_3 = 0) then
          h_9_9
        else
          ((atIndex_lh__d4_d4 (n_7_3 - 1)) t_1_2_2))))) in
    (let rec h_1_0_0 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_4 -> 
        (if (n_7_4 = 0) then
          h_1_0_0
        else
          ((atIndex_lh__d4_d5 (n_7_4 - 1)) t_1_2_1))))) in
    (let rec h_1_0_1 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_5 -> 
        (if (n_7_5 = 0) then
          h_1_0_1
        else
          ((atIndex_lh__d4_d6 (n_7_5 - 1)) t_1_2_0))))) in
    (let rec h_1_0_2 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_6 -> 
        (if (n_7_6 = 0) then
          h_1_0_2
        else
          ((atIndex_lh__d4_d7 (n_7_6 - 1)) t_1_1_9))))) in
    (let rec h_1_0_3 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_7 -> 
        (if (n_7_7 = 0) then
          h_1_0_3
        else
          ((atIndex_lh__d4_d8 (n_7_7 - 1)) t_1_1_8))))) in
    (let rec h_1_0_4 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_8 -> 
        (if (n_7_8 = 0) then
          h_1_0_4
        else
          ((atIndex_lh__d4_d9 (n_7_8 - 1)) t_1_1_7))))) in
    (let rec h_1_0_5 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_9 -> 
        (if (n_7_9 = 0) then
          h_1_0_5
        else
          ((atIndex_lh__d5_d0 (n_7_9 - 1)) t_1_1_6))))) in
    (let rec h_1_0_6 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_0 -> 
        (if (n_8_0 = 0) then
          h_1_0_6
        else
          ((atIndex_lh__d5_d1 (n_8_0 - 1)) t_1_1_5))))) in
    (let rec h_1_0_7 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_1 -> 
        (if (n_8_1 = 0) then
          h_1_0_7
        else
          ((atIndex_lh__d2_d6 (n_8_1 - 1)) t_1_1_4))))) in
    (let rec h_1_0_8 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_2 -> 
        (if (n_8_2 = 0) then
          h_1_0_8
        else
          ((atIndex_lh__d2_d7 (n_8_2 - 1)) t_1_1_3))))) in
    (let rec h_1_0_9 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_3 -> 
        (if (n_8_3 = 0) then
          h_1_0_9
        else
          ((atIndex_lh__d2_d8 (n_8_3 - 1)) t_1_1_2))))) in
    (let rec h_1_1_0 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_4 -> 
        (if (n_8_4 = 0) then
          h_1_1_0
        else
          ((atIndex_lh__d2_d9 (n_8_4 - 1)) t_1_1_1))))) in
    (let rec h_1_1_1 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_5 -> 
        (if (n_8_5 = 0) then
          h_1_1_1
        else
          ((atIndex_lh__d3_d0 (n_8_5 - 1)) t_1_1_0))))) in
    (let rec h_1_1_2 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_6 -> 
        (if (n_8_6 = 0) then
          h_1_1_2
        else
          ((atIndex_lh__d3_d1 (n_8_6 - 1)) t_1_0_9))))) in
    (let rec h_1_1_3 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_7 -> 
        (if (n_8_7 = 0) then
          h_1_1_3
        else
          ((atIndex_lh__d3_d2 (n_8_7 - 1)) t_1_0_8))))) in
    (let rec h_1_1_4 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_8 -> 
        (if (n_8_8 = 0) then
          h_1_1_4
        else
          ((atIndex_lh__d3_d3 (n_8_8 - 1)) t_1_0_7))))) in
    (let rec h_1_1_5 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8_9 -> 
        (if (n_8_9 = 0) then
          h_1_1_5
        else
          ((atIndex_lh__d3_d4 (n_8_9 - 1)) t_1_0_6))))) in
    (let rec h_1_1_6 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_0 -> 
        (if (n_9_0 = 0) then
          h_1_1_6
        else
          ((atIndex_lh__d3_d5 (n_9_0 - 1)) t_1_0_5))))) in
    (let rec h_1_1_7 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_1 -> 
        (if (n_9_1 = 0) then
          h_1_1_7
        else
          ((atIndex_lh__d3_d6 (n_9_1 - 1)) t_1_0_4))))) in
    (let rec h_1_1_8 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_2 -> 
        (if (n_9_2 = 0) then
          h_1_1_8
        else
          ((atIndex_lh__d3_d7 (n_9_2 - 1)) t_1_0_3))))) in
    (let rec h_1_1_9 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_3 -> 
        (if (n_9_3 = 0) then
          h_1_1_9
        else
          ((atIndex_lh__d3_d8 (n_9_3 - 1)) t_1_0_2))))) in
    (let rec h_1_2_0 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_4 -> 
        (if (n_9_4 = 0) then
          h_1_2_0
        else
          ((atIndex_lh__d3_d9 (n_9_4 - 1)) t_1_0_1))))) in
    (let rec h_1_2_1 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_5 -> 
        (if (n_9_5 = 0) then
          h_1_2_1
        else
          ((atIndex_lh__d4_d0 (n_9_5 - 1)) t_1_0_0))))) in
    (let rec h_1_2_2 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_6 -> 
        (if (n_9_6 = 0) then
          h_1_2_2
        else
          ((atIndex_lh__d4_d1 (n_9_6 - 1)) t_9_9))))) in
    (let rec h_1_2_3 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_7 -> 
        (if (n_9_7 = 0) then
          h_1_2_3
        else
          ((atIndex_lh__d4_d2 (n_9_7 - 1)) t_9_8)))));;
let rec reverse_helper_lh__d0 ls_7 a_0 =
  (ls_7 a_0);;
let rec slant_lh__d1 _lh_slant_arg1_0 =
  (let rec t_1_2_4 = (let rec t_1_2_5 = (let rec t_1_2_6 = (let rec t_1_2_7 = (let rec t_1_2_8 = (fun a_1 -> 
    a_1) in
    (let rec h_1_2_4 = (`LH_N) in
      (fun a_2 -> 
        ((reverse_helper_lh__d0 t_1_2_8) (`LH_C(h_1_2_4, a_2)))))) in
    (let rec h_1_2_5 = (`LH_C(' ', (`LH_N))) in
      (fun a_3 -> 
        ((reverse_helper_lh__d0 t_1_2_7) (`LH_C(h_1_2_5, a_3)))))) in
    (let rec h_1_2_6 = (`LH_C(' ', (`LH_C(' ', (`LH_N))))) in
      (fun a_4 -> 
        ((reverse_helper_lh__d0 t_1_2_6) (`LH_C(h_1_2_6, a_4)))))) in
    (let rec h_1_2_7 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) in
      (fun a_5 -> 
        ((reverse_helper_lh__d0 t_1_2_5) (`LH_C(h_1_2_7, a_5)))))) in
    (let rec h_1_2_8 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))) in
      (fun a_6 -> 
        ((reverse_helper_lh__d0 t_1_2_4) (`LH_C(h_1_2_8, a_6))))));;
let rec isSpace_lh__d0 _lh_isSpace_arg1_0 =
  (let rec n_1_1_4 = (int_of_char _lh_isSpace_arg1_0) in
    (n_1_1_4 = 32));;
let rec reverse_lh__d0 ls_5_6 =
  ((reverse_helper_lh__d0 ls_5_6) (`LH_N));;
let rec isLower_lh__d0 _lh_isLower_arg1_0 =
  (let rec n_1_2_0 = (int_of_char _lh_isLower_arg1_0) in
    ((n_1_2_0 >= 97) && (n_1_2_0 <= 122)));;
let rec isDigit_lh__d0 _lh_isDigit_arg1_0 =
  (let rec n_1_2_2 = (int_of_char _lh_isDigit_arg1_0) in
    ((n_1_2_2 >= 48) && (n_1_2_2 <= 57)));;
let rec atIndex_lh__d5_d3 n_1_3_3 ls_7_2 =
  (if (n_1_3_3 < 0) then
    (failwith "error")
  else
    (ls_7_2 n_1_3_3));;
let rec slant_lh__d0 _lh_slant_arg1_1 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec mappend_lh__d3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d3 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec blank_lh__d0 _lh_blank_arg1_0 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N)))))))))));;
let rec punct_lh__d0 _lh_punct_arg1_0 =
  (let rec _lh_listcomp_fun_ls_t_1 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_1 _lh_picChar_arg1_0 -> 
    (`LH_N)) in
    (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_picChar_LH_P2_1_0 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_0 = ';' in
        (fun _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_2 _lh_picChar_arg1_1 -> 
          (if (_lh_picChar_LH_P2_0_0 = _lh_picChar_arg1_1) then
            (`LH_C(_lh_picChar_LH_P2_1_0, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_8)))
          else
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_8))))) in
      (fun _lh_listcomp_fun_3 _lh_picChar_arg1_2 -> 
        (((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_7) _lh_listcomp_fun_3) _lh_picChar_arg1_2)))) in
    (let rec _lh_listcomp_fun_ls_h_2 = (let rec _lh_picChar_LH_P2_1_1 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1 = ':' in
        (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_4 _lh_picChar_arg1_3 -> 
          (if (_lh_picChar_LH_P2_0_1 = _lh_picChar_arg1_3) then
            (`LH_C(_lh_picChar_LH_P2_1_1, (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_9)))
          else
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_9))))) in
      (fun _lh_listcomp_fun_5 _lh_picChar_arg1_4 -> 
        (((_lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_5) _lh_picChar_arg1_4)))) in
    (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_picChar_LH_P2_1_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_2 = '+' in
        (fun _lh_listcomp_fun_ls_t_1_0 _lh_listcomp_fun_6 _lh_picChar_arg1_5 -> 
          (if (_lh_picChar_LH_P2_0_2 = _lh_picChar_arg1_5) then
            (`LH_C(_lh_picChar_LH_P2_1_2, (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_1_0)))
          else
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_1_0))))) in
      (fun _lh_listcomp_fun_7 _lh_picChar_arg1_6 -> 
        (((_lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_7) _lh_picChar_arg1_6)))) in
    (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_picChar_LH_P2_1_3 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_3 = '-' in
        (fun _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_8 _lh_picChar_arg1_7 -> 
          (if (_lh_picChar_LH_P2_0_3 = _lh_picChar_arg1_7) then
            (`LH_C(_lh_picChar_LH_P2_1_3, (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_1_1)))
          else
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_1_1))))) in
      (fun _lh_listcomp_fun_9 _lh_picChar_arg1_8 -> 
        (((_lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_9) _lh_picChar_arg1_8)))) in
    (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_picChar_LH_P2_1_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_4 = '!' in
        (fun _lh_listcomp_fun_ls_t_1_2 _lh_listcomp_fun_1_0 _lh_picChar_arg1_9 -> 
          (if (_lh_picChar_LH_P2_0_4 = _lh_picChar_arg1_9) then
            (`LH_C(_lh_picChar_LH_P2_1_4, (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_2)))
          else
            (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_2))))) in
      (fun _lh_listcomp_fun_1_1 _lh_picChar_arg1_1_0 -> 
        (((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_1_1) _lh_picChar_arg1_1_0)))) in
    (let rec _lh_listcomp_fun_ls_h_6 = (let rec _lh_picChar_LH_P2_1_5 = (`LH_C((`LH_C(' ', (`LH_C('?', (`LH_C('?', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_5 = '?' in
        (fun _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_1_2 _lh_picChar_arg1_1_1 -> 
          (if (_lh_picChar_LH_P2_0_5 = _lh_picChar_arg1_1_1) then
            (`LH_C(_lh_picChar_LH_P2_1_5, (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_3)))
          else
            (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_3))))) in
      (fun _lh_listcomp_fun_1_3 _lh_picChar_arg1_1_2 -> 
        (((_lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_1_3) _lh_picChar_arg1_1_2)))) in
    (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_picChar_LH_P2_1_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_6 = '.' in
        (fun _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_1_4 _lh_picChar_arg1_1_3 -> 
          (if (_lh_picChar_LH_P2_0_6 = _lh_picChar_arg1_1_3) then
            (`LH_C(_lh_picChar_LH_P2_1_6, (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4)))
          else
            (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4))))) in
      (fun _lh_listcomp_fun_1_5 _lh_picChar_arg1_1_4 -> 
        (((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1_5) _lh_picChar_arg1_1_4))));;
let rec atIndex_lh__d5_d4 n_7_0 ls_3_5 =
  (if (n_7_0 < 0) then
    (failwith "error")
  else
    (ls_3_5 n_7_0));;
let rec head_lh__d0 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_1_3_4, t_1_3_4) -> 
      h_1_3_4
    | `LH_N -> 
      (failwith "error"));;
let rec atIndex_lh__d5_d2 n_1_2_4 ls_6_3 =
  (if (n_1_2_4 < 0) then
    (failwith "error")
  else
    (ls_6_3 n_1_2_4));;
let rec picChar_lh__d0 _lh_picChar_arg1_1_5 =
  (if (isUpper_lh__d0 _lh_picChar_arg1_1_5) then
    ((atIndex_lh__d5_d2 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char 'A'))) (alphas_lh__d0 0))
  else
    (if (isLower_lh__d0 _lh_picChar_arg1_1_5) then
      ((atIndex_lh__d5_d3 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char 'a'))) (alphas_lh__d1 0))
    else
      (if (isSpace_lh__d0 _lh_picChar_arg1_1_5) then
        (blank_lh__d0 0)
      else
        (if (isDigit_lh__d0 _lh_picChar_arg1_1_5) then
          ((atIndex_lh__d5_d4 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char '0'))) (digits_lh__d0 0))
        else
          (if (_lh_picChar_arg1_1_5 = '/') then
            (slant_lh__d0 0)
          else
            (if (_lh_picChar_arg1_1_5 = '=') then
              (reverse_lh__d0 (slant_lh__d1 0))
            else
              (head_lh__d0 ((mappend_lh__d3 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1 -> 
                ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1_6) _lh_picChar_arg1_1_5)) in
                (_lh_listcomp_fun_1_6 (punct_lh__d0 0)))) (`LH_C((`LH_C((`LH_N), (`LH_N))), (`LH_N)))))))))));;
let rec mappend_lh__d5 xs_4 ys_7 =
  (match xs_4 with
    | `LH_C(h_4_2, t_4_2) -> 
      (let rec t_4_3 = ((mappend_lh__d5 t_4_2) ys_7) in
        (let rec h_4_3 = h_4_2 in
          (fun ys_8 -> 
            (`LH_C(h_4_3, ((mappend_lh__d4 t_4_3) ys_8))))))
    | `LH_N -> 
      ys_7);;
let rec unlines_lh__d0 _lh_unlines_arg1_0 =
  (concat_lh__d1 ((map_lh__d2 (fun l_0 -> 
    ((mappend_lh__d5 l_0) (let rec t_4_1 = (fun ys_5 -> 
      ys_5) in
      (let rec h_4_1 = 'n' in
        (fun ys_6 -> 
          (`LH_C(h_4_1, ((mappend_lh__d4 t_4_1) ys_6))))))))) _lh_unlines_arg1_0));;
let rec map_lh__d0 f_7 ls_3_0 =
  (ls_3_0 f_7);;
let rec say_lh__d0 _lh_say_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun x_0 -> 
            (`LH_C('n', x_0))) (unlines_lh__d0 _lh_funcomp_x_3))) ((map_lh__d1 join_lh__d0) _lh_funcomp_x_2))) (transpose_lh__d0 _lh_funcomp_x_1))) ((map_lh__d0 picChar_lh__d0) _lh_funcomp_x_0))) _lh_say_arg1_0);;
let rec concat_lh__d0 lss_0 =
  (lss_0 99);;
let rec mappend_lh__d0 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec replicate_lh__d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    (fun _lh_dummy_1 f_4 -> 
      (`LH_N))
  else
    (let rec t_2_8 = ((replicate_lh__d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_2_8 = _lh_replicate_arg2_0 in
        (fun _lh_dummy_2 -> 
          ((mappend_lh__d0 h_2_8) (concat_lh__d0 t_2_8))))));;
let rec testBanner_nofib_lh__d0 _lh_testBanner_nofib_arg1_0 =
  (say_lh__d0 (concat_lh__d0 ((replicate_lh__d0 _lh_testBanner_nofib_arg1_0) (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (fun ys_9 -> 
    ys_9) in
    (let rec h_4_4 = '?' in
      (fun ys_1_0 -> 
        (let rec t_7_1 = ((mappend_lh__d0 t_7_0) ys_1_0) in
          (let rec h_4_5 = h_4_4 in
            (fun f_8 -> 
              (`LH_C((f_8 h_4_5), ((map_lh__d0 f_8) t_7_1))))))))) in
    (let rec h_4_6 = 'r' in
      (fun ys_1_1 -> 
        (let rec t_7_2 = ((mappend_lh__d0 t_6_9) ys_1_1) in
          (let rec h_4_7 = h_4_6 in
            (fun f_9 -> 
              (`LH_C((f_9 h_4_7), ((map_lh__d0 f_9) t_7_2))))))))) in
    (let rec h_4_8 = 'e' in
      (fun ys_1_2 -> 
        (let rec t_7_3 = ((mappend_lh__d0 t_6_8) ys_1_2) in
          (let rec h_4_9 = h_4_8 in
            (fun f_1_0 -> 
              (`LH_C((f_1_0 h_4_9), ((map_lh__d0 f_1_0) t_7_3))))))))) in
    (let rec h_5_0 = 'n' in
      (fun ys_1_3 -> 
        (let rec t_7_4 = ((mappend_lh__d0 t_6_7) ys_1_3) in
          (let rec h_5_1 = h_5_0 in
            (fun f_1_1 -> 
              (`LH_C((f_1_1 h_5_1), ((map_lh__d0 f_1_1) t_7_4))))))))) in
    (let rec h_5_2 = 'n' in
      (fun ys_1_4 -> 
        (let rec t_7_5 = ((mappend_lh__d0 t_6_6) ys_1_4) in
          (let rec h_5_3 = h_5_2 in
            (fun f_1_2 -> 
              (`LH_C((f_1_2 h_5_3), ((map_lh__d0 f_1_2) t_7_5))))))))) in
    (let rec h_5_4 = 'a' in
      (fun ys_1_5 -> 
        (let rec t_7_6 = ((mappend_lh__d0 t_6_5) ys_1_5) in
          (let rec h_5_5 = h_5_4 in
            (fun f_1_3 -> 
              (`LH_C((f_1_3 h_5_5), ((map_lh__d0 f_1_3) t_7_6))))))))) in
    (let rec h_5_6 = 'b' in
      (fun ys_1_6 -> 
        (let rec t_7_7 = ((mappend_lh__d0 t_6_4) ys_1_6) in
          (let rec h_5_7 = h_5_6 in
            (fun f_1_4 -> 
              (`LH_C((f_1_4 h_5_7), ((map_lh__d0 f_1_4) t_7_7))))))))) in
    (let rec h_5_8 = ' ' in
      (fun ys_1_7 -> 
        (let rec t_7_8 = ((mappend_lh__d0 t_6_3) ys_1_7) in
          (let rec h_5_9 = h_5_8 in
            (fun f_1_5 -> 
              (`LH_C((f_1_5 h_5_9), ((map_lh__d0 f_1_5) t_7_8))))))))) in
    (let rec h_6_0 = 't' in
      (fun ys_1_8 -> 
        (let rec t_7_9 = ((mappend_lh__d0 t_6_2) ys_1_8) in
          (let rec h_6_1 = h_6_0 in
            (fun f_1_6 -> 
              (`LH_C((f_1_6 h_6_1), ((map_lh__d0 f_1_6) t_7_9))))))))) in
    (let rec h_6_2 = 'a' in
      (fun ys_1_9 -> 
        (let rec t_8_0 = ((mappend_lh__d0 t_6_1) ys_1_9) in
          (let rec h_6_3 = h_6_2 in
            (fun f_1_7 -> 
              (`LH_C((f_1_7 h_6_3), ((map_lh__d0 f_1_7) t_8_0))))))))) in
    (let rec h_6_4 = 'e' in
      (fun ys_2_0 -> 
        (let rec t_8_1 = ((mappend_lh__d0 t_6_0) ys_2_0) in
          (let rec h_6_5 = h_6_4 in
            (fun f_1_8 -> 
              (`LH_C((f_1_8 h_6_5), ((map_lh__d0 f_1_8) t_8_1))))))))) in
    (let rec h_6_6 = 'r' in
      (fun ys_2_1 -> 
        (let rec t_8_2 = ((mappend_lh__d0 t_5_9) ys_2_1) in
          (let rec h_6_7 = h_6_6 in
            (fun f_1_9 -> 
              (`LH_C((f_1_9 h_6_7), ((map_lh__d0 f_1_9) t_8_2))))))))) in
    (let rec h_6_8 = 'g' in
      (fun ys_2_2 -> 
        (let rec t_8_3 = ((mappend_lh__d0 t_5_8) ys_2_2) in
          (let rec h_6_9 = h_6_8 in
            (fun f_2_0 -> 
              (`LH_C((f_2_0 h_6_9), ((map_lh__d0 f_2_0) t_8_3))))))))) in
    (let rec h_7_0 = ' ' in
      (fun ys_2_3 -> 
        (let rec t_8_4 = ((mappend_lh__d0 t_5_7) ys_2_3) in
          (let rec h_7_1 = h_7_0 in
            (fun f_2_1 -> 
              (`LH_C((f_2_1 h_7_1), ((map_lh__d0 f_2_1) t_8_4))))))))) in
    (let rec h_7_2 = 'a' in
      (fun ys_2_4 -> 
        (let rec t_8_5 = ((mappend_lh__d0 t_5_6) ys_2_4) in
          (let rec h_7_3 = h_7_2 in
            (fun f_2_2 -> 
              (`LH_C((f_2_2 h_7_3), ((map_lh__d0 f_2_2) t_8_5))))))))) in
    (let rec h_7_4 = ' ' in
      (fun ys_2_5 -> 
        (let rec t_8_6 = ((mappend_lh__d0 t_5_5) ys_2_5) in
          (let rec h_7_5 = h_7_4 in
            (fun f_2_3 -> 
              (`LH_C((f_2_3 h_7_5), ((map_lh__d0 f_2_3) t_8_6))))))))) in
    (let rec h_7_6 = 't' in
      (fun ys_2_6 -> 
        (let rec t_8_7 = ((mappend_lh__d0 t_5_4) ys_2_6) in
          (let rec h_7_7 = h_7_6 in
            (fun f_2_4 -> 
              (`LH_C((f_2_4 h_7_7), ((map_lh__d0 f_2_4) t_8_7))))))))) in
    (let rec h_7_8 = 'o' in
      (fun ys_2_7 -> 
        (let rec t_8_8 = ((mappend_lh__d0 t_5_3) ys_2_7) in
          (let rec h_7_9 = h_7_8 in
            (fun f_2_5 -> 
              (`LH_C((f_2_5 h_7_9), ((map_lh__d0 f_2_5) t_8_8))))))))) in
    (let rec h_8_0 = 'n' in
      (fun ys_2_8 -> 
        (let rec t_8_9 = ((mappend_lh__d0 t_5_2) ys_2_8) in
          (let rec h_8_1 = h_8_0 in
            (fun f_2_6 -> 
              (`LH_C((f_2_6 h_8_1), ((map_lh__d0 f_2_6) t_8_9))))))))) in
    (let rec h_8_2 = ' ' in
      (fun ys_2_9 -> 
        (let rec t_9_0 = ((mappend_lh__d0 t_5_1) ys_2_9) in
          (let rec h_8_3 = h_8_2 in
            (fun f_2_7 -> 
              (`LH_C((f_2_7 h_8_3), ((map_lh__d0 f_2_7) t_9_0))))))))) in
    (let rec h_8_4 = 's' in
      (fun ys_3_0 -> 
        (let rec t_9_1 = ((mappend_lh__d0 t_5_0) ys_3_0) in
          (let rec h_8_5 = h_8_4 in
            (fun f_2_8 -> 
              (`LH_C((f_2_8 h_8_5), ((map_lh__d0 f_2_8) t_9_1))))))))) in
    (let rec h_8_6 = 'i' in
      (fun ys_3_1 -> 
        (let rec t_9_2 = ((mappend_lh__d0 t_4_9) ys_3_1) in
          (let rec h_8_7 = h_8_6 in
            (fun f_2_9 -> 
              (`LH_C((f_2_9 h_8_7), ((map_lh__d0 f_2_9) t_9_2))))))))) in
    (let rec h_8_8 = 'h' in
      (fun ys_3_2 -> 
        (let rec t_9_3 = ((mappend_lh__d0 t_4_8) ys_3_2) in
          (let rec h_8_9 = h_8_8 in
            (fun f_3_0 -> 
              (`LH_C((f_3_0 h_8_9), ((map_lh__d0 f_3_0) t_9_3))))))))) in
    (let rec h_9_0 = 't' in
      (fun ys_3_3 -> 
        (let rec t_9_4 = ((mappend_lh__d0 t_4_7) ys_3_3) in
          (let rec h_9_1 = h_9_0 in
            (fun f_3_1 -> 
              (`LH_C((f_3_1 h_9_1), ((map_lh__d0 f_3_1) t_9_4))))))))) in
    (let rec h_9_2 = ' ' in
      (fun ys_3_4 -> 
        (let rec t_9_5 = ((mappend_lh__d0 t_4_6) ys_3_4) in
          (let rec h_9_3 = h_9_2 in
            (fun f_3_2 -> 
              (`LH_C((f_3_2 h_9_3), ((map_lh__d0 f_3_2) t_9_5))))))))) in
    (let rec h_9_4 = 's' in
      (fun ys_3_5 -> 
        (let rec t_9_6 = ((mappend_lh__d0 t_4_5) ys_3_5) in
          (let rec h_9_5 = h_9_4 in
            (fun f_3_3 -> 
              (`LH_C((f_3_3 h_9_5), ((map_lh__d0 f_3_3) t_9_6))))))))) in
    (let rec h_9_6 = 'I' in
      (fun ys_3_6 -> 
        (let rec t_9_7 = ((mappend_lh__d0 t_4_4) ys_3_6) in
          (let rec h_9_7 = h_9_6 in
            (fun f_3_4 -> 
              (`LH_C((f_3_4 h_9_7), ((map_lh__d0 f_3_4) t_9_7))))))))))));;
end;;

