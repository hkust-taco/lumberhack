

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec andL__d0 _lh_andL_arg1_0 _lh_andL_arg2_0 =
  (match _lh_andL_arg1_0 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec andL__d1 _lh_andL_arg1_5 _lh_andL_arg2_5 =
  (match _lh_andL_arg1_5 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_5
    | _ -> 
      (failwith "error"));;
let rec andL__d2 _lh_andL_arg1_4 _lh_andL_arg2_4 =
  (match _lh_andL_arg1_4 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_4
    | _ -> 
      (failwith "error"));;
let rec andL__d3 _lh_andL_arg1_2 _lh_andL_arg2_2 =
  (match _lh_andL_arg1_2 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec andL__d4 _lh_andL_arg1_1 _lh_andL_arg2_1 =
  (match _lh_andL_arg1_1 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec andL__d5 _lh_andL_arg1_7 _lh_andL_arg2_7 =
  (match _lh_andL_arg1_7 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_7
    | _ -> 
      (failwith "error"));;
let rec andL__d6 _lh_andL_arg1_6 _lh_andL_arg2_6 =
  (match _lh_andL_arg1_6 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_6
    | _ -> 
      (failwith "error"));;
let rec andL__d7 _lh_andL_arg1_3 _lh_andL_arg2_3 =
  (match _lh_andL_arg1_3 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_3
    | _ -> 
      (failwith "error"));;
let rec cAppend__d0 _lh_cAppend_arg1_8 _lh_cAppend_arg2_8 =
  (`CAppend(_lh_cAppend_arg1_8, _lh_cAppend_arg2_8));;
let rec cAppend__d1 _lh_cAppend_arg1_4 _lh_cAppend_arg2_4 =
  (`CAppend(_lh_cAppend_arg1_4, _lh_cAppend_arg2_4));;
let rec cAppend__d2 _lh_cAppend_arg1_0 _lh_cAppend_arg2_0 =
  (`CAppend(_lh_cAppend_arg1_0, _lh_cAppend_arg2_0));;
let rec cAppend__d3 _lh_cAppend_arg1_7 _lh_cAppend_arg2_7 =
  (`CAppend(_lh_cAppend_arg1_7, _lh_cAppend_arg2_7));;
let rec cAppend__d4 _lh_cAppend_arg1_3 _lh_cAppend_arg2_3 =
  (`CAppend(_lh_cAppend_arg1_3, _lh_cAppend_arg2_3));;
let rec cAppend__d5 _lh_cAppend_arg1_2 _lh_cAppend_arg2_2 =
  (`CAppend(_lh_cAppend_arg1_2, _lh_cAppend_arg2_2));;
let rec cAppend__d6 _lh_cAppend_arg1_1 _lh_cAppend_arg2_1 =
  (`CAppend(_lh_cAppend_arg1_1, _lh_cAppend_arg2_1));;
let rec cAppend__d7 _lh_cAppend_arg1_6 _lh_cAppend_arg2_6 =
  (`CAppend(_lh_cAppend_arg1_6, _lh_cAppend_arg2_6));;
let rec cAppend__d8 _lh_cAppend_arg1_5 _lh_cAppend_arg2_5 =
  (`CAppend(_lh_cAppend_arg1_5, _lh_cAppend_arg2_5));;
let rec cCh__d0 _lh_cCh_arg1_0 =
  (`CCh(_lh_cCh_arg1_0));;
let rec cCh__d1 _lh_cCh_arg1_1 =
  (`CCh(_lh_cCh_arg1_1));;
let rec cCh__d2 _lh_cCh_arg1_2 =
  (`CCh(_lh_cCh_arg1_2));;
let rec cIndent__d0 _lh_cIndent_arg1_1 _lh_cIndent_arg2_1 =
  (`CIndent(_lh_cIndent_arg1_1, _lh_cIndent_arg2_1));;
let rec cIndent__d1 _lh_cIndent_arg1_2 _lh_cIndent_arg2_2 =
  (`CIndent(_lh_cIndent_arg1_2, _lh_cIndent_arg2_2));;
let rec cIndent__d2 _lh_cIndent_arg1_0 _lh_cIndent_arg2_0 =
  (`CIndent(_lh_cIndent_arg1_0, _lh_cIndent_arg2_0));;
let rec cIndent__d3 _lh_cIndent_arg1_3 _lh_cIndent_arg2_3 =
  (`CIndent(_lh_cIndent_arg1_3, _lh_cIndent_arg2_3));;
let rec cNL__d0 =
  (`CNewline);;
let rec cNL__d1 =
  (`CNewline);;
let rec cNil__d0 =
  (`CNil);;
let rec cNil__d1 =
  (`CNil);;
let rec cNil__d2 =
  (`CNil);;
let rec cNil__d3 =
  (`CNil);;
let rec cNil__d4 =
  (`CNil);;
let rec cStr__d0 _lh_cStr_arg1_1 =
  (`CStr(_lh_cStr_arg1_1));;
let rec cStr__d1 _lh_cStr_arg1_0 =
  (`CStr(_lh_cStr_arg1_0));;
let rec cStr__d2 _lh_cStr_arg1_2 =
  (`CStr(_lh_cStr_arg1_2));;
let rec cStr__d3 _lh_cStr_arg1_3 =
  (`CStr(_lh_cStr_arg1_3));;
let rec cStr__d4 _lh_cStr_arg1_4 =
  (`CStr(_lh_cStr_arg1_4));;
let rec copy__d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy__d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec foldr1__d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (match _lh_foldr1_LH_C_1_1 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_1
        | _ -> 
          ((_lh_foldr1_arg1_1 _lh_foldr1_LH_C_0_1) ((foldr1__d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec foldr1__d1 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1__d1 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec foldr1__d2 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (match _lh_foldr1_LH_C_1_2 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_2
        | _ -> 
          ((_lh_foldr1_arg1_2 _lh_foldr1_LH_C_0_2) ((foldr1__d2 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_9 =
  (match ls_9 with
    | `LH_C(h_2_3, t_2_3) -> 
      (1 + (length__d0 t_2_3))
    | `LH_N -> 
      0);;
let rec length__d1 ls_7 =
  (match ls_7 with
    | `LH_C(h_2_1, t_2_1) -> 
      (1 + (length__d1 t_2_1))
    | `LH_N -> 
      0);;
let rec length__d2 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d2 t_0))
    | `LH_N -> 
      0);;
let rec length__d3 ls_6 =
  (match ls_6 with
    | `LH_C(h_2_0, t_2_0) -> 
      (1 + (length__d3 t_2_0))
    | `LH_N -> 
      0);;
let rec length__d4 ls_8 =
  (match ls_8 with
    | `LH_C(h_2_2, t_2_2) -> 
      (1 + (length__d4 t_2_2))
    | `LH_N -> 
      0);;
let rec mappend__d0 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec orL__d0 _lh_orL_arg1_1 _lh_orL_arg2_1 =
  (match _lh_orL_arg1_1 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec orL__d1 _lh_orL_arg1_2 _lh_orL_arg2_2 =
  (match _lh_orL_arg1_2 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec orL__d2 _lh_orL_arg1_0 _lh_orL_arg2_0 =
  (match _lh_orL_arg1_0 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec ppHang__d0 _lh_ppHang_arg1_0 _lh_ppHang_arg2_0 _lh_ppHang_arg3_0 _lh_ppHang_arg4_0 _lh_ppHang_arg5_0 =
  (let rec _lh_matchIdent_0 = ((_lh_ppHang_arg1_0 _lh_ppHang_arg4_0) false) in
    ((((_lh_matchIdent_0 _lh_ppHang_arg2_0) _lh_ppHang_arg3_0) _lh_ppHang_arg4_0) _lh_ppHang_arg5_0));;
let rec cShow__d0 _lh_cShow_arg1_0 =
  ((((flatten__d0 0) true) _lh_cShow_arg1_0) (`LH_N))
and flattenS__d0 _lh_flattenS_arg1_3 _lh_flattenS_arg2_3 =
  (match _lh_flattenS_arg2_3 with
    | `LH_N -> 
      (fun ys_1_0 -> 
        ys_1_0)
    | `LH_C(_lh_flattenS_LH_C_0_3, _lh_flattenS_LH_C_1_3) -> 
      (match _lh_flattenS_LH_C_0_3 with
        | `LH_P2(_lh_flattenS_LH_P2_0_3, _lh_flattenS_LH_P2_1_3) -> 
          ((((flatten__d0 _lh_flattenS_LH_P2_0_3) _lh_flattenS_arg1_3) _lh_flattenS_LH_P2_1_3) _lh_flattenS_LH_C_1_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS__d1 _lh_flattenS_arg1_5 _lh_flattenS_arg2_5 =
  (match _lh_flattenS_arg2_5 with
    | `LH_N -> 
      (fun ys_2_5 -> 
        ys_2_5)
    | `LH_C(_lh_flattenS_LH_C_0_5, _lh_flattenS_LH_C_1_5) -> 
      (match _lh_flattenS_LH_C_0_5 with
        | `LH_P2(_lh_flattenS_LH_P2_0_5, _lh_flattenS_LH_P2_1_5) -> 
          ((((flatten__d0 _lh_flattenS_LH_P2_0_5) _lh_flattenS_arg1_5) _lh_flattenS_LH_P2_1_5) _lh_flattenS_LH_C_1_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS__d2 _lh_flattenS_arg1_2 _lh_flattenS_arg2_2 =
  (match _lh_flattenS_arg2_2 with
    | `LH_N -> 
      (fun ys_7 -> 
        ys_7)
    | `LH_C(_lh_flattenS_LH_C_0_2, _lh_flattenS_LH_C_1_2) -> 
      (match _lh_flattenS_LH_C_0_2 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2, _lh_flattenS_LH_P2_1_2) -> 
          ((((flatten__d0 _lh_flattenS_LH_P2_0_2) _lh_flattenS_arg1_2) _lh_flattenS_LH_P2_1_2) _lh_flattenS_LH_C_1_2)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS__d3 _lh_flattenS_arg1_4 _lh_flattenS_arg2_4 =
  (match _lh_flattenS_arg2_4 with
    | `LH_N -> 
      (fun ys_2_4 -> 
        ys_2_4)
    | `LH_C(_lh_flattenS_LH_C_0_4, _lh_flattenS_LH_C_1_4) -> 
      (match _lh_flattenS_LH_C_0_4 with
        | `LH_P2(_lh_flattenS_LH_P2_0_4, _lh_flattenS_LH_P2_1_4) -> 
          ((((flatten__d0 _lh_flattenS_LH_P2_0_4) _lh_flattenS_arg1_4) _lh_flattenS_LH_P2_1_4) _lh_flattenS_LH_C_1_4)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS__d4 _lh_flattenS_arg1_1 _lh_flattenS_arg2_1 =
  (match _lh_flattenS_arg2_1 with
    | `LH_N -> 
      (fun ys_4 -> 
        ys_4)
    | `LH_C(_lh_flattenS_LH_C_0_1, _lh_flattenS_LH_C_1_1) -> 
      (match _lh_flattenS_LH_C_0_1 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1, _lh_flattenS_LH_P2_1_1) -> 
          ((((flatten__d0 _lh_flattenS_LH_P2_0_1) _lh_flattenS_arg1_1) _lh_flattenS_LH_P2_1_1) _lh_flattenS_LH_C_1_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS__d5 _lh_flattenS_arg1_0 _lh_flattenS_arg2_0 =
  (match _lh_flattenS_arg2_0 with
    | `LH_N -> 
      (fun ys_2 -> 
        ys_2)
    | `LH_C(_lh_flattenS_LH_C_0_0, _lh_flattenS_LH_C_1_0) -> 
      (match _lh_flattenS_LH_C_0_0 with
        | `LH_P2(_lh_flattenS_LH_P2_0_0, _lh_flattenS_LH_P2_1_0) -> 
          ((((flatten__d0 _lh_flattenS_LH_P2_0_0) _lh_flattenS_arg1_0) _lh_flattenS_LH_P2_1_0) _lh_flattenS_LH_C_1_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flatten__d0 _lh_flatten_arg1_0 _lh_flatten_arg2_0 _lh_flatten_arg3_0 _lh_flatten_arg4_0 =
  (match _lh_flatten_arg3_0 with
    | `CNil -> 
      ((flattenS__d4 _lh_flatten_arg2_0) _lh_flatten_arg4_0)
    | `CAppend(_lh_flatten_CAppend_0_0, _lh_flatten_CAppend_1_0) -> 
      ((((flatten__d0 _lh_flatten_arg1_0) _lh_flatten_arg2_0) _lh_flatten_CAppend_0_0) (`LH_C((`LH_P2(_lh_flatten_arg1_0, _lh_flatten_CAppend_1_0)), _lh_flatten_arg4_0)))
    | `CIndent(_lh_flatten_CIndent_0_0, _lh_flatten_CIndent_1_0) -> 
      ((((flatten__d0 (_lh_flatten_CIndent_0_0 + _lh_flatten_arg1_0)) _lh_flatten_arg2_0) _lh_flatten_CIndent_1_0) _lh_flatten_arg4_0)
    | `CNewline -> 
      (let rec t_7 = ((flattenS__d5 true) _lh_flatten_arg4_0) in
        (let rec h_7 = '|' in
          (fun ys_1_1 -> 
            (`LH_C(h_7, ((mappend__d0 t_7) ys_1_1))))))
    | _ -> 
      (match _lh_flatten_arg2_0 with
        | false -> 
          (match _lh_flatten_arg3_0 with
            | `CStr(_lh_flatten_CStr_0_0) -> 
              ((mappend__d2 _lh_flatten_CStr_0_0) ((flattenS__d3 false) _lh_flatten_arg4_0))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | false -> 
                  (match _lh_flatten_arg3_0 with
                    | `CCh(_lh_flatten_CCh_0_0) -> 
                      (let rec t_8 = ((flattenS__d2 false) _lh_flatten_arg4_0) in
                        (let rec h_8 = _lh_flatten_CCh_0_0 in
                          (fun ys_1_2 -> 
                            (`LH_C(h_8, ((mappend__d0 t_8) ys_1_2))))))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CStr(_lh_flatten_CStr_0_1) -> 
                              ((mkIndent__d1 _lh_flatten_arg1_0) ((mappend__d1 _lh_flatten_CStr_0_1) ((flattenS__d1 false) _lh_flatten_arg4_0)))
                            | _ -> 
                              (match _lh_flatten_arg2_0 with
                                | true -> 
                                  (match _lh_flatten_arg3_0 with
                                    | `CCh(_lh_flatten_CCh_0_1) -> 
                                      ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_9 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                                        (let rec h_9 = _lh_flatten_CCh_0_1 in
                                          (fun ys_1_3 -> 
                                            (`LH_C(h_9, ((mappend__d0 t_9) ys_1_3)))))))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error")))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_2) -> 
                                  ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_1_0 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                                    (let rec h_1_0 = _lh_flatten_CCh_0_2 in
                                      (fun ys_1_4 -> 
                                        (`LH_C(h_1_0, ((mappend__d0 t_1_0) ys_1_4)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_2) -> 
                          ((mkIndent__d1 _lh_flatten_arg1_0) ((mappend__d1 _lh_flatten_CStr_0_2) ((flattenS__d1 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_3) -> 
                                  ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_1_1 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                                    (let rec h_1_1 = _lh_flatten_CCh_0_3 in
                                      (fun ys_1_5 -> 
                                        (`LH_C(h_1_1, ((mappend__d0 t_1_1) ys_1_5)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_4) -> 
                              ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_1_2 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                                (let rec h_1_2 = _lh_flatten_CCh_0_4 in
                                  (fun ys_1_6 -> 
                                    (`LH_C(h_1_2, ((mappend__d0 t_1_2) ys_1_6)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))))
        | _ -> 
          (match _lh_flatten_arg2_0 with
            | false -> 
              (match _lh_flatten_arg3_0 with
                | `CCh(_lh_flatten_CCh_0_5) -> 
                  (let rec t_1_3 = ((flattenS__d2 false) _lh_flatten_arg4_0) in
                    (let rec h_1_3 = _lh_flatten_CCh_0_5 in
                      (fun ys_1_7 -> 
                        (`LH_C(h_1_3, ((mappend__d0 t_1_3) ys_1_7))))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_3) -> 
                          ((mkIndent__d1 _lh_flatten_arg1_0) ((mappend__d1 _lh_flatten_CStr_0_3) ((flattenS__d1 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_6) -> 
                                  ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_1_4 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                                    (let rec h_1_4 = _lh_flatten_CCh_0_6 in
                                      (fun ys_1_8 -> 
                                        (`LH_C(h_1_4, ((mappend__d0 t_1_4) ys_1_8)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_7) -> 
                              ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_1_5 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                                (let rec h_1_5 = _lh_flatten_CCh_0_7 in
                                  (fun ys_1_9 -> 
                                    (`LH_C(h_1_5, ((mappend__d0 t_1_5) ys_1_9)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | true -> 
                  (match _lh_flatten_arg3_0 with
                    | `CStr(_lh_flatten_CStr_0_4) -> 
                      ((mkIndent__d1 _lh_flatten_arg1_0) ((mappend__d1 _lh_flatten_CStr_0_4) ((flattenS__d1 false) _lh_flatten_arg4_0)))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_8) -> 
                              ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_1_6 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                                (let rec h_1_6 = _lh_flatten_CCh_0_8 in
                                  (fun ys_2_0 -> 
                                    (`LH_C(h_1_6, ((mappend__d0 t_1_6) ys_2_0)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CCh(_lh_flatten_CCh_0_9) -> 
                          ((mkIndent__d0 _lh_flatten_arg1_0) (let rec t_1_7 = ((flattenS__d0 false) _lh_flatten_arg4_0) in
                            (let rec h_1_7 = _lh_flatten_CCh_0_9 in
                              (fun ys_2_1 -> 
                                (`LH_C(h_1_7, ((mappend__d0 t_1_7) ys_2_1)))))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))))
and mappend__d1 xs_2 ys_8 =
  (match xs_2 with
    | `LH_C(h_5, t_5) -> 
      (let rec t_6 = ((mappend__d1 t_5) ys_8) in
        (let rec h_6 = h_5 in
          (fun ys_9 -> 
            (`LH_C(h_6, ((mappend__d0 t_6) ys_9))))))
    | `LH_N -> 
      ys_8)
and mappend__d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (let rec t_2 = ((mappend__d2 t_1) ys_0) in
        (let rec h_2 = h_1 in
          (fun ys_1 -> 
            (`LH_C(h_2, ((mappend__d0 t_2) ys_1))))))
    | `LH_N -> 
      ys_0)
and mkIndent__d0 _lh_mkIndent_arg1_0 _lh_mkIndent_arg2_0 =
  (match _lh_mkIndent_arg1_0 with
    | 0 -> 
      _lh_mkIndent_arg2_0
    | _ -> 
      (if (_lh_mkIndent_arg1_0 >= 8) then
        (let rec t_3 = ((mkIndent__d0 (_lh_mkIndent_arg1_0 - 8)) _lh_mkIndent_arg2_0) in
          (let rec h_3 = '|' in
            (fun ys_5 -> 
              (`LH_C(h_3, ((mappend__d0 t_3) ys_5))))))
      else
        (let rec t_4 = ((mkIndent__d0 (_lh_mkIndent_arg1_0 - 1)) _lh_mkIndent_arg2_0) in
          (let rec h_4 = ' ' in
            (fun ys_6 -> 
              (`LH_C(h_4, ((mappend__d0 t_4) ys_6))))))))
and mkIndent__d1 _lh_mkIndent_arg1_1 _lh_mkIndent_arg2_1 =
  (match _lh_mkIndent_arg1_1 with
    | 0 -> 
      _lh_mkIndent_arg2_1
    | _ -> 
      (if (_lh_mkIndent_arg1_1 >= 8) then
        (let rec t_1_8 = ((mkIndent__d1 (_lh_mkIndent_arg1_1 - 8)) _lh_mkIndent_arg2_1) in
          (let rec h_1_8 = '|' in
            (fun ys_2_2 -> 
              (`LH_C(h_1_8, ((mappend__d0 t_1_8) ys_2_2))))))
      else
        (let rec t_1_9 = ((mkIndent__d1 (_lh_mkIndent_arg1_1 - 1)) _lh_mkIndent_arg2_1) in
          (let rec h_1_9 = ' ' in
            (fun ys_2_3 -> 
              (`LH_C(h_1_9, ((mappend__d0 t_1_9) ys_2_3))))))))
and pp'SP__d0 _lh_pp'SP_arg1_0 =
  ((ppStr__d0 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) _lh_pp'SP_arg1_0)
and ppAbove__d0 _lh_ppAbove_arg1_0 _lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0 _lh_ppAbove_arg4_0 =
  (let rec _lh_matchIdent_1 = ((_lh_ppAbove_arg1_0 _lh_ppAbove_arg3_0) true) in
    (match _lh_matchIdent_1 with
      | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_0, _lh_ppAbove_MkPrettyRep_1_0, _lh_ppAbove_MkPrettyRep_2_0, _lh_ppAbove_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_2 = ((_lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0) true) in
          (match _lh_matchIdent_2 with
            | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_1, _lh_ppAbove_MkPrettyRep_1_1, _lh_ppAbove_MkPrettyRep_2_1, _lh_ppAbove_MkPrettyRep_3_1) -> 
              (let rec nl_0 = (if ((orL__d0 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1) then
                cNil__d0
              else
                cNL__d0) in
                (`MkPrettyRep(((cAppend__d0 _lh_ppAbove_MkPrettyRep_0_0) ((cAppend__d1 nl_0) _lh_ppAbove_MkPrettyRep_0_1)), _lh_ppAbove_MkPrettyRep_1_1, ((andL__d0 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1), false)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppAboves__d0 _lh_ppAboves_arg1_0 =
  (match _lh_ppAboves_arg1_0 with
    | `LH_N -> 
      ppNil__d0
    | _ -> 
      ((foldr1__d0 ppAbove__d0) _lh_ppAboves_arg1_0))
and ppBesideSP__d0 _lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg2_0 _lh_ppBesideSP_arg3_0 _lh_ppBesideSP_arg4_0 =
  (let rec _lh_matchIdent_5 = ((_lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg3_0) false) in
    (match _lh_matchIdent_5 with
      | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_0, _lh_ppBesideSP_MkPrettyRep_1_0, _lh_ppBesideSP_MkPrettyRep_2_0, _lh_ppBesideSP_MkPrettyRep_3_0) -> 
        (let rec li_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
          0
        else
          (_lh_ppBesideSP_MkPrettyRep_1_0 + 1)) in
          (let rec _lh_matchIdent_6 = ((_lh_ppBesideSP_arg2_0 (_lh_ppBesideSP_arg3_0 - li_0)) false) in
            (match _lh_matchIdent_6 with
              | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_1, _lh_ppBesideSP_MkPrettyRep_1_1, _lh_ppBesideSP_MkPrettyRep_2_1, _lh_ppBesideSP_MkPrettyRep_3_1) -> 
                (let rec wi_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
                  0
                else
                  1) in
                  (let rec sp_0 = (if ((orL__d1 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1) then
                    cNil__d3
                  else
                    (cCh__d0 ' ')) in
                    (`MkPrettyRep(((cAppend__d3 _lh_ppBesideSP_MkPrettyRep_0_0) ((cAppend__d4 sp_0) ((cIndent__d1 li_0) _lh_ppBesideSP_MkPrettyRep_0_1))), (li_0 + _lh_ppBesideSP_MkPrettyRep_1_1), ((andL__d4 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1), ((andL__d5 (_lh_ppBesideSP_arg3_0 >= wi_0)) ((andL__d6 _lh_ppBesideSP_MkPrettyRep_3_0) _lh_ppBesideSP_MkPrettyRep_3_1))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")))
and ppBeside__d0 _lh_ppBeside_arg1_0 _lh_ppBeside_arg2_0 _lh_ppBeside_arg3_0 _lh_ppBeside_arg4_0 =
  (let rec _lh_matchIdent_8 = ((_lh_ppBeside_arg1_0 _lh_ppBeside_arg3_0) false) in
    (match _lh_matchIdent_8 with
      | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_0, _lh_ppBeside_MkPrettyRep_1_0, _lh_ppBeside_MkPrettyRep_2_0, _lh_ppBeside_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_9 = ((_lh_ppBeside_arg2_0 (_lh_ppBeside_arg3_0 - _lh_ppBeside_MkPrettyRep_1_0)) false) in
          (match _lh_matchIdent_9 with
            | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_1, _lh_ppBeside_MkPrettyRep_1_1, _lh_ppBeside_MkPrettyRep_2_1, _lh_ppBeside_MkPrettyRep_3_1) -> 
              (`MkPrettyRep(((cAppend__d2 _lh_ppBeside_MkPrettyRep_0_0) ((cIndent__d0 _lh_ppBeside_MkPrettyRep_1_0) _lh_ppBeside_MkPrettyRep_0_1)), (_lh_ppBeside_MkPrettyRep_1_0 + _lh_ppBeside_MkPrettyRep_1_1), ((andL__d1 _lh_ppBeside_MkPrettyRep_2_0) _lh_ppBeside_MkPrettyRep_2_1), ((andL__d2 (_lh_ppBeside_arg3_0 >= 0)) ((andL__d3 _lh_ppBeside_MkPrettyRep_3_0) _lh_ppBeside_MkPrettyRep_3_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppBesides__d0 _lh_ppBesides_arg1_0 =
  (match _lh_ppBesides_arg1_0 with
    | `LH_N -> 
      ppNil__d1
    | _ -> 
      ((foldr1__d1 ppBeside__d0) _lh_ppBesides_arg1_0))
and ppCat__d0 _lh_ppCat_arg1_0 =
  (match _lh_ppCat_arg1_0 with
    | `LH_N -> 
      ppNil__d2
    | _ -> 
      ((foldr1__d2 ppBesideSP__d0) _lh_ppCat_arg1_0))
and ppChar__d0 _lh_ppChar_arg1_0 _lh_ppChar_arg2_0 _lh_ppChar_arg3_0 =
  (`MkPrettyRep((cCh__d1 _lh_ppChar_arg1_0), 1, false, (_lh_ppChar_arg2_0 >= 1)))
and ppInt__d0 _lh_ppInt_arg1_0 =
  (ppStr__d1 (string_of_int _lh_ppInt_arg1_0))
and ppNil__d0 _lh_ppNil_arg1_1 _lh_ppNil_arg2_1 =
  (`MkPrettyRep(cNil__d1, 0, true, (_lh_ppNil_arg1_1 >= 0)))
and ppNil__d1 _lh_ppNil_arg1_2 _lh_ppNil_arg2_2 =
  (`MkPrettyRep(cNil__d2, 0, true, (_lh_ppNil_arg1_2 >= 0)))
and ppNil__d2 _lh_ppNil_arg1_0 _lh_ppNil_arg2_0 =
  (`MkPrettyRep(cNil__d4, 0, true, (_lh_ppNil_arg1_0 >= 0)))
and ppShow__d0 _lh_ppShow_arg1_0 _lh_ppShow_arg2_0 =
  (let rec _lh_matchIdent_7 = ((_lh_ppShow_arg2_0 _lh_ppShow_arg1_0) false) in
    (match _lh_matchIdent_7 with
      | `MkPrettyRep(_lh_ppShow_MkPrettyRep_0_0, _lh_ppShow_MkPrettyRep_1_0, _lh_ppShow_MkPrettyRep_2_0, _lh_ppShow_MkPrettyRep_3_0) -> 
        (cShow__d0 _lh_ppShow_MkPrettyRep_0_0)
      | _ -> 
        (failwith "error")))
and ppStr__d0 _lh_ppStr_arg1_3 _lh_ppStr_arg2_3 _lh_ppStr_arg3_3 =
  (let rec ls_4 = (length__d0 _lh_ppStr_arg1_3) in
    (`MkPrettyRep((cStr__d0 _lh_ppStr_arg1_3), ls_4, false, (_lh_ppStr_arg2_3 >= ls_4))))
and ppStr__d1 _lh_ppStr_arg1_1 _lh_ppStr_arg2_1 _lh_ppStr_arg3_1 =
  (let rec ls_2 = (length__d1 _lh_ppStr_arg1_1) in
    (`MkPrettyRep((cStr__d1 _lh_ppStr_arg1_1), ls_2, false, (_lh_ppStr_arg2_1 >= ls_2))))
and ppStr__d2 _lh_ppStr_arg1_4 _lh_ppStr_arg2_4 _lh_ppStr_arg3_4 =
  (let rec ls_5 = (length__d2 _lh_ppStr_arg1_4) in
    (let rec _lh_ppHang_MkPrettyRep_3_0 = (_lh_ppStr_arg2_4 >= ls_5) in
      (let rec _lh_ppHang_MkPrettyRep_2_0 = false in
        (let rec _lh_ppHang_MkPrettyRep_1_0 = ls_5 in
          (let rec _lh_ppHang_MkPrettyRep_0_0 = (cStr__d2 _lh_ppStr_arg1_4) in
            (fun _lh_ppHang_arg2_1 _lh_ppHang_arg3_1 _lh_ppHang_arg4_1 _lh_ppHang_arg5_1 -> 
              (let rec _lh_matchIdent_3 = ((_lh_ppHang_arg3_1 (_lh_ppHang_arg4_1 - (_lh_ppHang_MkPrettyRep_1_0 + 1))) false) in
                (match _lh_matchIdent_3 with
                  | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_1, _lh_ppHang_MkPrettyRep_1_1, _lh_ppHang_MkPrettyRep_2_1, _lh_ppHang_MkPrettyRep_3_1) -> 
                    (let rec _lh_matchIdent_4 = ((_lh_ppHang_arg3_1 (_lh_ppHang_arg4_1 - _lh_ppHang_arg2_1)) false) in
                      (match _lh_matchIdent_4 with
                        | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_2, _lh_ppHang_MkPrettyRep_1_2, _lh_ppHang_MkPrettyRep_2_2, _lh_ppHang_MkPrettyRep_3_2) -> 
                          (if _lh_ppHang_MkPrettyRep_2_0 then
                            ((_lh_ppHang_arg3_1 _lh_ppHang_arg4_1) _lh_ppHang_arg5_1)
                          else
                            (if ((orL__d2 (_lh_ppHang_MkPrettyRep_1_0 <= _lh_ppHang_arg2_1)) _lh_ppHang_MkPrettyRep_3_1) then
                              (`MkPrettyRep(((cAppend__d5 ((cAppend__d6 _lh_ppHang_MkPrettyRep_0_0) (cCh__d2 ' '))) ((cIndent__d2 (_lh_ppHang_MkPrettyRep_1_0 + 1)) _lh_ppHang_MkPrettyRep_0_1)), ((_lh_ppHang_MkPrettyRep_1_0 + 1) + _lh_ppHang_MkPrettyRep_1_1), false, ((andL__d7 _lh_ppHang_MkPrettyRep_3_0) _lh_ppHang_MkPrettyRep_3_1)))
                            else
                              (`MkPrettyRep(((cAppend__d7 _lh_ppHang_MkPrettyRep_0_0) ((cAppend__d8 cNL__d1) ((cIndent__d3 _lh_ppHang_arg2_1) _lh_ppHang_MkPrettyRep_0_2))), _lh_ppHang_MkPrettyRep_1_2, false, false))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error")))))))))
and ppStr__d3 _lh_ppStr_arg1_2 _lh_ppStr_arg2_2 _lh_ppStr_arg3_2 =
  (let rec ls_3 = (length__d3 _lh_ppStr_arg1_2) in
    (`MkPrettyRep((cStr__d3 _lh_ppStr_arg1_2), ls_3, false, (_lh_ppStr_arg2_2 >= ls_3))))
and ppStr__d4 _lh_ppStr_arg1_0 _lh_ppStr_arg2_0 _lh_ppStr_arg3_0 =
  (let rec ls_1 = (length__d4 _lh_ppStr_arg1_0) in
    (`MkPrettyRep((cStr__d4 _lh_ppStr_arg1_0), ls_1, false, (_lh_ppStr_arg2_0 >= ls_1))))
and testPretty_nofib__d0 _lh_testPretty_nofib_arg1_0 =
  (let rec pretty_stuff_0 = (ppAboves__d0 (`LH_C((ppBesides__d0 (`LH_C((ppInt__d0 (0 - 42)), (`LH_C((ppChar__d0 '@'), (`LH_C((ppStr__d4 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))), (`LH_N)))))))), (`LH_C(pp'SP__d0, (`LH_C((((ppHang__d0 (ppStr__d2 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))) 8) (ppCat__d0 ((copy__d0 50) (ppStr__d3 (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_N))))))))))))))), (`LH_N)))))))) in
    ((mappend__d0 ((ppShow__d0 80) pretty_stuff_0)) (`LH_C('|', (`LH_N)))));;
end;;

