

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec append_lz__d0 _lh_append_lz_arg1_0 _lh_append_lz_arg2_0 =
  (let rec _lh_matchIdent_1 = _lh_append_lz_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_append_lz_LH_C_0_0, _lh_append_lz_LH_C_1_0) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_0, ((append_lz__d0 _lh_append_lz_LH_C_1_0) _lh_append_lz_arg2_0))))
      | `LH_N -> 
        _lh_append_lz_arg2_0
      | _ -> 
        (failwith "error")));;
let rec atIndex_lz__d0 n_0 ls_4 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4) with
      | `LH_C(h_4, t_6) -> 
        (if (n_0 = 0) then
          h_4
        else
          ((atIndex_lz__d0 (n_0 - 1)) t_6))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromThenTo__d1 a_1 t_4 b_1 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_1_0 = (((enumFromThenTo__d1 t_4) ((2 * t_4) - a_1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_6 = a_1 in
        (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_5 -> 
          (match _lh_listcomp_fun_para_5 with
            | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_1_1) -> 
              (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_6 -> 
                ((((_lh_listcomp_fun_para_6 _lh_listcomp_fun_1_8) _lh_popOutId_2_1) _lh_listcomp_fun_ls_t_1_1) _lh_listcomp_fun_1_7)) in
                (_lh_listcomp_fun_1_8 (let rec _lh_listcomp_fun_ls_t_1_2 = (fun _lh_listcomp_fun_1_9 _lh_nextSize_arg2_1 _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_2_0 -> 
                  (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_3)) in
                  (let rec _lh_listcomp_fun_ls_h_8 = (_lh_listcomp_fun_ls_h_7 + _lh_listcomp_fun_ls_h_6) in
                    (fun _lh_listcomp_fun_2_1 _lh_nextSize_arg2_2 _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_2_2 -> 
                      (if ((_lh_listcomp_fun_ls_h_8 mod _lh_nextSize_arg2_2) > 0) then
                        (`LH_C(_lh_listcomp_fun_ls_h_8, (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_2)))
                      else
                        (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_2)))))))
            | `LH_N -> 
              (_lh_popOutId_0_1 _lh_listcomp_fun_ls_t_1_0))) in
          (_lh_listcomp_fun_1_7 _lh_popOutId_1_1))))
  else
    (`LH_N));;
let rec head_lz__d0 ls_3 =
  (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_5) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz__d0 f_1 ls_2 =
  (lazy (match (Lazy.force ls_2) with
    | `LH_C(h_2, t_3) -> 
      (`LH_C((f_1 h_2), ((map_lz__d0 f_1) t_3)))
    | `LH_N -> 
      (`LH_N)));;
let rec min__d0 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec notDivBy__d0 _lh_notDivBy_arg1_0 _lh_notDivBy_arg2_0 _lh_notDivBy_arg3_0 =
  (let rec _lh_matchIdent_2 = (Lazy.force _lh_notDivBy_arg2_0) in
    (match _lh_matchIdent_2 with
      | `LH_C(_lh_notDivBy_LH_C_0_0, _lh_notDivBy_LH_C_1_0) -> 
        (if (_lh_notDivBy_LH_C_0_0 > _lh_notDivBy_arg3_0) then
          true
        else
          (let rec _lh_matchIdent_3 = (Lazy.force _lh_notDivBy_arg1_0) in
            (match _lh_matchIdent_3 with
              | `LH_C(_lh_notDivBy_LH_C_0_1, _lh_notDivBy_LH_C_1_1) -> 
                (((_lh_notDivBy_arg3_0 mod _lh_notDivBy_LH_C_0_1) > 0) && (((notDivBy__d0 _lh_notDivBy_LH_C_1_1) _lh_notDivBy_LH_C_1_0) _lh_notDivBy_arg3_0))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")));;
let rec tail_lz__d0 ls_0 =
  (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz__d1 ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_2) -> 
      t_2
    | `LH_N -> 
      (failwith "error"));;
let rec zipWith_lz_lz__d0 f_0 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_0 hx_0) hy_0), (((zipWith_lz_lz__d0 f_0) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec enumFromThenTo__d0 a_0 t_1 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 _lh_popOutId_4_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = (((enumFromThenTo__d0 t_1) ((2 * t_1) - a_0)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
          (match _lh_listcomp_fun_para_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
              (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
                ((((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_2) _lh_popOutId_1_0) _lh_popOutId_3_0) _lh_popOutId_4_0) _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1)) in
                (_lh_listcomp_fun_2 (let rec _lh_listcomp_fun_ls_t_2 = (fun _lh_listcomp_fun_3 _lh_sieve_Wheel_0_1 _lh_sieve_arg2_1 _lh_sieve_arg3_1 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_4 -> 
                  (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3)) in
                  (let rec _lh_listcomp_fun_ls_h_2 = (_lh_listcomp_fun_ls_h_1 + _lh_listcomp_fun_ls_h_0) in
                    (fun _lh_listcomp_fun_5 _lh_sieve_Wheel_0_2 _lh_sieve_arg2_2 _lh_sieve_arg3_2 _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_6 -> 
                      (if ((((noFactor__d0 _lh_sieve_Wheel_0_2) _lh_sieve_arg2_2) _lh_sieve_arg3_2) _lh_listcomp_fun_ls_h_2) then
                        (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_2)))
                      else
                        (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_2)))))))
            | `LH_N -> 
              (_lh_popOutId_0_0 _lh_listcomp_fun_ls_t_0))) in
          (_lh_listcomp_fun_1 _lh_popOutId_2_0))))
  else
    (`LH_N))
and nextSize__d0 _lh_nextSize_arg1_0 _lh_nextSize_arg2_4 =
  (match _lh_nextSize_arg1_0 with
    | `Wheel(_lh_nextSize_Wheel_0_0, _lh_nextSize_Wheel_1_2) -> 
      (`Wheel((_lh_nextSize_Wheel_0_0 * _lh_nextSize_arg2_4), (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_7 -> 
        (((_lh_listcomp_fun_para_7 _lh_listcomp_fun_2_4) _lh_nextSize_Wheel_1_2) _lh_nextSize_arg2_4)) in
        (_lh_listcomp_fun_2_4 (((enumFromThenTo__d1 0) _lh_nextSize_Wheel_0_0) ((_lh_nextSize_arg2_4 - 1) * _lh_nextSize_Wheel_0_0))))))
    | _ -> 
      (failwith "error"))
and noFactor__d0 _lh_noFactor_arg1_0 _lh_noFactor_arg2_0 _lh_noFactor_arg3_0 _lh_noFactor_arg4_0 =
  (if (_lh_noFactor_arg1_0 <= 2) then
    true
  else
    (((notDivBy__d0 _lh_noFactor_arg2_0) _lh_noFactor_arg3_0) _lh_noFactor_arg4_0))
and prime__d0 _lh_prime_arg1_0 =
  ((atIndex_lz__d0 _lh_prime_arg1_0) (primes__d0 _lh_prime_arg1_0))
and primes__d0 _lh_primes_arg1_0 =
  (lazy ((((sieve__d0 (wheels__d0 (primes__d0 _lh_primes_arg1_0))) (primes__d0 _lh_primes_arg1_0)) (squares__d0 (primes__d0 _lh_primes_arg1_0))) _lh_primes_arg1_0))
and sieve__d0 _lh_sieve_arg1_0 _lh_sieve_arg2_4 _lh_sieve_arg3_4 _lh_sieve_arg4_0 =
  (let rec _lh_matchIdent_0 = (Lazy.force _lh_sieve_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_sieve_LH_C_0_0, _lh_sieve_LH_C_1_0) -> 
        (match _lh_sieve_LH_C_0_0 with
          | `Wheel(_lh_sieve_Wheel_0_4, _lh_sieve_Wheel_1_2) -> 
            ((append_lz__d0 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
              (((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_8) _lh_sieve_Wheel_0_4) _lh_sieve_Wheel_1_2) _lh_sieve_arg2_4) _lh_sieve_arg3_4)) in
              (_lh_listcomp_fun_8 (let rec _lh_listcomp_fun_ls_t_5 = (((enumFromThenTo__d0 (_lh_sieve_Wheel_0_4 * 2)) (_lh_sieve_Wheel_0_4 * 3)) (((min__d0 (_lh_sieve_arg4_0 * _lh_sieve_arg4_0)) ((head_lz__d0 _lh_sieve_arg2_4) - 1)) * _lh_sieve_Wheel_0_4)) in
                (let rec _lh_listcomp_fun_ls_h_3 = _lh_sieve_Wheel_0_4 in
                  (fun _lh_listcomp_fun_9 _lh_sieve_Wheel_0_5 _lh_sieve_Wheel_1_3 _lh_sieve_arg2_5 _lh_sieve_arg3_5 -> 
                    (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_3 -> 
                      (match _lh_listcomp_fun_para_3 with
                        | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_6) -> 
                          (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_4 -> 
                            ((((((_lh_listcomp_fun_para_4 _lh_listcomp_fun_1_1) _lh_sieve_Wheel_0_5) _lh_sieve_arg2_5) _lh_sieve_arg3_5) _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_1_0)) in
                            (_lh_listcomp_fun_1_1 (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_1_2 _lh_sieve_Wheel_0_6 _lh_sieve_arg2_6 _lh_sieve_arg3_6 _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_1_3 -> 
                              (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_8)) in
                              (let rec _lh_listcomp_fun_ls_h_5 = (_lh_listcomp_fun_ls_h_4 + _lh_listcomp_fun_ls_h_3) in
                                (fun _lh_listcomp_fun_1_4 _lh_sieve_Wheel_0_7 _lh_sieve_arg2_7 _lh_sieve_arg3_7 _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_1_5 -> 
                                  (if ((((noFactor__d0 _lh_sieve_Wheel_0_7) _lh_sieve_arg2_7) _lh_sieve_arg3_7) _lh_listcomp_fun_ls_h_5) then
                                    (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7)))
                                  else
                                    (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7)))))))
                        | `LH_N -> 
                          (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_5))) in
                      (_lh_listcomp_fun_1_0 _lh_sieve_Wheel_1_3)))))))) ((((sieve__d0 _lh_sieve_LH_C_1_0) (tail_lz__d0 _lh_sieve_arg2_4)) (tail_lz__d1 _lh_sieve_arg3_4)) _lh_sieve_arg4_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and squares__d0 _lh_squares_arg1_0 =
  ((map_lz__d0 (fun p_0 -> 
    (p_0 * p_0))) _lh_squares_arg1_0)
and testWheelSieve1_nofib__d0 _lh_testWheelSieve1_nofib_arg1_0 =
  (prime__d0 _lh_testWheelSieve1_nofib_arg1_0)
and wheels__d0 _lh_wheels_arg1_0 =
  (lazy (`LH_C((`Wheel(1, (`LH_C(1, (`LH_N))))), (((zipWith_lz_lz__d0 nextSize__d0) (wheels__d0 _lh_wheels_arg1_0)) _lh_wheels_arg1_0))));;
end;;

