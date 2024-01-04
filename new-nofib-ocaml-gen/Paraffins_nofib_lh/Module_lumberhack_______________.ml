

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec enumFromTo_lh__d5__d1_d6 a_2_1 b_2_1 =
  (if (a_2_1 <= b_2_1) then
    (`LH_C(a_2_1, ((enumFromTo_lh__d5__d1_d6 (a_2_1 + 1)) b_2_1)))
  else
    (`LH_N));;
let rec atIndex_lz_lh__d6__d1_d7 n_6 ls_1_0 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_0) with
      | `LH_C(h_6, t_9) -> 
        (if (n_6 = 0) then
          h_6
        else
          ((atIndex_lz_lh__d6__d1_d7 (n_6 - 1)) t_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d6__d1_d6 n_2_0 ls_2_9 =
  (if (n_2_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_9) with
      | `LH_C(h_2_1, t_2_5) -> 
        (if (n_2_0 = 0) then
          h_2_1
        else
          ((atIndex_lz_lh__d6__d1_d6 (n_2_0 - 1)) t_2_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d6__d1_d5 n_1_0 ls_1_5 =
  (if (n_1_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_5) with
      | `LH_C(h_1_0, t_1_3) -> 
        (if (n_1_0 = 0) then
          h_1_0
        else
          ((atIndex_lz_lh__d6__d1_d5 (n_1_0 - 1)) t_1_3))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d3__d1_d2 _lh_remainders_arg1_7 =
  (match _lh_remainders_arg1_7 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_1_0 _lh_rads_of_size_n_LH_C_0_2 _lh_rads_of_size_n_LH_P3_1_9 _lh_rads_of_size_n_LH_P3_2_9 _lh_rads_of_size_n_arg1_1_7 _lh_listcomp_fun_ls_t_6_3 _lh_listcomp_fun_1_1_1 -> 
        (_lh_listcomp_fun_1_1_1 _lh_listcomp_fun_ls_t_6_3))
    | `LH_C(_lh_remainders_LH_C_0_7, _lh_remainders_LH_C_1_7) -> 
      (let rec _lh_listcomp_fun_ls_t_6_4 = (remainders_lh__d3__d1_d2 _lh_remainders_LH_C_1_7) in
        (let rec _lh_listcomp_fun_ls_h_6_0 = (let rec _lh_rads_of_size_n_LH_C_1_2 = _lh_remainders_LH_C_1_7 in
          (let rec _lh_rads_of_size_n_LH_C_0_3 = _lh_remainders_LH_C_0_7 in
            (fun _lh_listcomp_fun_ls_t_6_5 _lh_listcomp_fun_1_1_2 _lh_rads_of_size_n_LH_C_0_4 _lh_rads_of_size_n_LH_P3_1_1_0 _lh_rads_of_size_n_LH_P3_2_1_0 _lh_rads_of_size_n_arg1_1_8 -> 
              (let rec _lh_listcomp_fun_1_1_3 = (fun _lh_listcomp_fun_para_3_1 -> 
                (match _lh_listcomp_fun_para_3_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_1, _lh_listcomp_fun_ls_t_6_6) -> 
                    (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_4, _lh_rads_of_size_n_LH_C_0_3, _lh_listcomp_fun_ls_h_6_1)), (_lh_listcomp_fun_1_1_3 _lh_listcomp_fun_ls_t_6_6)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_1_2 _lh_listcomp_fun_ls_t_6_5))) in
                (_lh_listcomp_fun_1_1_3 (if (_lh_rads_of_size_n_LH_P3_1_1_0 = _lh_rads_of_size_n_LH_P3_2_1_0) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_3, _lh_rads_of_size_n_LH_C_1_2))
                else
                  ((atIndex_lz_lh__d6__d1_d5 _lh_rads_of_size_n_LH_P3_2_1_0) _lh_rads_of_size_n_arg1_1_8))))))) in
          (fun _lh_listcomp_fun_1_1_4 _lh_rads_of_size_n_LH_C_0_5 _lh_rads_of_size_n_LH_P3_1_1_1 _lh_rads_of_size_n_LH_P3_2_1_1 _lh_rads_of_size_n_arg1_1_9 _lh_listcomp_fun_ls_t_6_7 _lh_listcomp_fun_1_1_5 -> 
            ((((((_lh_listcomp_fun_ls_h_6_0 _lh_listcomp_fun_ls_t_6_4) _lh_listcomp_fun_1_1_4) _lh_rads_of_size_n_LH_C_0_5) _lh_rads_of_size_n_LH_P3_1_1_1) _lh_rads_of_size_n_LH_P3_2_1_1) _lh_rads_of_size_n_arg1_1_9))))
    | _ -> 
      (failwith "error"));;
let rec remainders_lh__d3__d1_d3 _lh_remainders_arg1_5 =
  (match _lh_remainders_arg1_5 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_7_3 _lh_rads_of_size_n_LH_P3_0_5 _lh_rads_of_size_n_LH_P3_1_5 _lh_rads_of_size_n_LH_P3_2_5 _lh_rads_of_size_n_arg1_1_0 _lh_listcomp_fun_ls_t_4_1 _lh_listcomp_fun_7_4 -> 
        (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_4_1))
    | `LH_C(_lh_remainders_LH_C_0_5, _lh_remainders_LH_C_1_5) -> 
      (let rec _lh_listcomp_fun_ls_t_4_2 = (remainders_lh__d3__d1_d3 _lh_remainders_LH_C_1_5) in
        (let rec _lh_listcomp_fun_ls_h_3_9 = (let rec _lh_rads_of_size_n_LH_C_1_1 = _lh_remainders_LH_C_1_5 in
          (let rec _lh_rads_of_size_n_LH_C_0_1 = _lh_remainders_LH_C_0_5 in
            (fun _lh_listcomp_fun_ls_t_4_3 _lh_listcomp_fun_7_5 _lh_rads_of_size_n_LH_P3_0_6 _lh_rads_of_size_n_LH_P3_1_6 _lh_rads_of_size_n_LH_P3_2_6 _lh_rads_of_size_n_arg1_1_1 -> 
              (let rec _lh_listcomp_fun_7_6 = (fun _lh_listcomp_fun_para_2_1 -> 
                (((((((_lh_listcomp_fun_para_2_1 _lh_listcomp_fun_7_6) _lh_rads_of_size_n_LH_C_0_1) _lh_rads_of_size_n_LH_P3_1_6) _lh_rads_of_size_n_LH_P3_2_6) _lh_rads_of_size_n_arg1_1_1) _lh_listcomp_fun_ls_t_4_3) _lh_listcomp_fun_7_5)) in
                (_lh_listcomp_fun_7_6 (remainders_lh__d3__d1_d2 (if (_lh_rads_of_size_n_LH_P3_0_6 = _lh_rads_of_size_n_LH_P3_1_6) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_1, _lh_rads_of_size_n_LH_C_1_1))
                else
                  ((atIndex_lz_lh__d6__d1_d6 _lh_rads_of_size_n_LH_P3_1_6) _lh_rads_of_size_n_arg1_1_1)))))))) in
          (fun _lh_listcomp_fun_7_7 _lh_rads_of_size_n_LH_P3_0_7 _lh_rads_of_size_n_LH_P3_1_7 _lh_rads_of_size_n_LH_P3_2_7 _lh_rads_of_size_n_arg1_1_2 _lh_listcomp_fun_ls_t_4_4 _lh_listcomp_fun_7_8 -> 
            ((((((_lh_listcomp_fun_ls_h_3_9 _lh_listcomp_fun_ls_t_4_2) _lh_listcomp_fun_7_7) _lh_rads_of_size_n_LH_P3_0_7) _lh_rads_of_size_n_LH_P3_1_7) _lh_rads_of_size_n_LH_P3_2_7) _lh_rads_of_size_n_arg1_1_2))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d5__d1_d7 a_1_8 b_1_8 =
  (if (a_1_8 <= b_1_8) then
    (let rec _lh_listcomp_fun_ls_t_1_1_2 = ((enumFromTo_lh__d5__d1_d7 (a_1_8 + 1)) b_1_8) in
      (let rec _lh_listcomp_fun_ls_h_8_2 = a_1_8 in
        (fun _lh_listcomp_fun_1_8_3 _lh_three_partitions_arg1_1_0 -> 
          (let rec _lh_listcomp_fun_1_8_4 = (fun _lh_listcomp_fun_para_4_9 -> 
            (match _lh_listcomp_fun_para_4_9 with
              | `LH_C(_lh_listcomp_fun_ls_h_8_3, _lh_listcomp_fun_ls_t_1_1_3) -> 
                (let rec _lh_listcomp_fun_1_8_5 = (fun _lh_listcomp_fun_para_5_0 -> 
                  (((((_lh_listcomp_fun_para_5_0 _lh_listcomp_fun_ls_h_8_3) _lh_listcomp_fun_ls_h_8_2) _lh_listcomp_fun_1_8_5) _lh_listcomp_fun_ls_t_1_1_3) _lh_listcomp_fun_1_8_4)) in
                  (_lh_listcomp_fun_1_8_5 (let rec _lh_listcomp_fun_ls_t_1_1_4 = (fun _lh_listcomp_fun_ls_h_8_4 _lh_listcomp_fun_ls_h_8_5 _lh_listcomp_fun_1_8_6 _lh_listcomp_fun_ls_t_1_1_5 _lh_listcomp_fun_1_8_7 -> 
                    (_lh_listcomp_fun_1_8_7 _lh_listcomp_fun_ls_t_1_1_5)) in
                    (let rec _lh_listcomp_fun_ls_h_8_6 = (_lh_three_partitions_arg1_1_0 - (_lh_listcomp_fun_ls_h_8_2 + _lh_listcomp_fun_ls_h_8_3)) in
                      (fun _lh_listcomp_fun_ls_h_8_7 _lh_listcomp_fun_ls_h_8_8 _lh_listcomp_fun_1_8_8 _lh_listcomp_fun_ls_t_1_1_6 _lh_listcomp_fun_1_8_9 -> 
                        (let rec _lh_listcomp_fun_ls_t_1_1_7 = (_lh_listcomp_fun_1_8_8 _lh_listcomp_fun_ls_t_1_1_4) in
                          (let rec _lh_listcomp_fun_ls_h_8_9 = (let rec _lh_rads_of_size_n_LH_P3_2_2_7 = _lh_listcomp_fun_ls_h_8_6 in
                            (let rec _lh_rads_of_size_n_LH_P3_1_2_7 = _lh_listcomp_fun_ls_h_8_7 in
                              (let rec _lh_rads_of_size_n_LH_P3_0_1_5 = _lh_listcomp_fun_ls_h_8_8 in
                                (fun _lh_listcomp_fun_ls_t_1_1_8 _lh_listcomp_fun_1_9_0 _lh_rads_of_size_n_arg1_3_6 -> 
                                  (let rec _lh_listcomp_fun_1_9_1 = (fun _lh_listcomp_fun_para_5_1 -> 
                                    (((((((_lh_listcomp_fun_para_5_1 _lh_listcomp_fun_1_9_1) _lh_rads_of_size_n_LH_P3_0_1_5) _lh_rads_of_size_n_LH_P3_1_2_7) _lh_rads_of_size_n_LH_P3_2_2_7) _lh_rads_of_size_n_arg1_3_6) _lh_listcomp_fun_ls_t_1_1_8) _lh_listcomp_fun_1_9_0)) in
                                    (_lh_listcomp_fun_1_9_1 (remainders_lh__d3__d1_d3 ((atIndex_lz_lh__d6__d1_d7 _lh_rads_of_size_n_LH_P3_0_1_5) _lh_rads_of_size_n_arg1_3_6)))))))) in
                            (fun _lh_listcomp_fun_1_9_2 _lh_rads_of_size_n_arg1_3_7 -> 
                              (((_lh_listcomp_fun_ls_h_8_9 _lh_listcomp_fun_ls_t_1_1_7) _lh_listcomp_fun_1_9_2) _lh_rads_of_size_n_arg1_3_7)))))))))
              | `LH_N -> 
                (_lh_listcomp_fun_1_8_3 _lh_listcomp_fun_ls_t_1_1_2))) in
            (_lh_listcomp_fun_1_8_4 ((enumFromTo_lh__d5__d1_d6 _lh_listcomp_fun_ls_h_8_2) ((_lh_three_partitions_arg1_1_0 - _lh_listcomp_fun_ls_h_8_2) / 2)))))))
  else
    (fun _lh_listcomp_fun_1_9_3 _lh_three_partitions_arg1_1_1 _lh_listcomp_fun_1_9_4 _lh_rads_of_size_n_arg1_3_8 -> 
      (`LH_N)));;
let rec three_partitions_lh__d1__d3 _lh_three_partitions_arg1_3 =
  (let rec _lh_listcomp_fun_5_0 = (fun _lh_listcomp_fun_para_1_4 -> 
    ((_lh_listcomp_fun_para_1_4 _lh_listcomp_fun_5_0) _lh_three_partitions_arg1_3)) in
    (_lh_listcomp_fun_5_0 ((enumFromTo_lh__d5__d1_d7 0) (_lh_three_partitions_arg1_3 / 3))));;
let rec rads_of_size_n_lh__d1__d3 _lh_rads_of_size_n_arg1_3 _lh_rads_of_size_n_arg2_0 =
  (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_5 -> 
    ((_lh_listcomp_fun_para_5 _lh_listcomp_fun_1_6) _lh_rads_of_size_n_arg1_3)) in
    (_lh_listcomp_fun_1_6 (three_partitions_lh__d1__d3 (_lh_rads_of_size_n_arg2_0 - 1))));;
let rec enumFromTo_lh__d5__d1_d5 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo_lh__d5__d1_d5 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_8 = a_1 in
        (fun _lh_listcomp_fun_1_2 radicals_0 -> 
          (lazy (`LH_C(((rads_of_size_n_lh__d1__d3 radicals_0) _lh_listcomp_fun_ls_h_8), (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_7)))))))
  else
    (fun _lh_listcomp_fun_1_3 radicals_1 -> 
      (lazy (`LH_N))));;
let rec radical_generator_lh__d1__d0 _lh_radical_generator_arg1_0 =
  (let rec radicals_4 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_1_0 -> 
    ((_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_3_8) radicals_4)) in
    (_lh_listcomp_fun_3_8 ((enumFromTo_lh__d5__d1_d5 1) _lh_radical_generator_arg1_0)))))) in
    radicals_4);;
let rec length_lh__d2__d1 ls_5 =
  (ls_5 99);;
let rec length_lh__d3__d1 ls_2_2 =
  (ls_2_2 99);;
let rec remainders_lh__d3__d9 _lh_remainders_arg1_0 =
  (match _lh_remainders_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_0, _lh_remainders_LH_C_1_0) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_0, _lh_remainders_LH_C_1_0)), (remainders_lh__d3__d9 _lh_remainders_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lz_lh__d4__d0 n_5 ls_9 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_9) with
      | `LH_C(h_5, t_8) -> 
        (if (n_5 = 0) then
          h_5
        else
          ((atIndex_lz_lh__d4__d0 (n_5 - 1)) t_8))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d5__d0 n_9 ls_1_3 =
  (if (n_9 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_3) with
      | `LH_C(h_9, t_1_2) -> 
        (if (n_9 = 0) then
          h_9
        else
          ((atIndex_lz_lh__d5__d0 (n_9 - 1)) t_1_2))
      | `LH_N -> 
        (failwith "error")));;
let rec length_lh__d3__d0 ls_4 =
  (ls_4 99);;
let rec remainders_lh__d2__d0 _lh_remainders_arg1_3 =
  (match _lh_remainders_arg1_3 with
    | `LH_N -> 
      (fun _lh_ccp_generator_LH_C_0_0 _lh_ccp_generator_LH_C_0_1 _lh_ccp_generator_LH_P4_2_0 _lh_ccp_generator_LH_P4_3_0 _lh_ccp_generator_arg1_0 _lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_5 _lh_listcomp_fun_2_8 -> 
        (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_1_5))
    | `LH_C(_lh_remainders_LH_C_0_3, _lh_remainders_LH_C_1_3) -> 
      (let rec _lh_listcomp_fun_ls_t_1_6 = (remainders_lh__d2__d0 _lh_remainders_LH_C_1_3) in
        (let rec _lh_listcomp_fun_ls_h_1_2 = (let rec _lh_ccp_generator_LH_C_1_0 = _lh_remainders_LH_C_1_3 in
          (let rec _lh_ccp_generator_LH_C_0_2 = _lh_remainders_LH_C_0_3 in
            (fun _lh_ccp_generator_LH_C_0_3 _lh_ccp_generator_LH_C_0_4 _lh_ccp_generator_LH_P4_2_1 _lh_ccp_generator_LH_P4_3_1 _lh_ccp_generator_arg1_1 _lh_listcomp_fun_ls_t_1_7 _lh_listcomp_fun_2_9 -> 
              (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_8 -> 
                (match _lh_listcomp_fun_para_8 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_8) -> 
                    (let rec t_3 = (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_1_8) in
                      (fun _lh_dummy_2 -> 
                        (1 + (length_lh__d3__d0 t_3))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_1_7))) in
                (_lh_listcomp_fun_3_0 (if (_lh_ccp_generator_LH_P4_2_1 = _lh_ccp_generator_LH_P4_3_1) then
                  (`LH_C(_lh_ccp_generator_LH_C_0_2, _lh_ccp_generator_LH_C_1_0))
                else
                  ((atIndex_lz_lh__d5__d0 _lh_ccp_generator_LH_P4_3_1) _lh_ccp_generator_arg1_1))))))) in
          (fun _lh_ccp_generator_LH_C_0_5 _lh_ccp_generator_LH_C_0_6 _lh_ccp_generator_LH_P4_2_2 _lh_ccp_generator_LH_P4_3_2 _lh_ccp_generator_arg1_2 _lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_1_9 _lh_listcomp_fun_3_2 -> 
            (((((((_lh_listcomp_fun_ls_h_1_2 _lh_ccp_generator_LH_C_0_5) _lh_ccp_generator_LH_C_0_6) _lh_ccp_generator_LH_P4_2_2) _lh_ccp_generator_LH_P4_3_2) _lh_ccp_generator_arg1_2) _lh_listcomp_fun_ls_t_1_6) _lh_listcomp_fun_3_1))))
    | _ -> 
      (failwith "error"));;
let rec remainders_lh__d1__d0 _lh_remainders_arg1_6 =
  (match _lh_remainders_arg1_6 with
    | `LH_N -> 
      (fun _lh_ccp_generator_LH_C_0_7 _lh_ccp_generator_LH_P4_1_0 _lh_ccp_generator_LH_P4_2_3 _lh_ccp_generator_LH_P4_3_3 _lh_ccp_generator_arg1_3 _lh_listcomp_fun_9_2 _lh_listcomp_fun_ls_t_5_2 _lh_listcomp_fun_9_3 -> 
        (_lh_listcomp_fun_9_3 _lh_listcomp_fun_ls_t_5_2))
    | `LH_C(_lh_remainders_LH_C_0_6, _lh_remainders_LH_C_1_6) -> 
      (let rec _lh_listcomp_fun_ls_t_5_3 = (remainders_lh__d1__d0 _lh_remainders_LH_C_1_6) in
        (let rec _lh_listcomp_fun_ls_h_4_8 = (let rec _lh_ccp_generator_LH_C_1_1 = _lh_remainders_LH_C_1_6 in
          (let rec _lh_ccp_generator_LH_C_0_8 = _lh_remainders_LH_C_0_6 in
            (fun _lh_ccp_generator_LH_C_0_9 _lh_ccp_generator_LH_P4_1_1 _lh_ccp_generator_LH_P4_2_4 _lh_ccp_generator_LH_P4_3_4 _lh_ccp_generator_arg1_4 _lh_listcomp_fun_ls_t_5_4 _lh_listcomp_fun_9_4 -> 
              (let rec _lh_listcomp_fun_9_5 = (fun _lh_listcomp_fun_para_2_6 -> 
                ((((((((_lh_listcomp_fun_para_2_6 _lh_ccp_generator_LH_C_0_9) _lh_ccp_generator_LH_C_0_8) _lh_ccp_generator_LH_P4_2_4) _lh_ccp_generator_LH_P4_3_4) _lh_ccp_generator_arg1_4) _lh_listcomp_fun_9_5) _lh_listcomp_fun_ls_t_5_4) _lh_listcomp_fun_9_4)) in
                (_lh_listcomp_fun_9_5 (remainders_lh__d2__d0 (if (_lh_ccp_generator_LH_P4_1_1 = _lh_ccp_generator_LH_P4_2_4) then
                  (`LH_C(_lh_ccp_generator_LH_C_0_8, _lh_ccp_generator_LH_C_1_1))
                else
                  ((atIndex_lz_lh__d4__d0 _lh_ccp_generator_LH_P4_2_4) _lh_ccp_generator_arg1_4)))))))) in
          (fun _lh_ccp_generator_LH_C_0_1_0 _lh_ccp_generator_LH_P4_1_2 _lh_ccp_generator_LH_P4_2_5 _lh_ccp_generator_LH_P4_3_5 _lh_ccp_generator_arg1_5 _lh_listcomp_fun_9_6 _lh_listcomp_fun_ls_t_5_5 _lh_listcomp_fun_9_7 -> 
            (((((((_lh_listcomp_fun_ls_h_4_8 _lh_ccp_generator_LH_C_0_1_0) _lh_ccp_generator_LH_P4_1_2) _lh_ccp_generator_LH_P4_2_5) _lh_ccp_generator_LH_P4_3_5) _lh_ccp_generator_arg1_5) _lh_listcomp_fun_ls_t_5_3) _lh_listcomp_fun_9_6))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d5__d9 a_8 b_8 =
  (if (a_8 <= b_8) then
    (`LH_C(a_8, ((enumFromTo_lh__d5__d9 (a_8 + 1)) b_8)))
  else
    (`LH_N));;
let rec max_lh__d1__d1 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec enumFromTo_lh__d5__d1_d0 a_1_1 b_1_1 =
  (if (a_1_1 <= b_1_1) then
    (let rec _lh_listcomp_fun_ls_t_5_6 = ((enumFromTo_lh__d5__d1_d0 (a_1_1 + 1)) b_1_1) in
      (let rec _lh_listcomp_fun_ls_h_4_9 = a_1_1 in
        (fun _lh_four_partitions_arg1_5 _lh_listcomp_fun_ls_h_5_0 _lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_5_7 _lh_listcomp_fun_9_9 -> 
          (let rec _lh_listcomp_fun_1_0_0 = (fun _lh_listcomp_fun_para_2_7 -> 
            (match _lh_listcomp_fun_para_2_7 with
              | `LH_C(_lh_listcomp_fun_ls_h_5_1, _lh_listcomp_fun_ls_t_5_8) -> 
                (let rec _lh_listcomp_fun_1_0_1 = (fun _lh_listcomp_fun_para_2_8 -> 
                  ((((((_lh_listcomp_fun_para_2_8 _lh_listcomp_fun_ls_h_5_0) _lh_listcomp_fun_ls_h_4_9) _lh_listcomp_fun_ls_h_5_1) _lh_listcomp_fun_1_0_1) _lh_listcomp_fun_ls_t_5_8) _lh_listcomp_fun_1_0_0)) in
                  (_lh_listcomp_fun_1_0_1 (let rec _lh_listcomp_fun_ls_t_5_9 = (fun _lh_listcomp_fun_ls_h_5_2 _lh_listcomp_fun_ls_h_5_3 _lh_listcomp_fun_ls_h_5_4 _lh_listcomp_fun_1_0_2 _lh_listcomp_fun_ls_t_6_0 _lh_listcomp_fun_1_0_3 -> 
                    (_lh_listcomp_fun_1_0_3 _lh_listcomp_fun_ls_t_6_0)) in
                    (let rec _lh_listcomp_fun_ls_h_5_5 = (_lh_four_partitions_arg1_5 - ((_lh_listcomp_fun_ls_h_5_0 + _lh_listcomp_fun_ls_h_4_9) + _lh_listcomp_fun_ls_h_5_1)) in
                      (fun _lh_listcomp_fun_ls_h_5_6 _lh_listcomp_fun_ls_h_5_7 _lh_listcomp_fun_ls_h_5_8 _lh_listcomp_fun_1_0_4 _lh_listcomp_fun_ls_t_6_1 _lh_listcomp_fun_1_0_5 -> 
                        (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_5_6, _lh_listcomp_fun_ls_h_5_7, _lh_listcomp_fun_ls_h_5_8, _lh_listcomp_fun_ls_h_5_5)), (_lh_listcomp_fun_1_0_4 _lh_listcomp_fun_ls_t_5_9))))))))
              | `LH_N -> 
                (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_5_6))) in
            (_lh_listcomp_fun_1_0_0 ((enumFromTo_lh__d5__d9 ((max_lh__d1__d1 _lh_listcomp_fun_ls_h_4_9) (((int_of_float (ceil ((float_of_int _lh_four_partitions_arg1_5) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_5_0) - _lh_listcomp_fun_ls_h_4_9))) (((_lh_four_partitions_arg1_5 - _lh_listcomp_fun_ls_h_5_0) - _lh_listcomp_fun_ls_h_4_9) / 2)))))))
  else
    (fun _lh_four_partitions_arg1_6 _lh_listcomp_fun_ls_h_5_9 _lh_listcomp_fun_1_0_6 _lh_listcomp_fun_ls_t_6_2 _lh_listcomp_fun_1_0_7 -> 
      (_lh_listcomp_fun_1_0_7 _lh_listcomp_fun_ls_t_6_2)));;
let rec enumFromTo_lh__d5__d1_d1 a_2_0 b_2_0 =
  (if (a_2_0 <= b_2_0) then
    (let rec _lh_listcomp_fun_ls_t_1_2_0 = ((enumFromTo_lh__d5__d1_d1 (a_2_0 + 1)) b_2_0) in
      (let rec _lh_listcomp_fun_ls_h_9_1 = a_2_0 in
        (fun _lh_four_partitions_arg1_7 _lh_listcomp_fun_1_9_8 -> 
          (let rec _lh_listcomp_fun_1_9_9 = (fun _lh_listcomp_fun_para_5_3 -> 
            (((((_lh_listcomp_fun_para_5_3 _lh_four_partitions_arg1_7) _lh_listcomp_fun_ls_h_9_1) _lh_listcomp_fun_1_9_9) _lh_listcomp_fun_ls_t_1_2_0) _lh_listcomp_fun_1_9_8)) in
            (_lh_listcomp_fun_1_9_9 ((enumFromTo_lh__d5__d1_d0 _lh_listcomp_fun_ls_h_9_1) ((_lh_four_partitions_arg1_7 - _lh_listcomp_fun_ls_h_9_1) / 3)))))))
  else
    (fun _lh_four_partitions_arg1_8 _lh_listcomp_fun_2_0_0 -> 
      (`LH_N)));;
let rec four_partitions_lh__d1__d1 _lh_four_partitions_arg1_0 =
  (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_3 -> 
    ((_lh_listcomp_fun_para_3 _lh_four_partitions_arg1_0) _lh_listcomp_fun_1_4)) in
    (_lh_listcomp_fun_1_4 ((enumFromTo_lh__d5__d1_d1 0) (_lh_four_partitions_arg1_0 / 4))));;
let rec atIndex_lz_lh__d2__d0 n_2_1 ls_3_0 =
  (if (n_2_1 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_0) with
      | `LH_C(h_2_2, t_2_6) -> 
        (if (n_2_1 = 0) then
          h_2_2
        else
          ((atIndex_lz_lh__d2__d0 (n_2_1 - 1)) t_2_6))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d3__d0 n_2_2 ls_3_1 =
  (if (n_2_2 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_1) with
      | `LH_C(h_2_3, t_2_7) -> 
        (if (n_2_2 = 0) then
          h_2_3
        else
          ((atIndex_lz_lh__d3__d0 (n_2_2 - 1)) t_2_7))
      | `LH_N -> 
        (failwith "error")));;
let rec ccp_generator_lh__d1__d0 _lh_ccp_generator_arg1_1_2 _lh_ccp_generator_arg2_0 =
  (let rec _lh_listcomp_fun_1_7_1 = (fun _lh_listcomp_fun_para_4_4 -> 
    (match _lh_listcomp_fun_para_4_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_7_8, _lh_listcomp_fun_ls_t_1_0_5) -> 
        (match _lh_listcomp_fun_ls_h_7_8 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_0, _lh_ccp_generator_LH_P4_1_6, _lh_ccp_generator_LH_P4_2_1_2, _lh_ccp_generator_LH_P4_3_1_2) -> 
            (let rec _lh_listcomp_fun_1_7_2 = (fun _lh_listcomp_fun_para_4_5 -> 
              (match _lh_listcomp_fun_para_4_5 with
                | `LH_C(_lh_listcomp_fun_ls_h_7_9, _lh_listcomp_fun_ls_t_1_0_6) -> 
                  (match _lh_listcomp_fun_ls_h_7_9 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_1_3, _lh_ccp_generator_LH_C_1_4) -> 
                      (let rec _lh_listcomp_fun_1_7_3 = (fun _lh_listcomp_fun_para_4_6 -> 
                        ((((((((_lh_listcomp_fun_para_4_6 _lh_ccp_generator_LH_C_0_1_3) _lh_ccp_generator_LH_P4_1_6) _lh_ccp_generator_LH_P4_2_1_2) _lh_ccp_generator_LH_P4_3_1_2) _lh_ccp_generator_arg1_1_2) _lh_listcomp_fun_1_7_3) _lh_listcomp_fun_ls_t_1_0_6) _lh_listcomp_fun_1_7_2)) in
                        (_lh_listcomp_fun_1_7_3 (remainders_lh__d1__d0 (if (_lh_ccp_generator_LH_P4_0_0 = _lh_ccp_generator_LH_P4_1_6) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_1_3, _lh_ccp_generator_LH_C_1_4))
                        else
                          ((atIndex_lz_lh__d2__d0 _lh_ccp_generator_LH_P4_1_6) _lh_ccp_generator_arg1_1_2)))))
                    | _ -> 
                      (_lh_listcomp_fun_1_7_2 _lh_listcomp_fun_ls_t_1_0_6))
                | `LH_N -> 
                  (_lh_listcomp_fun_1_7_1 _lh_listcomp_fun_ls_t_1_0_5))) in
              (_lh_listcomp_fun_1_7_2 (remainders_lh__d3__d9 ((atIndex_lz_lh__d3__d0 _lh_ccp_generator_LH_P4_0_0) _lh_ccp_generator_arg1_1_2))))
          | _ -> 
            (_lh_listcomp_fun_1_7_1 _lh_listcomp_fun_ls_t_1_0_5))
      | `LH_N -> 
        (fun _lh_dummy_7 -> 
          0))) in
    (_lh_listcomp_fun_1_7_1 (four_partitions_lh__d1__d1 (_lh_ccp_generator_arg2_0 - 1))));;
let rec length_lh__d2__d0 ls_1_4 =
  (ls_1_4 99);;
let rec remainders_lh__d3__d8 _lh_remainders_arg1_1 =
  (match _lh_remainders_arg1_1 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_7 _lh_dummy_0 -> 
        0)
    | `LH_C(_lh_remainders_LH_C_0_1, _lh_remainders_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_ls_t_8 = (remainders_lh__d3__d8 _lh_remainders_LH_C_1_1) in
        (let rec _lh_listcomp_fun_ls_h_9 = (let rec _lh_bcp_generator_LH_C_1_0 = _lh_remainders_LH_C_1_1 in
          (let rec _lh_bcp_generator_LH_C_0_0 = _lh_remainders_LH_C_0_1 in
            (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_1_8 -> 
              (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_6 -> 
                (match _lh_listcomp_fun_para_6 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
                    (let rec t_2 = (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_0) in
                      (fun _lh_dummy_1 -> 
                        (1 + (length_lh__d2__d0 t_2))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_9))) in
                (_lh_listcomp_fun_1_9 (`LH_C(_lh_bcp_generator_LH_C_0_0, _lh_bcp_generator_LH_C_1_0))))))) in
          (fun _lh_listcomp_fun_2_0 -> 
            ((_lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_ls_t_8) _lh_listcomp_fun_2_0))))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lz_lh__d6__d1_d1 n_1_1 ls_1_6 =
  (if (n_1_1 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_6) with
      | `LH_C(h_1_1, t_1_4) -> 
        (if (n_1_1 = 0) then
          h_1_1
        else
          ((atIndex_lz_lh__d6__d1_d1 (n_1_1 - 1)) t_1_4))
      | `LH_N -> 
        (failwith "error")));;
let rec odd_lh__d1__d1 _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 1);;
let rec bcp_generator_lh__d1__d0 _lh_bcp_generator_arg1_1 _lh_bcp_generator_arg2_1 =
  (if (odd_lh__d1__d1 _lh_bcp_generator_arg2_1) then
    (fun _lh_dummy_8 -> 
      0)
  else
    (let rec _lh_listcomp_fun_1_8_2 = (fun _lh_listcomp_fun_para_4_8 -> 
      (_lh_listcomp_fun_para_4_8 _lh_listcomp_fun_1_8_2)) in
      (_lh_listcomp_fun_1_8_2 (remainders_lh__d3__d8 ((atIndex_lz_lh__d6__d1_d1 (_lh_bcp_generator_arg2_1 / 2)) _lh_bcp_generator_arg1_1)))));;
let rec enumFromTo_lh__d2__d0 a_1_7 b_1_7 =
  (if (a_1_7 <= b_1_7) then
    (let rec _lh_listcomp_fun_ls_t_1_0_7 = ((enumFromTo_lh__d2__d0 (a_1_7 + 1)) b_1_7) in
      (let rec _lh_listcomp_fun_ls_h_8_0 = a_1_7 in
        (fun _lh_listcomp_fun_1_7_4 radicals_1_5 -> 
          (`LH_C(((length_lh__d2__d1 ((bcp_generator_lh__d1__d0 radicals_1_5) _lh_listcomp_fun_ls_h_8_0)) + (length_lh__d3__d1 ((ccp_generator_lh__d1__d0 radicals_1_5) _lh_listcomp_fun_ls_h_8_0))), (_lh_listcomp_fun_1_7_4 _lh_listcomp_fun_ls_t_1_0_7))))))
  else
    (fun _lh_listcomp_fun_1_7_5 radicals_1_6 -> 
      (`LH_N)));;
let rec atIndex_lz_lh__d6__d1_d3 n_1_7 ls_2_4 =
  (if (n_1_7 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_4) with
      | `LH_C(h_1_8, t_2_2) -> 
        (if (n_1_7 = 0) then
          h_1_8
        else
          ((atIndex_lz_lh__d6__d1_d3 (n_1_7 - 1)) t_2_2))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d6__d1_d2 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (if (n_0 = 0) then
          h_0
        else
          ((atIndex_lz_lh__d6__d1_d2 (n_0 - 1)) t_0))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d3__d1_d0 _lh_remainders_arg1_9 =
  (match _lh_remainders_arg1_9 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_3_0 _lh_rads_of_size_n_LH_C_0_7 _lh_rads_of_size_n_LH_P3_1_1_5 _lh_rads_of_size_n_LH_P3_2_1_5 _lh_rads_of_size_n_arg1_2_3 _lh_listcomp_fun_ls_t_7_6 _lh_listcomp_fun_1_3_1 -> 
        (_lh_listcomp_fun_1_3_1 _lh_listcomp_fun_ls_t_7_6))
    | `LH_C(_lh_remainders_LH_C_0_9, _lh_remainders_LH_C_1_9) -> 
      (let rec _lh_listcomp_fun_ls_t_7_7 = (remainders_lh__d3__d1_d0 _lh_remainders_LH_C_1_9) in
        (let rec _lh_listcomp_fun_ls_h_6_7 = (let rec _lh_rads_of_size_n_LH_C_1_4 = _lh_remainders_LH_C_1_9 in
          (let rec _lh_rads_of_size_n_LH_C_0_8 = _lh_remainders_LH_C_0_9 in
            (fun _lh_listcomp_fun_ls_t_7_8 _lh_listcomp_fun_1_3_2 _lh_rads_of_size_n_LH_C_0_9 _lh_rads_of_size_n_LH_P3_1_1_6 _lh_rads_of_size_n_LH_P3_2_1_6 _lh_rads_of_size_n_arg1_2_4 -> 
              (let rec _lh_listcomp_fun_1_3_3 = (fun _lh_listcomp_fun_para_3_5 -> 
                (match _lh_listcomp_fun_para_3_5 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_8, _lh_listcomp_fun_ls_t_7_9) -> 
                    (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_9, _lh_rads_of_size_n_LH_C_0_8, _lh_listcomp_fun_ls_h_6_8)), (_lh_listcomp_fun_1_3_3 _lh_listcomp_fun_ls_t_7_9)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_3_2 _lh_listcomp_fun_ls_t_7_8))) in
                (_lh_listcomp_fun_1_3_3 (if (_lh_rads_of_size_n_LH_P3_1_1_6 = _lh_rads_of_size_n_LH_P3_2_1_6) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_8, _lh_rads_of_size_n_LH_C_1_4))
                else
                  ((atIndex_lz_lh__d6__d1_d2 _lh_rads_of_size_n_LH_P3_2_1_6) _lh_rads_of_size_n_arg1_2_4))))))) in
          (fun _lh_listcomp_fun_1_3_4 _lh_rads_of_size_n_LH_C_0_1_0 _lh_rads_of_size_n_LH_P3_1_1_7 _lh_rads_of_size_n_LH_P3_2_1_7 _lh_rads_of_size_n_arg1_2_5 _lh_listcomp_fun_ls_t_8_0 _lh_listcomp_fun_1_3_5 -> 
            ((((((_lh_listcomp_fun_ls_h_6_7 _lh_listcomp_fun_ls_t_7_7) _lh_listcomp_fun_1_3_4) _lh_rads_of_size_n_LH_C_0_1_0) _lh_rads_of_size_n_LH_P3_1_1_7) _lh_rads_of_size_n_LH_P3_2_1_7) _lh_rads_of_size_n_arg1_2_5))))
    | _ -> 
      (failwith "error"));;
let rec remainders_lh__d3__d1_d1 _lh_remainders_arg1_1_1 =
  (match _lh_remainders_arg1_1_1 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_4_5 _lh_rads_of_size_n_LH_P3_0_1_2 _lh_rads_of_size_n_LH_P3_1_1_8 _lh_rads_of_size_n_LH_P3_2_1_8 _lh_rads_of_size_n_arg1_2_7 _lh_listcomp_fun_ls_t_8_6 _lh_listcomp_fun_1_4_6 -> 
        (_lh_listcomp_fun_1_4_6 _lh_listcomp_fun_ls_t_8_6))
    | `LH_C(_lh_remainders_LH_C_0_1_1, _lh_remainders_LH_C_1_1_1) -> 
      (let rec _lh_listcomp_fun_ls_t_8_7 = (remainders_lh__d3__d1_d1 _lh_remainders_LH_C_1_1_1) in
        (let rec _lh_listcomp_fun_ls_h_7_1 = (let rec _lh_rads_of_size_n_LH_C_1_5 = _lh_remainders_LH_C_1_1_1 in
          (let rec _lh_rads_of_size_n_LH_C_0_1_1 = _lh_remainders_LH_C_0_1_1 in
            (fun _lh_listcomp_fun_ls_t_8_8 _lh_listcomp_fun_1_4_7 _lh_rads_of_size_n_LH_P3_0_1_3 _lh_rads_of_size_n_LH_P3_1_1_9 _lh_rads_of_size_n_LH_P3_2_1_9 _lh_rads_of_size_n_arg1_2_8 -> 
              (let rec _lh_listcomp_fun_1_4_8 = (fun _lh_listcomp_fun_para_3_8 -> 
                (((((((_lh_listcomp_fun_para_3_8 _lh_listcomp_fun_1_4_8) _lh_rads_of_size_n_LH_C_0_1_1) _lh_rads_of_size_n_LH_P3_1_1_9) _lh_rads_of_size_n_LH_P3_2_1_9) _lh_rads_of_size_n_arg1_2_8) _lh_listcomp_fun_ls_t_8_8) _lh_listcomp_fun_1_4_7)) in
                (_lh_listcomp_fun_1_4_8 (remainders_lh__d3__d1_d0 (if (_lh_rads_of_size_n_LH_P3_0_1_3 = _lh_rads_of_size_n_LH_P3_1_1_9) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_1_1, _lh_rads_of_size_n_LH_C_1_5))
                else
                  ((atIndex_lz_lh__d6__d1_d3 _lh_rads_of_size_n_LH_P3_1_1_9) _lh_rads_of_size_n_arg1_2_8)))))))) in
          (fun _lh_listcomp_fun_1_4_9 _lh_rads_of_size_n_LH_P3_0_1_4 _lh_rads_of_size_n_LH_P3_1_2_0 _lh_rads_of_size_n_LH_P3_2_2_0 _lh_rads_of_size_n_arg1_2_9 _lh_listcomp_fun_ls_t_8_9 _lh_listcomp_fun_1_5_0 -> 
            ((((((_lh_listcomp_fun_ls_h_7_1 _lh_listcomp_fun_ls_t_8_7) _lh_listcomp_fun_1_4_9) _lh_rads_of_size_n_LH_P3_0_1_4) _lh_rads_of_size_n_LH_P3_1_2_0) _lh_rads_of_size_n_LH_P3_2_2_0) _lh_rads_of_size_n_arg1_2_9))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d5__d1_d3 a_1_5 b_1_5 =
  (if (a_1_5 <= b_1_5) then
    (`LH_C(a_1_5, ((enumFromTo_lh__d5__d1_d3 (a_1_5 + 1)) b_1_5)))
  else
    (`LH_N));;
let rec atIndex_lz_lh__d6__d1_d4 n_1_4 ls_2_0 =
  (if (n_1_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_1_5, t_1_8) -> 
        (if (n_1_4 = 0) then
          h_1_5
        else
          ((atIndex_lz_lh__d6__d1_d4 (n_1_4 - 1)) t_1_8))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_lh__d5__d1_d4 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d5__d1_d4 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_0 _lh_three_partitions_arg1_0 -> 
          (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
                  (((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_1) _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_2) _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1)) in
                  (_lh_listcomp_fun_2 (let rec _lh_listcomp_fun_ls_t_2 = (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_4 -> 
                    (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3)) in
                    (let rec _lh_listcomp_fun_ls_h_4 = (_lh_three_partitions_arg1_0 - (_lh_listcomp_fun_ls_h_0 + _lh_listcomp_fun_ls_h_1)) in
                      (fun _lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_6 -> 
                        (let rec _lh_listcomp_fun_ls_t_5 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_2) in
                          (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_rads_of_size_n_LH_P3_2_0 = _lh_listcomp_fun_ls_h_4 in
                            (let rec _lh_rads_of_size_n_LH_P3_1_0 = _lh_listcomp_fun_ls_h_5 in
                              (let rec _lh_rads_of_size_n_LH_P3_0_0 = _lh_listcomp_fun_ls_h_6 in
                                (fun _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_7 _lh_rads_of_size_n_arg1_0 -> 
                                  (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
                                    (((((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_8) _lh_rads_of_size_n_LH_P3_0_0) _lh_rads_of_size_n_LH_P3_1_0) _lh_rads_of_size_n_LH_P3_2_0) _lh_rads_of_size_n_arg1_0) _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_7)) in
                                    (_lh_listcomp_fun_8 (remainders_lh__d3__d1_d1 ((atIndex_lz_lh__d6__d1_d4 _lh_rads_of_size_n_LH_P3_0_0) _lh_rads_of_size_n_arg1_0)))))))) in
                            (fun _lh_listcomp_fun_9 _lh_rads_of_size_n_arg1_1 -> 
                              (((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_9) _lh_rads_of_size_n_arg1_1)))))))))
              | `LH_N -> 
                (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
            (_lh_listcomp_fun_1 ((enumFromTo_lh__d5__d1_d3 _lh_listcomp_fun_ls_h_0) ((_lh_three_partitions_arg1_0 - _lh_listcomp_fun_ls_h_0) / 2)))))))
  else
    (fun _lh_listcomp_fun_1_0 _lh_three_partitions_arg1_1 _lh_listcomp_fun_1_1 _lh_rads_of_size_n_arg1_2 -> 
      (`LH_N)));;
let rec three_partitions_lh__d1__d2 _lh_three_partitions_arg1_9 =
  (let rec _lh_listcomp_fun_1_1_6 = (fun _lh_listcomp_fun_para_3_2 -> 
    ((_lh_listcomp_fun_para_3_2 _lh_listcomp_fun_1_1_6) _lh_three_partitions_arg1_9)) in
    (_lh_listcomp_fun_1_1_6 ((enumFromTo_lh__d5__d1_d4 0) (_lh_three_partitions_arg1_9 / 3))));;
let rec rads_of_size_n_lh__d1__d2 _lh_rads_of_size_n_arg1_1_6 _lh_rads_of_size_n_arg2_1 =
  (let rec _lh_listcomp_fun_9_1 = (fun _lh_listcomp_fun_para_2_5 -> 
    ((_lh_listcomp_fun_para_2_5 _lh_listcomp_fun_9_1) _lh_rads_of_size_n_arg1_1_6)) in
    (_lh_listcomp_fun_9_1 (three_partitions_lh__d1__d2 (_lh_rads_of_size_n_arg2_1 - 1))));;
let rec enumFromTo_lh__d5__d1_d2 a_1_6 b_1_6 =
  (if (a_1_6 <= b_1_6) then
    (let rec _lh_listcomp_fun_ls_t_8_5 = ((enumFromTo_lh__d5__d1_d2 (a_1_6 + 1)) b_1_6) in
      (let rec _lh_listcomp_fun_ls_h_7_0 = a_1_6 in
        (fun _lh_listcomp_fun_1_4_3 radicals_1_1 -> 
          (lazy (`LH_C(((rads_of_size_n_lh__d1__d2 radicals_1_1) _lh_listcomp_fun_ls_h_7_0), (_lh_listcomp_fun_1_4_3 _lh_listcomp_fun_ls_t_8_5)))))))
  else
    (fun _lh_listcomp_fun_1_4_4 radicals_1_2 -> 
      (lazy (`LH_N))));;
let rec radical_generator_lh__d2__d0 _lh_radical_generator_arg1_1 =
  (let rec radicals_8 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_1_2_7 = (fun _lh_listcomp_fun_para_3_4 -> 
    ((_lh_listcomp_fun_para_3_4 _lh_listcomp_fun_1_2_7) radicals_8)) in
    (_lh_listcomp_fun_1_2_7 ((enumFromTo_lh__d5__d1_d2 1) _lh_radical_generator_arg1_1)))))) in
    radicals_8);;
let rec paraffins_until_lh__d1__d0 _lh_paraffins_until_arg1_0 =
  (let rec radicals_5 = (radical_generator_lh__d2__d0 (_lh_paraffins_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_4_9 = (fun _lh_listcomp_fun_para_1_3 -> 
      ((_lh_listcomp_fun_para_1_3 _lh_listcomp_fun_4_9) radicals_5)) in
      (_lh_listcomp_fun_4_9 ((enumFromTo_lh__d2__d0 1) _lh_paraffins_until_arg1_0))));;
let rec length_lh__d1__d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_1_4, t_1_7) -> 
      (1 + (length_lh__d1__d0 t_1_7))
    | `LH_N -> 
      0);;
let rec atIndex_lz_lh__d1__d0 n_1_9 ls_2_7 =
  (if (n_1_9 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_7) with
      | `LH_C(h_2_0, t_2_4) -> 
        (if (n_1_9 = 0) then
          h_2_0
        else
          ((atIndex_lz_lh__d1__d0 (n_1_9 - 1)) t_2_4))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_lh__d1__d0 a_1_2 b_1_2 =
  (if (a_1_2 <= b_1_2) then
    (let rec _lh_listcomp_fun_ls_t_6_8 = ((enumFromTo_lh__d1__d0 (a_1_2 + 1)) b_1_2) in
      (let rec _lh_listcomp_fun_ls_h_6_2 = a_1_2 in
        (fun _lh_listcomp_fun_ls_h_6_3 _lh_listcomp_fun_1_1_7 _lh_listcomp_fun_ls_t_6_9 _lh_listcomp_fun_1_1_8 -> 
          (`LH_C((length_lh__d1__d0 ((atIndex_lz_lh__d1__d0 _lh_listcomp_fun_ls_h_6_2) _lh_listcomp_fun_ls_h_6_3)), (_lh_listcomp_fun_1_1_7 _lh_listcomp_fun_ls_t_6_8))))))
  else
    (fun _lh_listcomp_fun_ls_h_6_4 _lh_listcomp_fun_1_1_9 _lh_listcomp_fun_ls_t_7_0 _lh_listcomp_fun_1_2_0 -> 
      (_lh_listcomp_fun_1_2_0 _lh_listcomp_fun_ls_t_7_0)));;
let rec length_lh__d4__d1 ls_3 =
  (ls_3 99);;
let rec atIndex_lz_lh__d6__d7 n_1_2 ls_1_7 =
  (if (n_1_2 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_7) with
      | `LH_C(h_1_2, t_1_5) -> 
        (if (n_1_2 = 0) then
          h_1_2
        else
          ((atIndex_lz_lh__d6__d7 (n_1_2 - 1)) t_1_5))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_lh__d5__d3 a_6 b_6 =
  (if (a_6 <= b_6) then
    (`LH_C(a_6, ((enumFromTo_lh__d5__d3 (a_6 + 1)) b_6)))
  else
    (`LH_N));;
let rec max_lh__d1__d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec enumFromTo_lh__d5__d4 a_4 b_4 =
  (if (a_4 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_2_2 = ((enumFromTo_lh__d5__d4 (a_4 + 1)) b_4) in
      (let rec _lh_listcomp_fun_ls_h_1_6 = a_4 in
        (fun _lh_four_partitions_arg1_3 _lh_listcomp_fun_ls_h_1_7 _lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_3 _lh_listcomp_fun_4_0 -> 
          (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_1_1 -> 
            (match _lh_listcomp_fun_para_1_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_2_4) -> 
                (let rec _lh_listcomp_fun_4_2 = (fun _lh_listcomp_fun_para_1_2 -> 
                  ((((((_lh_listcomp_fun_para_1_2 _lh_listcomp_fun_ls_h_1_7) _lh_listcomp_fun_ls_h_1_6) _lh_listcomp_fun_ls_h_1_8) _lh_listcomp_fun_4_2) _lh_listcomp_fun_ls_t_2_4) _lh_listcomp_fun_4_1)) in
                  (_lh_listcomp_fun_4_2 (let rec _lh_listcomp_fun_ls_t_2_5 = (fun _lh_listcomp_fun_ls_h_1_9 _lh_listcomp_fun_ls_h_2_0 _lh_listcomp_fun_ls_h_2_1 _lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_2_6 _lh_listcomp_fun_4_4 -> 
                    (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_2_6)) in
                    (let rec _lh_listcomp_fun_ls_h_2_2 = (_lh_four_partitions_arg1_3 - ((_lh_listcomp_fun_ls_h_1_7 + _lh_listcomp_fun_ls_h_1_6) + _lh_listcomp_fun_ls_h_1_8)) in
                      (fun _lh_listcomp_fun_ls_h_2_3 _lh_listcomp_fun_ls_h_2_4 _lh_listcomp_fun_ls_h_2_5 _lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_2_7 _lh_listcomp_fun_4_6 -> 
                        (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_h_2_2)), (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_2_5))))))))
              | `LH_N -> 
                (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_2))) in
            (_lh_listcomp_fun_4_1 ((enumFromTo_lh__d5__d3 ((max_lh__d1__d0 _lh_listcomp_fun_ls_h_1_6) (((int_of_float (ceil ((float_of_int _lh_four_partitions_arg1_3) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_1_7) - _lh_listcomp_fun_ls_h_1_6))) (((_lh_four_partitions_arg1_3 - _lh_listcomp_fun_ls_h_1_7) - _lh_listcomp_fun_ls_h_1_6) / 2)))))))
  else
    (fun _lh_four_partitions_arg1_4 _lh_listcomp_fun_ls_h_2_6 _lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_2_8 _lh_listcomp_fun_4_8 -> 
      (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_2_8)));;
let rec enumFromTo_lh__d5__d5 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_2_1 = ((enumFromTo_lh__d5__d5 (a_3 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_1_5 = a_3 in
        (fun _lh_four_partitions_arg1_1 _lh_listcomp_fun_3_5 -> 
          (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_9 -> 
            (((((_lh_listcomp_fun_para_9 _lh_four_partitions_arg1_1) _lh_listcomp_fun_ls_h_1_5) _lh_listcomp_fun_3_6) _lh_listcomp_fun_ls_t_2_1) _lh_listcomp_fun_3_5)) in
            (_lh_listcomp_fun_3_6 ((enumFromTo_lh__d5__d4 _lh_listcomp_fun_ls_h_1_5) ((_lh_four_partitions_arg1_1 - _lh_listcomp_fun_ls_h_1_5) / 3)))))))
  else
    (fun _lh_four_partitions_arg1_2 _lh_listcomp_fun_3_7 -> 
      (`LH_N)));;
let rec four_partitions_lh__d1__d0 _lh_four_partitions_arg1_9 =
  (let rec _lh_listcomp_fun_2_0_3 = (fun _lh_listcomp_fun_para_5_6 -> 
    ((_lh_listcomp_fun_para_5_6 _lh_four_partitions_arg1_9) _lh_listcomp_fun_2_0_3)) in
    (_lh_listcomp_fun_2_0_3 ((enumFromTo_lh__d5__d5 0) (_lh_four_partitions_arg1_9 / 4))));;
let rec atIndex_lz_lh__d6__d6 n_1_8 ls_2_5 =
  (if (n_1_8 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_5) with
      | `LH_C(h_1_9, t_2_3) -> 
        (if (n_1_8 = 0) then
          h_1_9
        else
          ((atIndex_lz_lh__d6__d6 (n_1_8 - 1)) t_2_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d6__d5 n_2 ls_6 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_6) with
      | `LH_C(h_2, t_4) -> 
        (if (n_2 = 0) then
          h_2
        else
          ((atIndex_lz_lh__d6__d5 (n_2 - 1)) t_4))
      | `LH_N -> 
        (failwith "error")));;
let rec length_lh__d4__d0 ls_2_8 =
  (ls_2_8 99);;
let rec atIndex_lz_lh__d6__d4 n_8 ls_1_2 =
  (if (n_8 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_2) with
      | `LH_C(h_8, t_1_1) -> 
        (if (n_8 = 0) then
          h_8
        else
          ((atIndex_lz_lh__d6__d4 (n_8 - 1)) t_1_1))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d3__d3 _lh_remainders_arg1_1_2 =
  (match _lh_remainders_arg1_1_2 with
    | `LH_N -> 
      (fun _lh_ccp_generator_LH_P4_2_9 _lh_ccp_generator_LH_P4_3_9 _lh_ccp_generator_arg1_9 _lh_listcomp_fun_1_5_1 _lh_listcomp_fun_ls_t_9_0 _lh_listcomp_fun_1_5_2 -> 
        (_lh_listcomp_fun_1_5_2 _lh_listcomp_fun_ls_t_9_0))
    | `LH_C(_lh_remainders_LH_C_0_1_2, _lh_remainders_LH_C_1_1_2) -> 
      (let rec _lh_listcomp_fun_ls_t_9_1 = (remainders_lh__d3__d3 _lh_remainders_LH_C_1_1_2) in
        (let rec _lh_listcomp_fun_ls_h_7_2 = (let rec _lh_ccp_generator_LH_C_1_3 = _lh_remainders_LH_C_1_1_2 in
          (let rec _lh_ccp_generator_LH_C_0_1_2 = _lh_remainders_LH_C_0_1_2 in
            (fun _lh_ccp_generator_LH_P4_2_1_0 _lh_ccp_generator_LH_P4_3_1_0 _lh_ccp_generator_arg1_1_0 _lh_listcomp_fun_ls_t_9_2 _lh_listcomp_fun_1_5_3 -> 
              (let rec _lh_listcomp_fun_1_5_4 = (fun _lh_listcomp_fun_para_3_9 -> 
                (match _lh_listcomp_fun_para_3_9 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_3, _lh_listcomp_fun_ls_t_9_3) -> 
                    (let rec t_2_0 = (_lh_listcomp_fun_1_5_4 _lh_listcomp_fun_ls_t_9_3) in
                      (fun _lh_dummy_6 -> 
                        (1 + (length_lh__d4__d0 t_2_0))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_5_3 _lh_listcomp_fun_ls_t_9_2))) in
                (_lh_listcomp_fun_1_5_4 (if (_lh_ccp_generator_LH_P4_2_1_0 = _lh_ccp_generator_LH_P4_3_1_0) then
                  (`LH_C(_lh_ccp_generator_LH_C_0_1_2, _lh_ccp_generator_LH_C_1_3))
                else
                  ((atIndex_lz_lh__d6__d4 _lh_ccp_generator_LH_P4_3_1_0) _lh_ccp_generator_arg1_1_0))))))) in
          (fun _lh_ccp_generator_LH_P4_2_1_1 _lh_ccp_generator_LH_P4_3_1_1 _lh_ccp_generator_arg1_1_1 _lh_listcomp_fun_1_5_5 _lh_listcomp_fun_ls_t_9_4 _lh_listcomp_fun_1_5_6 -> 
            (((((_lh_listcomp_fun_ls_h_7_2 _lh_ccp_generator_LH_P4_2_1_1) _lh_ccp_generator_LH_P4_3_1_1) _lh_ccp_generator_arg1_1_1) _lh_listcomp_fun_ls_t_9_1) _lh_listcomp_fun_1_5_5))))
    | _ -> 
      (failwith "error"));;
let rec remainders_lh__d3__d4 _lh_remainders_arg1_1_0 =
  (match _lh_remainders_arg1_1_0 with
    | `LH_N -> 
      (fun _lh_ccp_generator_LH_P4_1_3 _lh_ccp_generator_LH_P4_2_6 _lh_ccp_generator_LH_P4_3_6 _lh_ccp_generator_arg1_6 _lh_listcomp_fun_1_3_7 _lh_listcomp_fun_ls_t_8_1 _lh_listcomp_fun_1_3_8 -> 
        (_lh_listcomp_fun_1_3_8 _lh_listcomp_fun_ls_t_8_1))
    | `LH_C(_lh_remainders_LH_C_0_1_0, _lh_remainders_LH_C_1_1_0) -> 
      (let rec _lh_listcomp_fun_ls_t_8_2 = (remainders_lh__d3__d4 _lh_remainders_LH_C_1_1_0) in
        (let rec _lh_listcomp_fun_ls_h_6_9 = (let rec _lh_ccp_generator_LH_C_1_2 = _lh_remainders_LH_C_1_1_0 in
          (let rec _lh_ccp_generator_LH_C_0_1_1 = _lh_remainders_LH_C_0_1_0 in
            (fun _lh_ccp_generator_LH_P4_1_4 _lh_ccp_generator_LH_P4_2_7 _lh_ccp_generator_LH_P4_3_7 _lh_ccp_generator_arg1_7 _lh_listcomp_fun_ls_t_8_3 _lh_listcomp_fun_1_3_9 -> 
              (let rec _lh_listcomp_fun_1_4_0 = (fun _lh_listcomp_fun_para_3_7 -> 
                ((((((_lh_listcomp_fun_para_3_7 _lh_ccp_generator_LH_P4_2_7) _lh_ccp_generator_LH_P4_3_7) _lh_ccp_generator_arg1_7) _lh_listcomp_fun_1_4_0) _lh_listcomp_fun_ls_t_8_3) _lh_listcomp_fun_1_3_9)) in
                (_lh_listcomp_fun_1_4_0 (remainders_lh__d3__d3 (if (_lh_ccp_generator_LH_P4_1_4 = _lh_ccp_generator_LH_P4_2_7) then
                  (`LH_C(_lh_ccp_generator_LH_C_0_1_1, _lh_ccp_generator_LH_C_1_2))
                else
                  ((atIndex_lz_lh__d6__d5 _lh_ccp_generator_LH_P4_2_7) _lh_ccp_generator_arg1_7)))))))) in
          (fun _lh_ccp_generator_LH_P4_1_5 _lh_ccp_generator_LH_P4_2_8 _lh_ccp_generator_LH_P4_3_8 _lh_ccp_generator_arg1_8 _lh_listcomp_fun_1_4_1 _lh_listcomp_fun_ls_t_8_4 _lh_listcomp_fun_1_4_2 -> 
            ((((((_lh_listcomp_fun_ls_h_6_9 _lh_ccp_generator_LH_P4_1_5) _lh_ccp_generator_LH_P4_2_8) _lh_ccp_generator_LH_P4_3_8) _lh_ccp_generator_arg1_8) _lh_listcomp_fun_ls_t_8_2) _lh_listcomp_fun_1_4_1))))
    | _ -> 
      (failwith "error"));;
let rec remainders_lh__d3__d5 _lh_remainders_arg1_1_5 =
  (match _lh_remainders_arg1_1_5 with
    | `LH_N -> 
      (fun _lh_ccp_generator_LH_P4_0_1 _lh_ccp_generator_LH_P4_1_7 _lh_ccp_generator_LH_P4_2_1_3 _lh_ccp_generator_LH_P4_3_1_3 _lh_ccp_generator_arg1_1_3 _lh_listcomp_fun_1_7_6 _lh_listcomp_fun_ls_t_1_0_8 _lh_listcomp_fun_1_7_7 -> 
        (_lh_listcomp_fun_1_7_7 _lh_listcomp_fun_ls_t_1_0_8))
    | `LH_C(_lh_remainders_LH_C_0_1_5, _lh_remainders_LH_C_1_1_5) -> 
      (let rec _lh_listcomp_fun_ls_t_1_0_9 = (remainders_lh__d3__d5 _lh_remainders_LH_C_1_1_5) in
        (let rec _lh_listcomp_fun_ls_h_8_1 = (let rec _lh_ccp_generator_LH_C_1_5 = _lh_remainders_LH_C_1_1_5 in
          (let rec _lh_ccp_generator_LH_C_0_1_4 = _lh_remainders_LH_C_0_1_5 in
            (fun _lh_ccp_generator_LH_P4_0_2 _lh_ccp_generator_LH_P4_1_8 _lh_ccp_generator_LH_P4_2_1_4 _lh_ccp_generator_LH_P4_3_1_4 _lh_ccp_generator_arg1_1_4 _lh_listcomp_fun_ls_t_1_1_0 _lh_listcomp_fun_1_7_8 -> 
              (let rec _lh_listcomp_fun_1_7_9 = (fun _lh_listcomp_fun_para_4_7 -> 
                (((((((_lh_listcomp_fun_para_4_7 _lh_ccp_generator_LH_P4_1_8) _lh_ccp_generator_LH_P4_2_1_4) _lh_ccp_generator_LH_P4_3_1_4) _lh_ccp_generator_arg1_1_4) _lh_listcomp_fun_1_7_9) _lh_listcomp_fun_ls_t_1_1_0) _lh_listcomp_fun_1_7_8)) in
                (_lh_listcomp_fun_1_7_9 (remainders_lh__d3__d4 (if (_lh_ccp_generator_LH_P4_0_2 = _lh_ccp_generator_LH_P4_1_8) then
                  (`LH_C(_lh_ccp_generator_LH_C_0_1_4, _lh_ccp_generator_LH_C_1_5))
                else
                  ((atIndex_lz_lh__d6__d6 _lh_ccp_generator_LH_P4_1_8) _lh_ccp_generator_arg1_1_4)))))))) in
          (fun _lh_ccp_generator_LH_P4_0_3 _lh_ccp_generator_LH_P4_1_9 _lh_ccp_generator_LH_P4_2_1_5 _lh_ccp_generator_LH_P4_3_1_5 _lh_ccp_generator_arg1_1_5 _lh_listcomp_fun_1_8_0 _lh_listcomp_fun_ls_t_1_1_1 _lh_listcomp_fun_1_8_1 -> 
            (((((((_lh_listcomp_fun_ls_h_8_1 _lh_ccp_generator_LH_P4_0_3) _lh_ccp_generator_LH_P4_1_9) _lh_ccp_generator_LH_P4_2_1_5) _lh_ccp_generator_LH_P4_3_1_5) _lh_ccp_generator_arg1_1_5) _lh_listcomp_fun_ls_t_1_0_9) _lh_listcomp_fun_1_8_0))))
    | _ -> 
      (failwith "error"));;
let rec ccp_generator_lh__d2__d0 _lh_ccp_generator_arg1_1_6 _lh_ccp_generator_arg2_1 =
  (let rec _lh_listcomp_fun_2_0_1 = (fun _lh_listcomp_fun_para_5_4 -> 
    (match _lh_listcomp_fun_para_5_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_9_2, _lh_listcomp_fun_ls_t_1_2_1) -> 
        (match _lh_listcomp_fun_ls_h_9_2 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_4, _lh_ccp_generator_LH_P4_1_1_0, _lh_ccp_generator_LH_P4_2_1_6, _lh_ccp_generator_LH_P4_3_1_6) -> 
            (let rec _lh_listcomp_fun_2_0_2 = (fun _lh_listcomp_fun_para_5_5 -> 
              ((((((((_lh_listcomp_fun_para_5_5 _lh_ccp_generator_LH_P4_0_4) _lh_ccp_generator_LH_P4_1_1_0) _lh_ccp_generator_LH_P4_2_1_6) _lh_ccp_generator_LH_P4_3_1_6) _lh_ccp_generator_arg1_1_6) _lh_listcomp_fun_2_0_2) _lh_listcomp_fun_ls_t_1_2_1) _lh_listcomp_fun_2_0_1)) in
              (_lh_listcomp_fun_2_0_2 (remainders_lh__d3__d5 ((atIndex_lz_lh__d6__d7 _lh_ccp_generator_LH_P4_0_4) _lh_ccp_generator_arg1_1_6))))
          | _ -> 
            (_lh_listcomp_fun_2_0_1 _lh_listcomp_fun_ls_t_1_2_1))
      | `LH_N -> 
        (fun _lh_dummy_9 -> 
          0))) in
    (_lh_listcomp_fun_2_0_1 (four_partitions_lh__d1__d0 (_lh_ccp_generator_arg2_1 - 1))));;
let rec enumFromTo_lh__d3__d0 a_1_4 b_1_4 =
  (if (a_1_4 <= b_1_4) then
    (let rec _lh_listcomp_fun_ls_t_7_5 = ((enumFromTo_lh__d3__d0 (a_1_4 + 1)) b_1_4) in
      (let rec _lh_listcomp_fun_ls_h_6_6 = a_1_4 in
        (fun _lh_listcomp_fun_1_2_8 radicals_9 -> 
          (`LH_C((length_lh__d4__d1 ((ccp_generator_lh__d2__d0 radicals_9) _lh_listcomp_fun_ls_h_6_6)), (_lh_listcomp_fun_1_2_8 _lh_listcomp_fun_ls_t_7_5))))))
  else
    (fun _lh_listcomp_fun_1_2_9 radicals_1_0 -> 
      (`LH_N)));;
let rec atIndex_lz_lh__d6__d9 n_1_5 ls_2_1 =
  (if (n_1_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_1) with
      | `LH_C(h_1_6, t_1_9) -> 
        (if (n_1_5 = 0) then
          h_1_6
        else
          ((atIndex_lz_lh__d6__d9 (n_1_5 - 1)) t_1_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d6__d8 n_1 ls_2 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2) with
      | `LH_C(h_1, t_1) -> 
        (if (n_1 = 0) then
          h_1
        else
          ((atIndex_lz_lh__d6__d8 (n_1 - 1)) t_1))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d3__d6 _lh_remainders_arg1_1_3 =
  (match _lh_remainders_arg1_1_3 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_5_8 _lh_rads_of_size_n_LH_C_0_1_2 _lh_rads_of_size_n_LH_P3_1_2_1 _lh_rads_of_size_n_LH_P3_2_2_1 _lh_rads_of_size_n_arg1_3_0 _lh_listcomp_fun_ls_t_9_5 _lh_listcomp_fun_1_5_9 -> 
        (_lh_listcomp_fun_1_5_9 _lh_listcomp_fun_ls_t_9_5))
    | `LH_C(_lh_remainders_LH_C_0_1_3, _lh_remainders_LH_C_1_1_3) -> 
      (let rec _lh_listcomp_fun_ls_t_9_6 = (remainders_lh__d3__d6 _lh_remainders_LH_C_1_1_3) in
        (let rec _lh_listcomp_fun_ls_h_7_4 = (let rec _lh_rads_of_size_n_LH_C_1_6 = _lh_remainders_LH_C_1_1_3 in
          (let rec _lh_rads_of_size_n_LH_C_0_1_3 = _lh_remainders_LH_C_0_1_3 in
            (fun _lh_listcomp_fun_ls_t_9_7 _lh_listcomp_fun_1_6_0 _lh_rads_of_size_n_LH_C_0_1_4 _lh_rads_of_size_n_LH_P3_1_2_2 _lh_rads_of_size_n_LH_P3_2_2_2 _lh_rads_of_size_n_arg1_3_1 -> 
              (let rec _lh_listcomp_fun_1_6_1 = (fun _lh_listcomp_fun_para_4_1 -> 
                (match _lh_listcomp_fun_para_4_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_5, _lh_listcomp_fun_ls_t_9_8) -> 
                    (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_1_4, _lh_rads_of_size_n_LH_C_0_1_3, _lh_listcomp_fun_ls_h_7_5)), (_lh_listcomp_fun_1_6_1 _lh_listcomp_fun_ls_t_9_8)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_6_0 _lh_listcomp_fun_ls_t_9_7))) in
                (_lh_listcomp_fun_1_6_1 (if (_lh_rads_of_size_n_LH_P3_1_2_2 = _lh_rads_of_size_n_LH_P3_2_2_2) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_1_3, _lh_rads_of_size_n_LH_C_1_6))
                else
                  ((atIndex_lz_lh__d6__d8 _lh_rads_of_size_n_LH_P3_2_2_2) _lh_rads_of_size_n_arg1_3_1))))))) in
          (fun _lh_listcomp_fun_1_6_2 _lh_rads_of_size_n_LH_C_0_1_5 _lh_rads_of_size_n_LH_P3_1_2_3 _lh_rads_of_size_n_LH_P3_2_2_3 _lh_rads_of_size_n_arg1_3_2 _lh_listcomp_fun_ls_t_9_9 _lh_listcomp_fun_1_6_3 -> 
            ((((((_lh_listcomp_fun_ls_h_7_4 _lh_listcomp_fun_ls_t_9_6) _lh_listcomp_fun_1_6_2) _lh_rads_of_size_n_LH_C_0_1_5) _lh_rads_of_size_n_LH_P3_1_2_3) _lh_rads_of_size_n_LH_P3_2_2_3) _lh_rads_of_size_n_arg1_3_2))))
    | _ -> 
      (failwith "error"));;
let rec remainders_lh__d3__d7 _lh_remainders_arg1_8 =
  (match _lh_remainders_arg1_8 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_2_1 _lh_rads_of_size_n_LH_P3_0_9 _lh_rads_of_size_n_LH_P3_1_1_2 _lh_rads_of_size_n_LH_P3_2_1_2 _lh_rads_of_size_n_arg1_2_0 _lh_listcomp_fun_ls_t_7_1 _lh_listcomp_fun_1_2_2 -> 
        (_lh_listcomp_fun_1_2_2 _lh_listcomp_fun_ls_t_7_1))
    | `LH_C(_lh_remainders_LH_C_0_8, _lh_remainders_LH_C_1_8) -> 
      (let rec _lh_listcomp_fun_ls_t_7_2 = (remainders_lh__d3__d7 _lh_remainders_LH_C_1_8) in
        (let rec _lh_listcomp_fun_ls_h_6_5 = (let rec _lh_rads_of_size_n_LH_C_1_3 = _lh_remainders_LH_C_1_8 in
          (let rec _lh_rads_of_size_n_LH_C_0_6 = _lh_remainders_LH_C_0_8 in
            (fun _lh_listcomp_fun_ls_t_7_3 _lh_listcomp_fun_1_2_3 _lh_rads_of_size_n_LH_P3_0_1_0 _lh_rads_of_size_n_LH_P3_1_1_3 _lh_rads_of_size_n_LH_P3_2_1_3 _lh_rads_of_size_n_arg1_2_1 -> 
              (let rec _lh_listcomp_fun_1_2_4 = (fun _lh_listcomp_fun_para_3_3 -> 
                (((((((_lh_listcomp_fun_para_3_3 _lh_listcomp_fun_1_2_4) _lh_rads_of_size_n_LH_C_0_6) _lh_rads_of_size_n_LH_P3_1_1_3) _lh_rads_of_size_n_LH_P3_2_1_3) _lh_rads_of_size_n_arg1_2_1) _lh_listcomp_fun_ls_t_7_3) _lh_listcomp_fun_1_2_3)) in
                (_lh_listcomp_fun_1_2_4 (remainders_lh__d3__d6 (if (_lh_rads_of_size_n_LH_P3_0_1_0 = _lh_rads_of_size_n_LH_P3_1_1_3) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_6, _lh_rads_of_size_n_LH_C_1_3))
                else
                  ((atIndex_lz_lh__d6__d9 _lh_rads_of_size_n_LH_P3_1_1_3) _lh_rads_of_size_n_arg1_2_1)))))))) in
          (fun _lh_listcomp_fun_1_2_5 _lh_rads_of_size_n_LH_P3_0_1_1 _lh_rads_of_size_n_LH_P3_1_1_4 _lh_rads_of_size_n_LH_P3_2_1_4 _lh_rads_of_size_n_arg1_2_2 _lh_listcomp_fun_ls_t_7_4 _lh_listcomp_fun_1_2_6 -> 
            ((((((_lh_listcomp_fun_ls_h_6_5 _lh_listcomp_fun_ls_t_7_2) _lh_listcomp_fun_1_2_5) _lh_rads_of_size_n_LH_P3_0_1_1) _lh_rads_of_size_n_LH_P3_1_1_4) _lh_rads_of_size_n_LH_P3_2_1_4) _lh_rads_of_size_n_arg1_2_2))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d5__d7 a_9 b_9 =
  (if (a_9 <= b_9) then
    (`LH_C(a_9, ((enumFromTo_lh__d5__d7 (a_9 + 1)) b_9)))
  else
    (`LH_N));;
let rec atIndex_lz_lh__d6__d1_d0 n_1_6 ls_2_3 =
  (if (n_1_6 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_3) with
      | `LH_C(h_1_7, t_2_1) -> 
        (if (n_1_6 = 0) then
          h_1_7
        else
          ((atIndex_lz_lh__d6__d1_d0 (n_1_6 - 1)) t_2_1))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_lh__d5__d8 a_7 b_7 =
  (if (a_7 <= b_7) then
    (let rec _lh_listcomp_fun_ls_t_3_3 = ((enumFromTo_lh__d5__d8 (a_7 + 1)) b_7) in
      (let rec _lh_listcomp_fun_ls_h_3_0 = a_7 in
        (fun _lh_listcomp_fun_5_7 _lh_three_partitions_arg1_4 -> 
          (let rec _lh_listcomp_fun_5_8 = (fun _lh_listcomp_fun_para_1_6 -> 
            (match _lh_listcomp_fun_para_1_6 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_1, _lh_listcomp_fun_ls_t_3_4) -> 
                (let rec _lh_listcomp_fun_5_9 = (fun _lh_listcomp_fun_para_1_7 -> 
                  (((((_lh_listcomp_fun_para_1_7 _lh_listcomp_fun_ls_h_3_1) _lh_listcomp_fun_ls_h_3_0) _lh_listcomp_fun_5_9) _lh_listcomp_fun_ls_t_3_4) _lh_listcomp_fun_5_8)) in
                  (_lh_listcomp_fun_5_9 (let rec _lh_listcomp_fun_ls_t_3_5 = (fun _lh_listcomp_fun_ls_h_3_2 _lh_listcomp_fun_ls_h_3_3 _lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_3_6 _lh_listcomp_fun_6_1 -> 
                    (_lh_listcomp_fun_6_1 _lh_listcomp_fun_ls_t_3_6)) in
                    (let rec _lh_listcomp_fun_ls_h_3_4 = (_lh_three_partitions_arg1_4 - (_lh_listcomp_fun_ls_h_3_0 + _lh_listcomp_fun_ls_h_3_1)) in
                      (fun _lh_listcomp_fun_ls_h_3_5 _lh_listcomp_fun_ls_h_3_6 _lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_3_7 _lh_listcomp_fun_6_3 -> 
                        (let rec _lh_listcomp_fun_ls_t_3_8 = (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_3_5) in
                          (let rec _lh_listcomp_fun_ls_h_3_7 = (let rec _lh_rads_of_size_n_LH_P3_2_4 = _lh_listcomp_fun_ls_h_3_4 in
                            (let rec _lh_rads_of_size_n_LH_P3_1_4 = _lh_listcomp_fun_ls_h_3_5 in
                              (let rec _lh_rads_of_size_n_LH_P3_0_4 = _lh_listcomp_fun_ls_h_3_6 in
                                (fun _lh_listcomp_fun_ls_t_3_9 _lh_listcomp_fun_6_4 _lh_rads_of_size_n_arg1_7 -> 
                                  (let rec _lh_listcomp_fun_6_5 = (fun _lh_listcomp_fun_para_1_8 -> 
                                    (((((((_lh_listcomp_fun_para_1_8 _lh_listcomp_fun_6_5) _lh_rads_of_size_n_LH_P3_0_4) _lh_rads_of_size_n_LH_P3_1_4) _lh_rads_of_size_n_LH_P3_2_4) _lh_rads_of_size_n_arg1_7) _lh_listcomp_fun_ls_t_3_9) _lh_listcomp_fun_6_4)) in
                                    (_lh_listcomp_fun_6_5 (remainders_lh__d3__d7 ((atIndex_lz_lh__d6__d1_d0 _lh_rads_of_size_n_LH_P3_0_4) _lh_rads_of_size_n_arg1_7)))))))) in
                            (fun _lh_listcomp_fun_6_6 _lh_rads_of_size_n_arg1_8 -> 
                              (((_lh_listcomp_fun_ls_h_3_7 _lh_listcomp_fun_ls_t_3_8) _lh_listcomp_fun_6_6) _lh_rads_of_size_n_arg1_8)))))))))
              | `LH_N -> 
                (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_3_3))) in
            (_lh_listcomp_fun_5_8 ((enumFromTo_lh__d5__d7 _lh_listcomp_fun_ls_h_3_0) ((_lh_three_partitions_arg1_4 - _lh_listcomp_fun_ls_h_3_0) / 2)))))))
  else
    (fun _lh_listcomp_fun_6_7 _lh_three_partitions_arg1_5 _lh_listcomp_fun_6_8 _lh_rads_of_size_n_arg1_9 -> 
      (`LH_N)));;
let rec three_partitions_lh__d1__d1 _lh_three_partitions_arg1_2 =
  (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_4 -> 
    ((_lh_listcomp_fun_para_4 _lh_listcomp_fun_1_5) _lh_three_partitions_arg1_2)) in
    (_lh_listcomp_fun_1_5 ((enumFromTo_lh__d5__d8 0) (_lh_three_partitions_arg1_2 / 3))));;
let rec rads_of_size_n_lh__d1__d1 _lh_rads_of_size_n_arg1_3_9 _lh_rads_of_size_n_arg2_3 =
  (let rec _lh_listcomp_fun_1_9_5 = (fun _lh_listcomp_fun_para_5_2 -> 
    ((_lh_listcomp_fun_para_5_2 _lh_listcomp_fun_1_9_5) _lh_rads_of_size_n_arg1_3_9)) in
    (_lh_listcomp_fun_1_9_5 (three_partitions_lh__d1__d1 (_lh_rads_of_size_n_arg2_3 - 1))));;
let rec enumFromTo_lh__d5__d6 a_5 b_5 =
  (if (a_5 <= b_5) then
    (let rec _lh_listcomp_fun_ls_t_2_9 = ((enumFromTo_lh__d5__d6 (a_5 + 1)) b_5) in
      (let rec _lh_listcomp_fun_ls_h_2_7 = a_5 in
        (fun _lh_listcomp_fun_5_1 radicals_6 -> 
          (lazy (`LH_C(((rads_of_size_n_lh__d1__d1 radicals_6) _lh_listcomp_fun_ls_h_2_7), (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_2_9)))))))
  else
    (fun _lh_listcomp_fun_5_2 radicals_7 -> 
      (lazy (`LH_N))));;
let rec radical_generator_lh__d3__d0 _lh_radical_generator_arg1_2 =
  (let rec radicals_1_3 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_1_5_7 = (fun _lh_listcomp_fun_para_4_0 -> 
    ((_lh_listcomp_fun_para_4_0 _lh_listcomp_fun_1_5_7) radicals_1_3)) in
    (_lh_listcomp_fun_1_5_7 ((enumFromTo_lh__d5__d6 1) _lh_radical_generator_arg1_2)))))) in
    radicals_1_3);;
let rec ccp_until_lh__d1__d0 _lh_ccp_until_arg1_0 =
  (let rec radicals_1_4 = (radical_generator_lh__d3__d0 (_lh_ccp_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_1_7_0 = (fun _lh_listcomp_fun_para_4_3 -> 
      ((_lh_listcomp_fun_para_4_3 _lh_listcomp_fun_1_7_0) radicals_1_4)) in
      (_lh_listcomp_fun_1_7_0 ((enumFromTo_lh__d3__d0 1) _lh_ccp_until_arg1_0))));;
let rec atIndex_lz_lh__d6__d3 n_3 ls_7 =
  (if (n_3 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_7) with
      | `LH_C(h_3, t_6) -> 
        (if (n_3 = 0) then
          h_3
        else
          ((atIndex_lz_lh__d6__d3 (n_3 - 1)) t_6))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_lh__d5__d1 a_1_3 b_1_3 =
  (if (a_1_3 <= b_1_3) then
    (`LH_C(a_1_3, ((enumFromTo_lh__d5__d1 (a_1_3 + 1)) b_1_3)))
  else
    (`LH_N));;
let rec atIndex_lz_lh__d6__d1 n_1_3 ls_1_8 =
  (if (n_1_3 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_8) with
      | `LH_C(h_1_3, t_1_6) -> 
        (if (n_1_3 = 0) then
          h_1_3
        else
          ((atIndex_lz_lh__d6__d1 (n_1_3 - 1)) t_1_6))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d3__d1 _lh_remainders_arg1_1_4 =
  (match _lh_remainders_arg1_1_4 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_6_4 _lh_rads_of_size_n_LH_C_0_1_6 _lh_rads_of_size_n_LH_P3_1_2_4 _lh_rads_of_size_n_LH_P3_2_2_4 _lh_rads_of_size_n_arg1_3_3 _lh_listcomp_fun_ls_t_1_0_0 _lh_listcomp_fun_1_6_5 -> 
        (_lh_listcomp_fun_1_6_5 _lh_listcomp_fun_ls_t_1_0_0))
    | `LH_C(_lh_remainders_LH_C_0_1_4, _lh_remainders_LH_C_1_1_4) -> 
      (let rec _lh_listcomp_fun_ls_t_1_0_1 = (remainders_lh__d3__d1 _lh_remainders_LH_C_1_1_4) in
        (let rec _lh_listcomp_fun_ls_h_7_6 = (let rec _lh_rads_of_size_n_LH_C_1_7 = _lh_remainders_LH_C_1_1_4 in
          (let rec _lh_rads_of_size_n_LH_C_0_1_7 = _lh_remainders_LH_C_0_1_4 in
            (fun _lh_listcomp_fun_ls_t_1_0_2 _lh_listcomp_fun_1_6_6 _lh_rads_of_size_n_LH_C_0_1_8 _lh_rads_of_size_n_LH_P3_1_2_5 _lh_rads_of_size_n_LH_P3_2_2_5 _lh_rads_of_size_n_arg1_3_4 -> 
              (let rec _lh_listcomp_fun_1_6_7 = (fun _lh_listcomp_fun_para_4_2 -> 
                (match _lh_listcomp_fun_para_4_2 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_7, _lh_listcomp_fun_ls_t_1_0_3) -> 
                    (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_1_8, _lh_rads_of_size_n_LH_C_0_1_7, _lh_listcomp_fun_ls_h_7_7)), (_lh_listcomp_fun_1_6_7 _lh_listcomp_fun_ls_t_1_0_3)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_6_6 _lh_listcomp_fun_ls_t_1_0_2))) in
                (_lh_listcomp_fun_1_6_7 (if (_lh_rads_of_size_n_LH_P3_1_2_5 = _lh_rads_of_size_n_LH_P3_2_2_5) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_1_7, _lh_rads_of_size_n_LH_C_1_7))
                else
                  ((atIndex_lz_lh__d6__d1 _lh_rads_of_size_n_LH_P3_2_2_5) _lh_rads_of_size_n_arg1_3_4))))))) in
          (fun _lh_listcomp_fun_1_6_8 _lh_rads_of_size_n_LH_C_0_1_9 _lh_rads_of_size_n_LH_P3_1_2_6 _lh_rads_of_size_n_LH_P3_2_2_6 _lh_rads_of_size_n_arg1_3_5 _lh_listcomp_fun_ls_t_1_0_4 _lh_listcomp_fun_1_6_9 -> 
            ((((((_lh_listcomp_fun_ls_h_7_6 _lh_listcomp_fun_ls_t_1_0_1) _lh_listcomp_fun_1_6_8) _lh_rads_of_size_n_LH_C_0_1_9) _lh_rads_of_size_n_LH_P3_1_2_6) _lh_rads_of_size_n_LH_P3_2_2_6) _lh_rads_of_size_n_arg1_3_5))))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lz_lh__d6__d2 n_4 ls_8 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_8) with
      | `LH_C(h_4, t_7) -> 
        (if (n_4 = 0) then
          h_4
        else
          ((atIndex_lz_lh__d6__d2 (n_4 - 1)) t_7))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d3__d2 _lh_remainders_arg1_2 =
  (match _lh_remainders_arg1_2 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_1 _lh_rads_of_size_n_LH_P3_0_1 _lh_rads_of_size_n_LH_P3_1_1 _lh_rads_of_size_n_LH_P3_2_1 _lh_rads_of_size_n_arg1_4 _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_2_2 -> 
        (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_1))
    | `LH_C(_lh_remainders_LH_C_0_2, _lh_remainders_LH_C_1_2) -> 
      (let rec _lh_listcomp_fun_ls_t_1_2 = (remainders_lh__d3__d2 _lh_remainders_LH_C_1_2) in
        (let rec _lh_listcomp_fun_ls_h_1_1 = (let rec _lh_rads_of_size_n_LH_C_1_0 = _lh_remainders_LH_C_1_2 in
          (let rec _lh_rads_of_size_n_LH_C_0_0 = _lh_remainders_LH_C_0_2 in
            (fun _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_2_3 _lh_rads_of_size_n_LH_P3_0_2 _lh_rads_of_size_n_LH_P3_1_2 _lh_rads_of_size_n_LH_P3_2_2 _lh_rads_of_size_n_arg1_5 -> 
              (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_7 -> 
                (((((((_lh_listcomp_fun_para_7 _lh_listcomp_fun_2_4) _lh_rads_of_size_n_LH_C_0_0) _lh_rads_of_size_n_LH_P3_1_2) _lh_rads_of_size_n_LH_P3_2_2) _lh_rads_of_size_n_arg1_5) _lh_listcomp_fun_ls_t_1_3) _lh_listcomp_fun_2_3)) in
                (_lh_listcomp_fun_2_4 (remainders_lh__d3__d1 (if (_lh_rads_of_size_n_LH_P3_0_2 = _lh_rads_of_size_n_LH_P3_1_2) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_1_0))
                else
                  ((atIndex_lz_lh__d6__d2 _lh_rads_of_size_n_LH_P3_1_2) _lh_rads_of_size_n_arg1_5)))))))) in
          (fun _lh_listcomp_fun_2_5 _lh_rads_of_size_n_LH_P3_0_3 _lh_rads_of_size_n_LH_P3_1_3 _lh_rads_of_size_n_LH_P3_2_3 _lh_rads_of_size_n_arg1_6 _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_2_6 -> 
            ((((((_lh_listcomp_fun_ls_h_1_1 _lh_listcomp_fun_ls_t_1_2) _lh_listcomp_fun_2_5) _lh_rads_of_size_n_LH_P3_0_3) _lh_rads_of_size_n_LH_P3_1_3) _lh_rads_of_size_n_LH_P3_2_3) _lh_rads_of_size_n_arg1_6))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d5__d2 a_1_0 b_1_0 =
  (if (a_1_0 <= b_1_0) then
    (let rec _lh_listcomp_fun_ls_t_4_5 = ((enumFromTo_lh__d5__d2 (a_1_0 + 1)) b_1_0) in
      (let rec _lh_listcomp_fun_ls_h_4_0 = a_1_0 in
        (fun _lh_listcomp_fun_7_9 _lh_three_partitions_arg1_6 -> 
          (let rec _lh_listcomp_fun_8_0 = (fun _lh_listcomp_fun_para_2_2 -> 
            (match _lh_listcomp_fun_para_2_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_4_1, _lh_listcomp_fun_ls_t_4_6) -> 
                (let rec _lh_listcomp_fun_8_1 = (fun _lh_listcomp_fun_para_2_3 -> 
                  (((((_lh_listcomp_fun_para_2_3 _lh_listcomp_fun_ls_h_4_1) _lh_listcomp_fun_ls_h_4_0) _lh_listcomp_fun_8_1) _lh_listcomp_fun_ls_t_4_6) _lh_listcomp_fun_8_0)) in
                  (_lh_listcomp_fun_8_1 (let rec _lh_listcomp_fun_ls_t_4_7 = (fun _lh_listcomp_fun_ls_h_4_2 _lh_listcomp_fun_ls_h_4_3 _lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_4_8 _lh_listcomp_fun_8_3 -> 
                    (_lh_listcomp_fun_8_3 _lh_listcomp_fun_ls_t_4_8)) in
                    (let rec _lh_listcomp_fun_ls_h_4_4 = (_lh_three_partitions_arg1_6 - (_lh_listcomp_fun_ls_h_4_0 + _lh_listcomp_fun_ls_h_4_1)) in
                      (fun _lh_listcomp_fun_ls_h_4_5 _lh_listcomp_fun_ls_h_4_6 _lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_4_9 _lh_listcomp_fun_8_5 -> 
                        (let rec _lh_listcomp_fun_ls_t_5_0 = (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_4_7) in
                          (let rec _lh_listcomp_fun_ls_h_4_7 = (let rec _lh_rads_of_size_n_LH_P3_2_8 = _lh_listcomp_fun_ls_h_4_4 in
                            (let rec _lh_rads_of_size_n_LH_P3_1_8 = _lh_listcomp_fun_ls_h_4_5 in
                              (let rec _lh_rads_of_size_n_LH_P3_0_8 = _lh_listcomp_fun_ls_h_4_6 in
                                (fun _lh_listcomp_fun_ls_t_5_1 _lh_listcomp_fun_8_6 _lh_rads_of_size_n_arg1_1_3 -> 
                                  (let rec _lh_listcomp_fun_8_7 = (fun _lh_listcomp_fun_para_2_4 -> 
                                    (((((((_lh_listcomp_fun_para_2_4 _lh_listcomp_fun_8_7) _lh_rads_of_size_n_LH_P3_0_8) _lh_rads_of_size_n_LH_P3_1_8) _lh_rads_of_size_n_LH_P3_2_8) _lh_rads_of_size_n_arg1_1_3) _lh_listcomp_fun_ls_t_5_1) _lh_listcomp_fun_8_6)) in
                                    (_lh_listcomp_fun_8_7 (remainders_lh__d3__d2 ((atIndex_lz_lh__d6__d3 _lh_rads_of_size_n_LH_P3_0_8) _lh_rads_of_size_n_arg1_1_3)))))))) in
                            (fun _lh_listcomp_fun_8_8 _lh_rads_of_size_n_arg1_1_4 -> 
                              (((_lh_listcomp_fun_ls_h_4_7 _lh_listcomp_fun_ls_t_5_0) _lh_listcomp_fun_8_8) _lh_rads_of_size_n_arg1_1_4)))))))))
              | `LH_N -> 
                (_lh_listcomp_fun_7_9 _lh_listcomp_fun_ls_t_4_5))) in
            (_lh_listcomp_fun_8_0 ((enumFromTo_lh__d5__d1 _lh_listcomp_fun_ls_h_4_0) ((_lh_three_partitions_arg1_6 - _lh_listcomp_fun_ls_h_4_0) / 2)))))))
  else
    (fun _lh_listcomp_fun_8_9 _lh_three_partitions_arg1_7 _lh_listcomp_fun_9_0 _lh_rads_of_size_n_arg1_1_5 -> 
      (`LH_N)));;
let rec three_partitions_lh__d1__d0 _lh_three_partitions_arg1_8 =
  (let rec _lh_listcomp_fun_1_0_9 = (fun _lh_listcomp_fun_para_3_0 -> 
    ((_lh_listcomp_fun_para_3_0 _lh_listcomp_fun_1_0_9) _lh_three_partitions_arg1_8)) in
    (_lh_listcomp_fun_1_0_9 ((enumFromTo_lh__d5__d2 0) (_lh_three_partitions_arg1_8 / 3))));;
let rec rads_of_size_n_lh__d1__d0 _lh_rads_of_size_n_arg1_2_6 _lh_rads_of_size_n_arg2_2 =
  (let rec _lh_listcomp_fun_1_3_6 = (fun _lh_listcomp_fun_para_3_6 -> 
    ((_lh_listcomp_fun_para_3_6 _lh_listcomp_fun_1_3_6) _lh_rads_of_size_n_arg1_2_6)) in
    (_lh_listcomp_fun_1_3_6 (three_partitions_lh__d1__d0 (_lh_rads_of_size_n_arg2_2 - 1))));;
let rec enumFromTo_lh__d5__d0 a_1_9 b_1_9 =
  (if (a_1_9 <= b_1_9) then
    (let rec _lh_listcomp_fun_ls_t_1_1_9 = ((enumFromTo_lh__d5__d0 (a_1_9 + 1)) b_1_9) in
      (let rec _lh_listcomp_fun_ls_h_9_0 = a_1_9 in
        (fun _lh_listcomp_fun_1_9_6 radicals_1_7 -> 
          (lazy (`LH_C(((rads_of_size_n_lh__d1__d0 radicals_1_7) _lh_listcomp_fun_ls_h_9_0), (_lh_listcomp_fun_1_9_6 _lh_listcomp_fun_ls_t_1_1_9)))))))
  else
    (fun _lh_listcomp_fun_1_9_7 radicals_1_8 -> 
      (lazy (`LH_N))));;
let rec radical_generator_lh__d4__d0 _lh_radical_generator_arg1_3 =
  (let rec radicals_1_9 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_2_0_4 = (fun _lh_listcomp_fun_para_5_7 -> 
    ((_lh_listcomp_fun_para_5_7 _lh_listcomp_fun_2_0_4) radicals_1_9)) in
    (_lh_listcomp_fun_2_0_4 ((enumFromTo_lh__d5__d0 1) _lh_radical_generator_arg1_3)))))) in
    radicals_1_9);;
let rec odd_lh__d1__d0 _lh_odd_arg1_1 =
  ((_lh_odd_arg1_1 mod 2) = 1);;
let rec length_lh__d5__d0 ls_2_6 =
  (ls_2_6 99);;
let rec remainders_lh__d3__d0 _lh_remainders_arg1_4 =
  (match _lh_remainders_arg1_4 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_5_3 _lh_dummy_3 -> 
        0)
    | `LH_C(_lh_remainders_LH_C_0_4, _lh_remainders_LH_C_1_4) -> 
      (let rec _lh_listcomp_fun_ls_t_3_0 = (remainders_lh__d3__d0 _lh_remainders_LH_C_1_4) in
        (let rec _lh_listcomp_fun_ls_h_2_8 = (let rec _lh_bcp_generator_LH_C_1_1 = _lh_remainders_LH_C_1_4 in
          (let rec _lh_bcp_generator_LH_C_0_1 = _lh_remainders_LH_C_0_4 in
            (fun _lh_listcomp_fun_ls_t_3_1 _lh_listcomp_fun_5_4 -> 
              (let rec _lh_listcomp_fun_5_5 = (fun _lh_listcomp_fun_para_1_5 -> 
                (match _lh_listcomp_fun_para_1_5 with
                  | `LH_C(_lh_listcomp_fun_ls_h_2_9, _lh_listcomp_fun_ls_t_3_2) -> 
                    (let rec t_5 = (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_3_2) in
                      (fun _lh_dummy_4 -> 
                        (1 + (length_lh__d5__d0 t_5))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_3_1))) in
                (_lh_listcomp_fun_5_5 (`LH_C(_lh_bcp_generator_LH_C_0_1, _lh_bcp_generator_LH_C_1_1))))))) in
          (fun _lh_listcomp_fun_5_6 -> 
            ((_lh_listcomp_fun_ls_h_2_8 _lh_listcomp_fun_ls_t_3_0) _lh_listcomp_fun_5_6))))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lz_lh__d6__d0 n_7 ls_1_1 =
  (if (n_7 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_1) with
      | `LH_C(h_7, t_1_0) -> 
        (if (n_7 = 0) then
          h_7
        else
          ((atIndex_lz_lh__d6__d0 (n_7 - 1)) t_1_0))
      | `LH_N -> 
        (failwith "error")));;
let rec bcp_generator_lh__d2__d0 _lh_bcp_generator_arg1_0 _lh_bcp_generator_arg2_0 =
  (if (odd_lh__d1__d0 _lh_bcp_generator_arg2_0) then
    (fun _lh_dummy_5 -> 
      0)
  else
    (let rec _lh_listcomp_fun_1_0_8 = (fun _lh_listcomp_fun_para_2_9 -> 
      (_lh_listcomp_fun_para_2_9 _lh_listcomp_fun_1_0_8)) in
      (_lh_listcomp_fun_1_0_8 (remainders_lh__d3__d0 ((atIndex_lz_lh__d6__d0 (_lh_bcp_generator_arg2_0 / 2)) _lh_bcp_generator_arg1_0)))));;
let rec length_lh__d5__d1 ls_1 =
  (ls_1 99);;
let rec enumFromTo_lh__d4__d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_2_0 = ((enumFromTo_lh__d4__d0 (a_2 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_1_4 = a_2 in
        (fun _lh_listcomp_fun_3_3 radicals_2 -> 
          (`LH_C((length_lh__d5__d1 ((bcp_generator_lh__d2__d0 radicals_2) _lh_listcomp_fun_ls_h_1_4)), (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_0))))))
  else
    (fun _lh_listcomp_fun_3_4 radicals_3 -> 
      (`LH_N)));;
let rec bcp_until_lh__d1__d0 _lh_bcp_until_arg1_0 =
  (let rec radicals_2_0 = (radical_generator_lh__d4__d0 (_lh_bcp_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_2_0_5 = (fun _lh_listcomp_fun_para_5_8 -> 
      ((_lh_listcomp_fun_para_5_8 _lh_listcomp_fun_2_0_5) radicals_2_0)) in
      (_lh_listcomp_fun_2_0_5 ((enumFromTo_lh__d4__d0 1) _lh_bcp_until_arg1_0))));;
let rec testParaffins_nofib_lh__d1__d0 _lh_testParaffins_nofib_arg1_0 =
  (`LH_P4((let rec _lh_listcomp_fun_6_9 = (fun _lh_listcomp_fun_para_1_9 -> 
    ((_lh_listcomp_fun_para_1_9 _lh_listcomp_fun_6_9) _lh_testParaffins_nofib_arg1_0)) in
    (_lh_listcomp_fun_6_9 (let rec _lh_listcomp_fun_ls_t_4_0 = (fun _lh_listcomp_fun_7_0 _lh_testParaffins_nofib_arg1_1 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_3_8 = (radical_generator_lh__d1__d0 _lh_testParaffins_nofib_arg1_0) in
        (fun _lh_listcomp_fun_7_1 _lh_testParaffins_nofib_arg1_2 -> 
          (let rec _lh_listcomp_fun_7_2 = (fun _lh_listcomp_fun_para_2_0 -> 
            ((((_lh_listcomp_fun_para_2_0 _lh_listcomp_fun_ls_h_3_8) _lh_listcomp_fun_7_2) _lh_listcomp_fun_ls_t_4_0) _lh_listcomp_fun_7_1)) in
            (_lh_listcomp_fun_7_2 ((enumFromTo_lh__d1__d0 0) _lh_testParaffins_nofib_arg1_2)))))))), (bcp_until_lh__d1__d0 _lh_testParaffins_nofib_arg1_0), (ccp_until_lh__d1__d0 _lh_testParaffins_nofib_arg1_0), (paraffins_until_lh__d1__d0 _lh_testParaffins_nofib_arg1_0)));;
end;;

