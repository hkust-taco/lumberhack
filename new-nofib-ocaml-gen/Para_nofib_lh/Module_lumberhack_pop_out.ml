

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec break__d1 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_3 = ((break__d1 _lh_break_arg1_1) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec ceildiv__d0 _lh_ceildiv_arg1_0 _lh_ceildiv_arg2_0 =
  (((_lh_ceildiv_arg1_0 + _lh_ceildiv_arg2_0) - 1) / _lh_ceildiv_arg2_0);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec cons'__d0 _lh_cons'_arg1_2 _lh_cons'_arg2_1 =
  (_lh_cons'_arg2_1 _lh_cons'_arg1_2);;
let rec drop__d0 _lh_drop_arg1_4 _lh_drop_arg2_4 =
  (match _lh_drop_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_4, _lh_drop_LH_C_1_4) -> 
      (if (_lh_drop_arg1_4 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_4, _lh_drop_LH_C_1_4))
      else
        ((drop__d0 (_lh_drop_arg1_4 - 1)) _lh_drop_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec drop__d2 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop__d2 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec drop__d3 _lh_drop_arg1_3 _lh_drop_arg2_3 =
  (match _lh_drop_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3) -> 
      (if (_lh_drop_arg1_3 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3))
      else
        ((drop__d3 (_lh_drop_arg1_3 - 1)) _lh_drop_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec drop__d4 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2))
      else
        ((drop__d4 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec fold1__d0 _lh_fold1_arg1_0 _lh_fold1_arg2_0 _lh_fold1_arg3_0 =
  (match _lh_fold1_arg3_0 with
    | `LH_C(_lh_fold1_LH_C_0_0, _lh_fold1_LH_C_1_0) -> 
      (match _lh_fold1_LH_C_1_0 with
        | `LH_N -> 
          (_lh_fold1_arg2_0 _lh_fold1_LH_C_0_0)
        | _ -> 
          ((_lh_fold1_arg1_0 _lh_fold1_LH_C_0_0) (((fold1__d0 _lh_fold1_arg1_0) _lh_fold1_arg2_0) _lh_fold1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec fold1__d1 _lh_fold1_arg1_2 _lh_fold1_arg2_2 _lh_fold1_arg3_2 =
  (match _lh_fold1_arg3_2 with
    | `LH_C(_lh_fold1_LH_C_0_2, _lh_fold1_LH_C_1_2) -> 
      (match _lh_fold1_LH_C_1_2 with
        | `LH_N -> 
          (_lh_fold1_arg2_2 _lh_fold1_LH_C_0_2)
        | _ -> 
          ((_lh_fold1_arg1_2 _lh_fold1_LH_C_0_2) (((fold1__d1 _lh_fold1_arg1_2) _lh_fold1_arg2_2) _lh_fold1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec fold1__d2 _lh_fold1_arg1_1 _lh_fold1_arg2_1 _lh_fold1_arg3_1 =
  (match _lh_fold1_arg3_1 with
    | `LH_C(_lh_fold1_LH_C_0_1, _lh_fold1_LH_C_1_1) -> 
      (match _lh_fold1_LH_C_1_1 with
        | `LH_N -> 
          (_lh_fold1_arg2_1 _lh_fold1_LH_C_0_1)
        | _ -> 
          ((_lh_fold1_arg1_1 _lh_fold1_LH_C_0_1) (((fold1__d2 _lh_fold1_arg1_1) _lh_fold1_arg2_1) _lh_fold1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec fst3__d0 _lh_fst3_arg1_1 =
  (match _lh_fst3_arg1_1 with
    | `LH_P3(_lh_fst3_LH_P3_0_1, _lh_fst3_LH_P3_1_1, _lh_fst3_LH_P3_2_1) -> 
      _lh_fst3_LH_P3_0_1
    | _ -> 
      (failwith "error"));;
let rec fst3__d1 _lh_fst3_arg1_2 =
  (match _lh_fst3_arg1_2 with
    | `LH_P3(_lh_fst3_LH_P3_0_2, _lh_fst3_LH_P3_1_2, _lh_fst3_LH_P3_2_2) -> 
      _lh_fst3_LH_P3_0_2
    | _ -> 
      (failwith "error"));;
let rec fst3__d2 _lh_fst3_arg1_0 =
  (match _lh_fst3_arg1_0 with
    | `LH_P3(_lh_fst3_LH_P3_0_0, _lh_fst3_LH_P3_1_0, _lh_fst3_LH_P3_2_0) -> 
      _lh_fst3_LH_P3_0_0
    | _ -> 
      (failwith "error"));;
let rec head__d0 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_3_2, t_3_2) -> 
      h_3_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_2_4, t_2_4) -> 
      h_2_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_2_3, t_2_3) -> 
      h_2_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d2 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_3_5, t_3_5) -> 
      h_3_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d3 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_6_3, t_6_3) -> 
      h_6_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d4 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d5 ls_9 =
  (match ls_9 with
    | `LH_C(h_2_2, t_2_2) -> 
      h_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d6 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_5_5, t_5_5) -> 
      h_5_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d2 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_7, t_3_7) -> 
      h_3_7
    | `LH_N -> 
      (failwith "error"));;
let rec head__d3 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_6_8, t_6_8) -> 
      h_6_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d4 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_6, t_4_6) -> 
      h_4_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d5 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_4, t_1_4) -> 
      h_1_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d6 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_5_9, t_5_9) -> 
      h_5_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d7 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_3_0, t_3_0) -> 
      h_3_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d8 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_1, t_1_1) -> 
      h_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d9 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_6_2, t_6_2) -> 
      h_6_2
    | `LH_N -> 
      (failwith "error"));;
let rec isSpace__d0 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec isSpace__d1 _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec length__d0 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_6_1, t_6_1) -> 
      (1 + (length__d0 t_6_1))
    | `LH_N -> 
      0);;
let rec length__d1 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_8, t_5_8) -> 
      (1 + (length__d1 t_5_8))
    | `LH_N -> 
      0);;
let rec length__d2 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_2_7, t_2_7) -> 
      (1 + (length__d2 t_2_7))
    | `LH_N -> 
      0);;
let rec length__d3 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_5_4, t_5_4) -> 
      (1 + (length__d3 t_5_4))
    | `LH_N -> 
      0);;
let rec map__d0 f_0 ls_2 =
  (ls_2 f_0);;
let rec map__d1 f_1_1 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_7_0, t_7_0) -> 
      (`LH_C((f_1_1 h_7_0), ((map__d1 f_1_1) t_7_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_5 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C((f_5 h_3_4), ((map__d2 f_5) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1 ls_3 =
  (ls_3 f_1);;
let rec map__d5 f_1_0 ls_3_9 =
  (ls_3_9 f_1_0);;
let rec mappend__d0 xs_6 ys_9 =
  (match xs_6 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend__d0 t_1_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1 xs_1_6 ys_2_1 =
  (xs_1_6 ys_2_1);;
let rec mappend__d1_d0 xs_1_7 ys_2_2 =
  (match xs_1_7 with
    | `LH_C(h_4_7, t_4_7) -> 
      (`LH_C(h_4_7, ((mappend__d1_d0 t_4_7) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d1_d1 xs_1_3 ys_1_8 =
  (match xs_1_3 with
    | `LH_C(h_3_6, t_3_6) -> 
      (`LH_C(h_3_6, ((mappend__d1_d1 t_3_6) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1_d2 xs_2_2 ys_3_1 =
  (match xs_2_2 with
    | `LH_C(h_5_6, t_5_6) -> 
      (`LH_C(h_5_6, ((mappend__d1_d2 t_5_6) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d1_d3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend__d1_d3 t_2) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend__d1_d4 xs_1_4 ys_1_9 =
  (match xs_1_4 with
    | `LH_C(h_3_8, t_3_8) -> 
      (`LH_C(h_3_8, ((mappend__d1_d4 t_3_8) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d1_d5 xs_1_5 ys_2_0 =
  (match xs_1_5 with
    | `LH_C(h_4_3, t_4_3) -> 
      (`LH_C(h_4_3, ((mappend__d1_d5 t_4_3) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d6 xs_1_1 ys_1_6 =
  (match xs_1_1 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C(h_2_9, ((mappend__d1_d6 t_2_9) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d1_d7 xs_9 ys_1_4 =
  (match xs_9 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C(h_1_7, ((mappend__d1_d7 t_1_7) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d1_d8 xs_1_9 ys_2_8 =
  (match xs_1_9 with
    | `LH_C(h_5_1, t_5_1) -> 
      (`LH_C(h_5_1, ((mappend__d1_d8 t_5_1) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d1_d9 xs_5 ys_8 =
  (match xs_5 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend__d1_d9 t_1_0) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend__d2 xs_2_1 ys_3_0 =
  (xs_2_1 ys_3_0);;
let rec mappend__d2_d0 xs_1_0 ys_1_5 =
  (match xs_1_0 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend__d2_d0 t_1_8) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d2_d1 xs_1_2 ys_1_7 =
  (match xs_1_2 with
    | `LH_C(h_3_1, t_3_1) -> 
      (`LH_C(h_3_1, ((mappend__d2_d1 t_3_1) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d2_d2 xs_3 ys_6 =
  (match xs_3 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend__d2_d2 t_8) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec mappend__d2_d3 xs_2_0 ys_2_9 =
  (match xs_2_0 with
    | `LH_C(h_5_2, t_5_2) -> 
      (`LH_C(h_5_2, ((mappend__d2_d3 t_5_2) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d2_d4 xs_8 ys_1_3 =
  (match xs_8 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend__d2_d4 t_1_6) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d3 xs_2_3 ys_3_2 =
  (xs_2_3 ys_3_2);;
let rec mappend__d7 xs_4 ys_7 =
  (match xs_4 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend__d7 t_9) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend__d8 xs_2_5 ys_3_8 =
  (match xs_2_5 with
    | `LH_C(h_7_1, t_7_1) -> 
      (`LH_C(h_7_1, ((mappend__d8 t_7_1) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend__d9 xs_1_8 ys_2_7 =
  (match xs_1_8 with
    | `LH_C(h_5_0, t_5_0) -> 
      (`LH_C(h_5_0, ((mappend__d9 t_5_0) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec maxw__d0 =
  70;;
let rec maxw__d1 =
  70;;
let rec maxw__d2 =
  70;;
let rec min__d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 > _lh_min_arg2_1) then
    _lh_min_arg2_1
  else
    _lh_min_arg1_1);;
let rec min__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec null'__d0 _lh_null'_arg1_2 =
  (match _lh_null'_arg1_2 with
    | `LH_P2(_lh_null'_LH_P2_0_2, _lh_null'_LH_P2_1_2) -> 
      (match _lh_null'_LH_P2_0_2 with
        | `LH_N -> 
          (match _lh_null'_LH_P2_1_2 with
            | `LH_N -> 
              true
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec null'__d1 _lh_null'_arg1_0 =
  (match _lh_null'_arg1_0 with
    | `LH_P2(_lh_null'_LH_P2_0_0, _lh_null'_LH_P2_1_0) -> 
      (match _lh_null'_LH_P2_0_0 with
        | `LH_N -> 
          (match _lh_null'_LH_P2_1_0 with
            | `LH_N -> 
              true
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec null'__d2 _lh_null'_arg1_1 =
  (match _lh_null'_arg1_1 with
    | `LH_P2(_lh_null'_LH_P2_0_1, _lh_null'_LH_P2_1_1) -> 
      (match _lh_null'_LH_P2_0_1 with
        | `LH_N -> 
          (match _lh_null'_LH_P2_1_1 with
            | `LH_N -> 
              true
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec null__d0 _lh_null_arg1_1_5 =
  (match _lh_null_arg1_1_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_5, _lh_null_LH_C_1_1_5) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d0 _lh_null_arg1_1_6 =
  (match _lh_null_arg1_1_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_6, _lh_null_LH_C_1_1_6) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d1 _lh_null_arg1_1_0 =
  (match _lh_null_arg1_1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_0, _lh_null_LH_C_1_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d2 _lh_null_arg1_1_2 =
  (match _lh_null_arg1_1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_2, _lh_null_LH_C_1_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d3 _lh_null_arg1_5 =
  (match _lh_null_arg1_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_5, _lh_null_LH_C_1_5) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d4 _lh_null_arg1_1_3 =
  (match _lh_null_arg1_1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_3, _lh_null_LH_C_1_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d5 _lh_null_arg1_9 =
  (match _lh_null_arg1_9 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_9, _lh_null_LH_C_1_9) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d6 _lh_null_arg1_7 =
  (match _lh_null_arg1_7 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_7, _lh_null_LH_C_1_7) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d7 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d2 _lh_null_arg1_6 =
  (match _lh_null_arg1_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_6, _lh_null_LH_C_1_6) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d3 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d4 _lh_null_arg1_1_1 =
  (match _lh_null_arg1_1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_1, _lh_null_LH_C_1_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d5 _lh_null_arg1_8 =
  (match _lh_null_arg1_8 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_8, _lh_null_LH_C_1_8) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d6 _lh_null_arg1_1_7 =
  (match _lh_null_arg1_1_7 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_7, _lh_null_LH_C_1_1_7) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d7 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d8 _lh_null_arg1_1_4 =
  (match _lh_null_arg1_1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_4, _lh_null_LH_C_1_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d9 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec optw__d0 =
  63;;
let rec optw__d1 =
  63;;
let rec optw__d2 =
  63;;
let rec reverse_helper__d0 ls_2_4 a_4 =
  (match ls_2_4 with
    | `LH_C(h_3_9, t_3_9) -> 
      ((reverse_helper__d0 t_3_9) (`LH_C(h_3_9, a_4)))
    | `LH_N -> 
      a_4);;
let rec reverse_helper__d1 ls_2_9 a_5 =
  (match ls_2_9 with
    | `LH_C(h_5_3, t_5_3) -> 
      ((reverse_helper__d1 t_5_3) (`LH_C(h_5_3, a_5)))
    | `LH_N -> 
      a_5);;
let rec reverse_helper__d2 ls_1_5 a_2 =
  (match ls_1_5 with
    | `LH_C(h_2_8, t_2_8) -> 
      ((reverse_helper__d2 t_2_8) (`LH_C(h_2_8, a_2)))
    | `LH_N -> 
      a_2);;
let rec single__d0 _lh_single_arg1_6 =
  (match _lh_single_arg1_6 with
    | `LH_C(_lh_single_LH_C_0_6, _lh_single_LH_C_1_6) -> 
      (match _lh_single_LH_C_1_6 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d1 _lh_single_arg1_1 =
  (match _lh_single_arg1_1 with
    | `LH_C(_lh_single_LH_C_0_1, _lh_single_LH_C_1_1) -> 
      (match _lh_single_LH_C_1_1 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d2 _lh_single_arg1_4 =
  (match _lh_single_arg1_4 with
    | `LH_C(_lh_single_LH_C_0_4, _lh_single_LH_C_1_4) -> 
      (match _lh_single_LH_C_1_4 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d3 _lh_single_arg1_0 =
  (match _lh_single_arg1_0 with
    | `LH_C(_lh_single_LH_C_0_0, _lh_single_LH_C_1_0) -> 
      (match _lh_single_LH_C_1_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d4 _lh_single_arg1_5 =
  (match _lh_single_arg1_5 with
    | `LH_C(_lh_single_LH_C_0_5, _lh_single_LH_C_1_5) -> 
      (match _lh_single_LH_C_1_5 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d5 _lh_single_arg1_3 =
  (match _lh_single_arg1_3 with
    | `LH_C(_lh_single_LH_C_0_3, _lh_single_LH_C_1_3) -> 
      (match _lh_single_LH_C_1_3 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d6 _lh_single_arg1_2 =
  (match _lh_single_arg1_2 with
    | `LH_C(_lh_single_LH_C_0_2, _lh_single_LH_C_1_2) -> 
      (match _lh_single_LH_C_1_2 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec snd3__d0 _lh_snd3_arg1_2 =
  (match _lh_snd3_arg1_2 with
    | `LH_P3(_lh_snd3_LH_P3_0_2, _lh_snd3_LH_P3_1_2, _lh_snd3_LH_P3_2_2) -> 
      _lh_snd3_LH_P3_1_2
    | _ -> 
      (failwith "error"));;
let rec snd3__d1 _lh_snd3_arg1_1 =
  (match _lh_snd3_arg1_1 with
    | `LH_P3(_lh_snd3_LH_P3_0_1, _lh_snd3_LH_P3_1_1, _lh_snd3_LH_P3_2_1) -> 
      _lh_snd3_LH_P3_1_1
    | _ -> 
      (failwith "error"));;
let rec snd3__d2 _lh_snd3_arg1_0 =
  (match _lh_snd3_arg1_0 with
    | `LH_P3(_lh_snd3_LH_P3_0_0, _lh_snd3_LH_P3_1_0, _lh_snd3_LH_P3_2_0) -> 
      _lh_snd3_LH_P3_1_0
    | _ -> 
      (failwith "error"));;
let rec tail__d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_4_0, t_4_0) -> 
      t_4_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_6_9, t_6_9) -> 
      t_6_9
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_2_5, t_2_5) -> 
      t_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_4_5, t_4_5) -> 
      t_4_5
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0 n_2 ls_2_0 =
  (if (n_2 > 0) then
    (match ls_2_0 with
      | `LH_C(h_3_3, t_3_3) -> 
        (`LH_C(h_3_3, ((take__d0 (n_2 - 1)) t_3_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_3 ls_3_2 =
  (if (n_3 > 0) then
    (match ls_3_2 with
      | `LH_C(h_5_7, t_5_7) -> 
        (`LH_C(h_5_7, ((take__d1 (n_3 - 1)) t_5_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2 n_0 ls_6 =
  (if (n_0 > 0) then
    (match ls_6 with
      | `LH_C(h_1_5, t_1_5) -> 
        (`LH_C(h_1_5, ((take__d2 (n_0 - 1)) t_1_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d3 n_1 ls_1_3 =
  (if (n_1 > 0) then
    (match ls_1_3 with
      | `LH_C(h_2_6, t_2_6) -> 
        (`LH_C(h_2_6, ((take__d3 (n_1 - 1)) t_2_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec thd3__d0 _lh_thd3_arg1_1 =
  (match _lh_thd3_arg1_1 with
    | `LH_P3(_lh_thd3_LH_P3_0_1, _lh_thd3_LH_P3_1_1, _lh_thd3_LH_P3_2_1) -> 
      _lh_thd3_LH_P3_2_1
    | _ -> 
      (failwith "error"));;
let rec thd3__d1 _lh_thd3_arg1_0 =
  (match _lh_thd3_arg1_0 with
    | `LH_P3(_lh_thd3_LH_P3_0_0, _lh_thd3_LH_P3_1_0, _lh_thd3_LH_P3_2_0) -> 
      _lh_thd3_LH_P3_2_0
    | _ -> 
      (failwith "error"));;
let rec thd3__d2 _lh_thd3_arg1_2 =
  (match _lh_thd3_arg1_2 with
    | `LH_P3(_lh_thd3_LH_P3_0_2, _lh_thd3_LH_P3_1_2, _lh_thd3_LH_P3_2_2) -> 
      _lh_thd3_LH_P3_2_2
    | _ -> 
      (failwith "error"));;
let rec break__d0 _lh_break_arg1_2 _lh_break_arg2_2 =
  (match _lh_break_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_6 f_1_2 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_2 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_1 in
          (fun _lh_dummy_7 -> 
            (lines__d0 _lh_lines_LH_C_1_0)))))
      else
        (let rec _lh_matchIdent_9 = ((break__d0 _lh_break_arg1_2) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_4_4, t_4_4) -> 
      ((mappend__d0 h_4_4) (concat__d0 t_4_4))
    | `LH_N -> 
      (`LH_N))
and cons'__d1 _lh_cons'_arg1_1 _lh_cons'_arg2_0 =
  (match _lh_cons'_arg2_0 with
    | `LH_P2(_lh_cons'_LH_P2_0_1, _lh_cons'_LH_P2_1_1) -> 
      (if (not (null__d2 _lh_cons'_LH_P2_1_1)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_1, _lh_cons'_LH_P2_0_1)), _lh_cons'_LH_P2_1_1))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_1, (`LH_N))), _lh_cons'_LH_P2_0_1)))
    | _ -> 
      (failwith "error"))
and cons'__d2 _lh_cons'_arg1_3 _lh_cons'_arg2_2 =
  (match _lh_cons'_arg2_2 with
    | `LH_P2(_lh_cons'_LH_P2_0_2, _lh_cons'_LH_P2_1_2) -> 
      (if (not (null__d3 _lh_cons'_LH_P2_1_2)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_3, _lh_cons'_LH_P2_0_2)), _lh_cons'_LH_P2_1_2))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_3, (`LH_N))), _lh_cons'_LH_P2_0_2)))
    | _ -> 
      (failwith "error"))
and cost_tl__d0 _lh_cost_tl_arg1_1 =
  (snd3__d0 _lh_cost_tl_arg1_1)
and cost_tl__d1 _lh_cost_tl_arg1_2 =
  (snd3__d1 _lh_cost_tl_arg1_2)
and cost_tl__d2 _lh_cost_tl_arg1_0 =
  (snd3__d2 _lh_cost_tl_arg1_0)
and dropWhile__d0 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_3 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile__d0 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (let rec _lh_words_LH_C_1_0 = _lh_dropWhile_LH_C_1_0 in
          (let rec _lh_words_LH_C_0_0 = _lh_dropWhile_LH_C_0_0 in
            (fun _lh_dummy_4 -> 
              (let rec _lh_matchIdent_7 = ((break__d1 isSpace__d1) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
                (match _lh_matchIdent_7 with
                  | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
                    (`LH_C(_lh_words_LH_P2_0_0, (words__d0 _lh_words_LH_P2_1_0)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and filter__d0 f_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_4_1, t_4_1) -> 
      (if (f_6 h_4_1) then
        (let rec t_4_2 = ((filter__d0 f_6) t_4_1) in
          (let rec h_4_2 = h_4_1 in
            (fun f_7 -> 
              (`LH_C((f_7 h_4_2), ((map__d0 f_7) t_4_2))))))
      else
        ((filter__d0 f_6) t_4_1))
    | `LH_N -> 
      (fun f_8 -> 
        (`LH_N)))
and fmt__d0 _lh_fmt_arg1_0 =
  ((fun _lh_funcomp_x_4 -> 
    ((fun _lh_funcomp_x_5 -> 
      (unparse__d0 ((map__d0 (fun _lh_funcomp_x_6 -> 
        (par3__d0 (concat__d0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) (parse__d0 _lh_funcomp_x_4))) _lh_fmt_arg1_0)
and format__d0 _lh_format_arg1_0 _lh_format_arg2_0 =
  (match _lh_format_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      let rec break_0 = (fun _lh_break_arg1_0 _lh_break_arg2_0 _lh_break_arg3_0 -> 
        (if (_lh_break_arg1_0 = _lh_break_arg2_0) then
          (`LH_C((`LH_N), _lh_break_arg3_0))
        else
          (`LH_C((`LH_C(_lh_break_arg2_0, (head__d1_d6 _lh_break_arg3_0))), (tail__d3 _lh_break_arg3_0)))))
      and start_0 = (fun _lh_start_arg1_0 _lh_start_arg2_0 -> 
        (((break_0 _lh_start_arg1_0) _lh_start_arg2_0) (`LH_C((`LH_N), (`LH_N)))))
      in (((fold1__d1 (break_0 _lh_format_arg1_0)) (start_0 _lh_format_arg1_0)) _lh_format_arg2_0))
and head'__d0 _lh_head'_arg1_1 =
  (match _lh_head'_arg1_1 with
    | `LH_P2(_lh_head'_LH_P2_0_1, _lh_head'_LH_P2_1_1) -> 
      (if (not (null__d4 _lh_head'_LH_P2_0_1)) then
        (head__d5 _lh_head'_LH_P2_0_1)
      else
        (head__d4 _lh_head'_LH_P2_1_1))
    | _ -> 
      (failwith "error"))
and head'__d1 _lh_head'_arg1_0 =
  (match _lh_head'_arg1_0 with
    | `LH_P2(_lh_head'_LH_P2_0_0, _lh_head'_LH_P2_1_0) -> 
      (if (not (null__d5 _lh_head'_LH_P2_0_0)) then
        (head__d7 _lh_head'_LH_P2_0_0)
      else
        (head__d6 _lh_head'_LH_P2_1_0))
    | _ -> 
      (failwith "error"))
and init'__d0 _lh_init'_arg1_1 =
  (match _lh_init'_arg1_1 with
    | `LH_P2(_lh_init'_LH_P2_0_1, _lh_init'_LH_P2_1_1) -> 
      (if (null__d6 _lh_init'_LH_P2_1_1) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single__d0 _lh_init'_LH_P2_1_1) then
          (let rec _lh_matchIdent_2 = ((splitAt__d0 ((length__d1 _lh_init'_LH_P2_0_1) / 2)) _lh_init'_LH_P2_0_1) in
            (_lh_matchIdent_2 99))
        else
          (`LH_P2(_lh_init'_LH_P2_0_1, (tail__d0 _lh_init'_LH_P2_1_1)))))
    | _ -> 
      (failwith "error"))
and init'__d1 _lh_init'_arg1_0 =
  (match _lh_init'_arg1_0 with
    | `LH_P2(_lh_init'_LH_P2_0_0, _lh_init'_LH_P2_1_0) -> 
      (if (null__d7 _lh_init'_LH_P2_1_0) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single__d1 _lh_init'_LH_P2_1_0) then
          (let rec _lh_matchIdent_1 = ((splitAt__d1 ((length__d2 _lh_init'_LH_P2_0_0) / 2)) _lh_init'_LH_P2_0_0) in
            (_lh_matchIdent_1 99))
        else
          (`LH_P2(_lh_init'_LH_P2_0_0, (tail__d1 _lh_init'_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"))
and last'__d0 _lh_last'_arg1_3 =
  (match _lh_last'_arg1_3 with
    | `LH_P2(_lh_last'_LH_P2_0_3, _lh_last'_LH_P2_1_3) -> 
      (if (not (null__d0 _lh_last'_LH_P2_1_3)) then
        (head__d1 _lh_last'_LH_P2_1_3)
      else
        (head__d2 _lh_last'_LH_P2_0_3))
    | _ -> 
      (failwith "error"))
and last'__d1 _lh_last'_arg1_1 =
  (match _lh_last'_arg1_1 with
    | `LH_P2(_lh_last'_LH_P2_0_1, _lh_last'_LH_P2_1_1) -> 
      (if (not (null__d8 _lh_last'_LH_P2_1_1)) then
        (head__d8 _lh_last'_LH_P2_1_1)
      else
        (head__d9 _lh_last'_LH_P2_0_1))
    | _ -> 
      (failwith "error"))
and last'__d2 _lh_last'_arg1_2 =
  (match _lh_last'_arg1_2 with
    | `LH_P2(_lh_last'_LH_P2_0_2, _lh_last'_LH_P2_1_2) -> 
      (if (not (null__d9 _lh_last'_LH_P2_1_2)) then
        (head__d1_d0 _lh_last'_LH_P2_1_2)
      else
        (head__d1_d1 _lh_last'_LH_P2_0_2))
    | _ -> 
      (failwith "error"))
and last'__d3 _lh_last'_arg1_0 =
  (match _lh_last'_arg1_0 with
    | `LH_P2(_lh_last'_LH_P2_0_0, _lh_last'_LH_P2_1_0) -> 
      (if (not (null__d1_d0 _lh_last'_LH_P2_1_0)) then
        (head__d1_d2 _lh_last'_LH_P2_1_0)
      else
        (head__d1_d3 _lh_last'_LH_P2_0_0))
    | _ -> 
      (failwith "error"))
and last'__d4 _lh_last'_arg1_4 =
  (match _lh_last'_arg1_4 with
    | `LH_P2(_lh_last'_LH_P2_0_4, _lh_last'_LH_P2_1_4) -> 
      (if (not (null__d1_d1 _lh_last'_LH_P2_1_4)) then
        (head__d1_d4 _lh_last'_LH_P2_1_4)
      else
        (head__d1_d5 _lh_last'_LH_P2_0_4))
    | _ -> 
      (failwith "error"))
and len_tl__d0 _lh_len_tl_arg1_0 =
  (thd3__d0 _lh_len_tl_arg1_0)
and len_tl__d1 _lh_len_tl_arg1_1 =
  (thd3__d1 _lh_len_tl_arg1_1)
and lines__d0 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_5 = ((break__d0 (fun x_3 -> 
    (x_3 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_5 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (let rec t_6_0 = (let rec _lh_matchIdent_6 = _lh_lines_LH_P2_1_0 in
          (_lh_matchIdent_6 99)) in
          (let rec h_6_0 = _lh_lines_LH_P2_0_0 in
            (fun f_9 -> 
              (`LH_C((f_9 h_6_0), ((map__d3 f_9) t_6_0))))))
      | _ -> 
        (failwith "error")))
and map__d4 f_2 ls_8 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_8 with
    | `LH_C(h_1_9, t_1_9) -> 
      (let rec t_2_0 = ((map__d4 f_2) t_1_9) in
        (let rec h_2_0 = (f_2 h_1_9) in
          (let rec t_2_1 = ((map__d5 _lh_popOutId_0_0) t_2_0) in
            (let rec h_2_1 = (_lh_popOutId_0_0 h_2_0) in
              ((mappend__d1 h_2_1) (concat__d1 t_2_1))))))
    | `LH_N -> 
      (`LH_N))
and mappend__d4 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (let rec t_4 = ((mappend__d4 t_3) ys_1) in
        (let rec h_4 = h_3 in
          (fun ys_2 -> 
            (`LH_C(h_4, ((mappend__d3 t_4) ys_2))))))
    | `LH_N -> 
      ys_1)
and mappend__d5 xs_2 ys_3 =
  (match xs_2 with
    | `LH_C(h_5, t_5) -> 
      (let rec t_6 = ((mappend__d5 t_5) ys_3) in
        (let rec h_6 = h_5 in
          (fun ys_4 -> 
            (let rec t_7 = ((mappend__d2 t_6) ys_4) in
              (let rec h_7 = h_6 in
                (fun ys_5 -> 
                  (`LH_C(h_7, ((mappend__d1 t_7) ys_5)))))))))
    | `LH_N -> 
      ys_3)
and mappend__d6 xs_2_4 ys_3_5 =
  (match xs_2_4 with
    | `LH_C(h_6_5, t_6_5) -> 
      (let rec t_6_6 = ((mappend__d6 t_6_5) ys_3_5) in
        (let rec h_6_6 = h_6_5 in
          (fun ys_3_6 -> 
            (let rec t_6_7 = ((mappend__d2 t_6_6) ys_3_6) in
              (let rec h_6_7 = h_6_6 in
                (fun ys_3_7 -> 
                  (`LH_C(h_6_7, ((mappend__d1 t_6_7) ys_3_7)))))))))
    | `LH_N -> 
      ys_3_5)
and nil'__d0 _lh_cons'_arg1_0 =
  (let rec _lh_cons'_LH_P2_1_0 = (`LH_N) in
    (let rec _lh_cons'_LH_P2_0_0 = (`LH_N) in
      (if (not (null__d1 _lh_cons'_LH_P2_1_0)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_0, _lh_cons'_LH_P2_0_0)), _lh_cons'_LH_P2_1_0))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_0, (`LH_N))), _lh_cons'_LH_P2_0_0)))))
and par3__d0 _lh_par3_arg1_0 =
  (let rec zs_0 = (((scan1__d0 stepr__d0) startr__d0) ((map__d1 length__d0) _lh_par3_arg1_0)) in
    ((tile__d0 _lh_par3_arg1_0) (`LH_P2(((map__d2 (fun _lh_funcomp_x_0 -> 
      ((fun _lh_funcomp_x_1 -> 
        (len_tl__d0 (last'__d0 _lh_funcomp_x_1))) (fst3__d0 _lh_funcomp_x_0)))) zs_0), (thd3__d2 (head__d0 zs_0))))))
and paras__d0 _lh_paras_arg1_0 =
  ((fun _lh_funcomp_x_7 -> 
    ((filter__d0 (fun x_2 -> 
      ((`LH_N) <> x_2))) ((format__d0 (`LH_N)) _lh_funcomp_x_7))) _lh_paras_arg1_0)
and parse__d0 _lh_parse_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      (paras__d0 ((map__d3 words__d0) _lh_funcomp_x_3))) (lines__d0 _lh_funcomp_x_2))) _lh_parse_arg1_0)
and reverse__d0 ls_1_7 =
  ((reverse_helper__d0 ls_1_7) (`LH_N))
and reverse__d1 ls_1_9 =
  ((reverse_helper__d1 ls_1_9) (`LH_N))
and reverse__d2 ls_7 =
  ((reverse_helper__d2 ls_7) (`LH_N))
and scan1__d0 _lh_scan1_arg1_0 _lh_scan1_arg2_0 =
  ((fold1__d0 (fun a_0 s_0 -> 
    (`LH_C(((_lh_scan1_arg1_0 a_0) (head__d3 s_0)), s_0)))) (fun a_1 -> 
    (`LH_C((_lh_scan1_arg2_0 a_1), (`LH_N)))))
and single'__d0 _lh_single'_arg1_1 =
  (match _lh_single'_arg1_1 with
    | `LH_P2(_lh_single'_LH_P2_0_1, _lh_single'_LH_P2_1_1) -> 
      (((null__d1_d2 _lh_single'_LH_P2_0_1) && (single__d2 _lh_single'_LH_P2_1_1)) || ((single__d3 _lh_single'_LH_P2_0_1) && (null__d1_d3 _lh_single'_LH_P2_1_1)))
    | _ -> 
      (failwith "error"))
and single'__d1 _lh_single'_arg1_0 =
  (match _lh_single'_arg1_0 with
    | `LH_P2(_lh_single'_LH_P2_0_0, _lh_single'_LH_P2_1_0) -> 
      (((null__d1_d4 _lh_single'_LH_P2_0_0) && (single__d4 _lh_single'_LH_P2_1_0)) || ((single__d5 _lh_single'_LH_P2_0_0) && (null__d1_d5 _lh_single'_LH_P2_1_0)))
    | _ -> 
      (failwith "error"))
and splitAt__d0 _lh_splitAt_arg1_3 _lh_splitAt_arg2_3 _lh_dummy_8 =
  (let rec _lh_init'_LH_P2_1_3 = ((drop__d0 _lh_splitAt_arg1_3) _lh_splitAt_arg2_3) in
    (let rec _lh_init'_LH_P2_0_3 = ((take__d0 _lh_splitAt_arg1_3) _lh_splitAt_arg2_3) in
      (`LH_P2(_lh_init'_LH_P2_0_3, (reverse__d0 _lh_init'_LH_P2_1_3)))))
and splitAt__d1 _lh_splitAt_arg1_2 _lh_splitAt_arg2_2 _lh_dummy_5 =
  (let rec _lh_init'_LH_P2_1_2 = ((drop__d1 _lh_splitAt_arg1_2) _lh_splitAt_arg2_2) in
    (let rec _lh_init'_LH_P2_0_2 = ((take__d1 _lh_splitAt_arg1_2) _lh_splitAt_arg2_2) in
      (`LH_P2(_lh_init'_LH_P2_0_2, (reverse__d1 _lh_init'_LH_P2_1_2)))))
and splitAt__d2 _lh_splitAt_arg1_1 _lh_splitAt_arg2_1 _lh_dummy_2 =
  (let rec _lh_tail'_LH_P2_1_0 = ((drop__d2 _lh_splitAt_arg1_1) _lh_splitAt_arg2_1) in
    (let rec _lh_tail'_LH_P2_0_0 = ((take__d2 _lh_splitAt_arg1_1) _lh_splitAt_arg2_1) in
      (`LH_P2((reverse__d2 _lh_tail'_LH_P2_1_0), _lh_tail'_LH_P2_0_0))))
and splitAt__d3 _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 _lh_tile_LH_C_0_0 _lh_tile_LH_C_1_0 l_0 =
  (let rec _lh_tile_LH_P2_1_0 = ((drop__d4 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0) in
    (let rec _lh_tile_LH_P2_0_0 = ((take__d3 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0) in
      (`LH_C(_lh_tile_LH_P2_0_0, ((tile__d0 _lh_tile_LH_P2_1_0) (`LH_P2(((drop__d3 l_0) (`LH_C(_lh_tile_LH_C_0_0, _lh_tile_LH_C_1_0))), _lh_tile_LH_C_0_0)))))))
and startr__d0 _lh_startr_arg1_0 =
  (if (_lh_startr_arg1_0 <= maxw__d0) then
    (`LH_P3(((cons'__d0 (`LH_P3(0, 0, 0))) nil'__d0), _lh_startr_arg1_0, 1))
  else
    ((failwith "error") (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('r', (`LH_C('t', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))
and stepr__d0 _lh_stepr_arg1_0 _lh_stepr_arg2_0 =
  (match _lh_stepr_arg2_0 with
    | `LH_P3(_lh_stepr_LH_P3_0_0, _lh_stepr_LH_P3_1_0, _lh_stepr_LH_P3_2_0) -> 
      (let rec tot_width_0 = ((_lh_stepr_arg1_0 + 1) + _lh_stepr_LH_P3_1_0) in
        (let rec tot_len_0 = (1 + _lh_stepr_LH_P3_2_0) in
          (let rec single_0 = (fun p_0 -> 
            ((len_tl__d1 p_0) = 0)) in
            (let rec width_hd_0 = (fun p_1 -> 
              (if (single_0 p_1) then
                tot_width_0
              else
                ((tot_width_0 - (width_tl__d0 p_1)) - 1))) in
              (let rec cost_0 = (fun p_2 -> 
                (if (single_0 p_2) then
                  0
                else
                  ((cost_tl__d0 p_2) + (let rec a_3 = (optw__d0 - (width_hd_0 p_2)) in
                    (a_3 * a_3))))) in
                (let rec old_width_hd_0 = (fun p_3 -> 
                  (if (single_0 p_3) then
                    _lh_stepr_LH_P3_1_0
                  else
                    ((_lh_stepr_LH_P3_1_0 - (width_tl__d1 p_3)) - 1))) in
                  (let rec new_0 = (fun p_4 -> 
                    (if (single_0 p_4) then
                      (`LH_P3(_lh_stepr_LH_P3_1_0, 0, _lh_stepr_LH_P3_2_0))
                    else
                      (`LH_P3(_lh_stepr_LH_P3_1_0, ((cost_tl__d1 p_4) + (let rec x_1 = (optw__d1 - (old_width_hd_0 p_4)) in
                        (x_1 * x_1))), _lh_stepr_LH_P3_2_0)))) in
                    (let rec trim_0 = (fun ps_pq_0 -> 
                      (if (null'__d0 ps_pq_0) then
                        ps_pq_0
                      else
                        (if (single'__d0 ps_pq_0) then
                          ps_pq_0
                        else
                          (let rec ps_p_0 = (init'__d0 ps_pq_0) in
                            (let rec q_0 = (last'__d1 ps_pq_0) in
                              (let rec p_5 = (last'__d2 ps_p_0) in
                                (if ((cost_0 p_5) <= (cost_0 q_0)) then
                                  (trim_0 ps_p_0)
                                else
                                  ps_pq_0))))))) in
                      (let rec drop_nofit_0 = (fun ps_p_1 -> 
                        (if (null'__d1 ps_p_1) then
                          ps_p_1
                        else
                          (if ((width_hd_0 (last'__d3 ps_p_1)) > maxw__d1) then
                            (drop_nofit_0 (init'__d1 ps_p_1))
                          else
                            ps_p_1))) in
                        (let rec bf_0 = (fun p_6 q_1 -> 
                          (let rec wqh_0 = (width_hd_0 q_1) in
                            (let rec rqh_0 = ((maxw__d2 - wqh_0) + 1) in
                              (if ((single_0 q_1) && ((cost_tl__d2 p_6) = 0)) then
                                ((min__d0 (optw__d2 - (width_hd_0 p_6))) rqh_0)
                              else
                                (if (single_0 q_1) then
                                  rqh_0
                                else
                                  ((min__d1 ((ceildiv__d0 ((cost_0 p_6) - (cost_0 q_1))) (2 * (wqh_0 - (width_hd_0 p_6))))) rqh_0)))))) in
                          (let rec myAdd_0 = (fun p_7 qr_rs_0 -> 
                            (if ((single'__d1 qr_rs_0) || (null'__d2 qr_rs_0)) then
                              ((cons'__d1 p_7) qr_rs_0)
                            else
                              (let rec q_2 = (head'__d0 qr_rs_0) in
                                (let rec r_rs_0 = (tail'__d0 qr_rs_0) in
                                  (let rec r_0 = (head'__d1 r_rs_0) in
                                    (if (((bf_0 p_7) q_2) <= ((bf_0 q_2) r_0)) then
                                      ((myAdd_0 p_7) r_rs_0)
                                    else
                                      ((cons'__d2 p_7) qr_rs_0))))))) in
                            (`LH_P3((trim_0 (drop_nofit_0 ((myAdd_0 (new_0 (last'__d4 _lh_stepr_LH_P3_0_0))) _lh_stepr_LH_P3_0_0))), tot_width_0, tot_len_0)))))))))))))
    | _ -> 
      (failwith "error"))
and tail'__d0 _lh_tail'_arg1_0 =
  (match _lh_tail'_arg1_0 with
    | `LH_P2(_lh_tail'_LH_P2_0_1, _lh_tail'_LH_P2_1_1) -> 
      (if (null__d1_d6 _lh_tail'_LH_P2_0_1) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single__d6 _lh_tail'_LH_P2_0_1) then
          (let rec _lh_matchIdent_8 = ((splitAt__d2 ((length__d3 _lh_tail'_LH_P2_1_1) / 2)) _lh_tail'_LH_P2_1_1) in
            (_lh_matchIdent_8 99))
        else
          (`LH_P2((tail__d2 _lh_tail'_LH_P2_0_1), _lh_tail'_LH_P2_1_1))))
    | _ -> 
      (failwith "error"))
and testPara_nofib__d0 _lh_testPara_nofib_arg1_0 =
  (if (null__d1_d7 (test__d0 0)) then
    (`LH_N)
  else
    (fmt__d0 (test__d1 0)))
and test__d0 _lh_test_arg1_1 =
  ((mappend__d7 ((mappend__d8 ((mappend__d9 ((mappend__d1_d0 ((mappend__d1_d1 ((mappend__d1_d2 ((mappend__d1_d3 ((mappend__d1_d4 ((mappend__d1_d5 (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C('s', (`LH_C('.', (`LH_C(' ', (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('.', (`LH_C(' ', (`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('m', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('g', (`LH_C('a', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('w', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('i', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C('|', (`LH_C(' ', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))
and test__d1 _lh_test_arg1_0 =
  ((mappend__d1_d6 ((mappend__d1_d7 ((mappend__d1_d8 ((mappend__d1_d9 ((mappend__d2_d0 ((mappend__d2_d1 ((mappend__d2_d2 ((mappend__d2_d3 ((mappend__d2_d4 (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C('s', (`LH_C('.', (`LH_C(' ', (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('.', (`LH_C(' ', (`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('m', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('g', (`LH_C('a', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('w', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('i', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C('|', (`LH_C(' ', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))
and tile__d0 _lh_tile_arg1_0 _lh_tile_arg2_0 =
  (match _lh_tile_arg2_0 with
    | `LH_P2(_lh_tile_LH_P2_0_1, _lh_tile_LH_P2_1_1) -> 
      (match _lh_tile_LH_P2_0_1 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_tile_LH_C_0_1, _lh_tile_LH_C_1_1) -> 
          (let rec l_1 = (_lh_tile_LH_P2_1_1 - _lh_tile_LH_C_0_1) in
            (let rec _lh_matchIdent_4 = ((splitAt__d3 l_1) _lh_tile_arg1_0) in
              (((_lh_matchIdent_4 _lh_tile_LH_C_0_1) _lh_tile_LH_C_1_1) l_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unformat__d0 _lh_unformat_arg1_0 =
  ((fold1__d2 (fun xs_7 ys_1_0 -> 
    ((mappend__d3 ((mappend__d4 xs_7) (let rec t_1_3 = (fun ys_1_1 -> 
      ys_1_1) in
      (let rec h_1_3 = _lh_unformat_arg1_0 in
        (fun ys_1_2 -> 
          (`LH_C(h_1_3, ((mappend__d3 t_1_3) ys_1_2)))))))) ys_1_0))) (fun x_0 -> 
    x_0))
and unlines__d0 _lh_unlines_arg1_0 =
  (concat__d1 ((map__d5 (fun l_2 -> 
    ((mappend__d2 l_2) (let rec t_6_4 = (fun ys_3_3 -> 
      ys_3_3) in
      (let rec h_6_4 = '|' in
        (fun ys_3_4 -> 
          (`LH_C(h_6_4, ((mappend__d1 t_6_4) ys_3_4))))))))) _lh_unlines_arg1_0))
and unparas__d0 _lh_unparas_arg1_0 =
  ((unformat__d0 (`LH_N)) _lh_unparas_arg1_0)
and unparse__d0 _lh_unparse_arg1_0 =
  ((fun _lh_funcomp_x_8 -> 
    ((fun _lh_funcomp_x_9 -> 
      (unlines__d0 ((map__d4 unwords__d0) _lh_funcomp_x_9))) (unparas__d0 _lh_funcomp_x_8))) _lh_unparse_arg1_0)
and unwords__d0 _lh_unwords_arg1_0 =
  (match _lh_unwords_arg1_0 with
    | `LH_N -> 
      (fun ys_2_3 -> 
        ys_2_3)
    | `LH_C(_lh_unwords_LH_C_0_0, _lh_unwords_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 -> 
        (match _lh_go_arg1_0 with
          | `LH_N -> 
            (fun ys_2_4 -> 
              ys_2_4)
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            (let rec t_4_8 = ((mappend__d5 _lh_go_LH_C_0_0) (go_0 _lh_go_LH_C_1_0)) in
              (let rec h_4_8 = ' ' in
                (fun ys_2_5 -> 
                  (let rec t_4_9 = ((mappend__d2 t_4_8) ys_2_5) in
                    (let rec h_4_9 = h_4_8 in
                      (fun ys_2_6 -> 
                        (`LH_C(h_4_9, ((mappend__d1 t_4_9) ys_2_6)))))))))
          | _ -> 
            (failwith "error"))) in
        ((mappend__d6 _lh_unwords_LH_C_0_0) (go_0 _lh_unwords_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and width_tl__d0 _lh_width_tl_arg1_0 =
  (fst3__d1 _lh_width_tl_arg1_0)
and width_tl__d1 _lh_width_tl_arg1_1 =
  (fst3__d2 _lh_width_tl_arg1_1)
and words__d0 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_0 = ((dropWhile__d0 isSpace__d0) _lh_words_arg1_0) in
    (_lh_matchIdent_0 99));;
end;;

