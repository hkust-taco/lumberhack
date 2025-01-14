

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumFromThenTo_lh__d2 a_6 t_1_4 b_0 =
  (if (a_6 <= b_0) then
    (`LH_C(a_6, (((enumFromThenTo_lh__d2 t_1_4) ((2 * t_1_4) - a_6)) b_0)))
  else
    (`LH_N));;
let rec max_lh__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec algb2_lh__d1 _lh_algb2_arg1_0 _lh_algb2_arg2_0 _lh_algb2_arg3_0 _lh_algb2_arg4_0 =
  (match _lh_algb2_arg4_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_0, _lh_algb2_LH_C_1_0) -> 
      (match _lh_algb2_LH_C_0_0 with
        | `LH_P2(_lh_algb2_LH_P2_0_0, _lh_algb2_LH_P2_1_0) -> 
          (let rec kjcurr_0 = (if (_lh_algb2_arg1_0 = _lh_algb2_LH_P2_0_0) then
            (_lh_algb2_arg2_0 + 1)
          else
            ((max_lh__d1 _lh_algb2_arg3_0) _lh_algb2_LH_P2_1_0)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_0, kjcurr_0)), ((((algb2_lh__d1 _lh_algb2_arg1_0) _lh_algb2_LH_P2_1_0) kjcurr_0) _lh_algb2_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d1 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec snd_lh__d1 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec algb1_lh__d3 _lh_algb1_arg1_0 _lh_algb1_arg2_0 =
  (match _lh_algb1_arg1_0 with
    | `LH_N -> 
      ((map_lh__d1 snd_lh__d1) _lh_algb1_arg2_0)
    | `LH_C(_lh_algb1_LH_C_0_0, _lh_algb1_LH_C_1_0) -> 
      ((algb1_lh__d3 _lh_algb1_LH_C_1_0) ((((algb2_lh__d1 _lh_algb1_LH_C_0_0) 0) 0) _lh_algb1_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec algb_lh__d3 _lh_algb_arg1_1 _lh_algb_arg2_1 =
  (`LH_C(0, ((algb1_lh__d3 _lh_algb_arg1_1) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1, 0)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 _lh_algb_arg2_1)))));;
let rec drop_lh__d4 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 = 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh__d4 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec inList_lh__d1 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh__d1 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec take_lh__d2 n_2 ls_9 =
  (if (n_2 > 0) then
    (match ls_9 with
      | `LH_C(h_9, t_9) -> 
        (`LH_C(h_9, ((take_lh__d2 (n_2 - 1)) t_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec findk_lh__d2 _lh_findk_arg1_0 _lh_findk_arg2_0 _lh_findk_arg3_0 _lh_findk_arg4_0 =
  (match _lh_findk_arg4_0 with
    | `LH_N -> 
      _lh_findk_arg2_0
    | `LH_C(_lh_findk_LH_C_0_0, _lh_findk_LH_C_1_0) -> 
      (match _lh_findk_LH_C_0_0 with
        | `LH_P2(_lh_findk_LH_P2_0_0, _lh_findk_LH_P2_1_0) -> 
          (if ((_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0) >= _lh_findk_arg3_0) then
            ((((findk_lh__d2 (_lh_findk_arg1_0 + 1)) _lh_findk_arg1_0) (_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0)) _lh_findk_LH_C_1_0)
          else
            ((((findk_lh__d2 (_lh_findk_arg1_0 + 1)) _lh_findk_arg2_0) _lh_findk_arg3_0) _lh_findk_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec take_lh__d3 n_1 ls_8 =
  (if (n_1 > 0) then
    (match ls_8 with
      | `LH_C(h_8, t_8) -> 
        (`LH_C(h_8, ((take_lh__d3 (n_1 - 1)) t_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec drop_lh__d1 _lh_drop_arg1_3 _lh_drop_arg2_3 =
  (match _lh_drop_arg2_3 with
    | `LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3) -> 
      (if (_lh_drop_arg1_3 = 0) then
        (`LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3))
      else
        ((drop_lh__d1 (_lh_drop_arg1_3 - 1)) _lh_drop_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh__d1 ls_6 a_5 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      ((reverse_helper_lh__d1 t_6) (`LH_C(h_6, a_5)))
    | `LH_N -> 
      a_5);;
let rec reverse_lh__d1 ls_1_6 =
  ((reverse_helper_lh__d1 ls_1_6) (`LH_N));;
let rec reverse_helper_lh__d2 ls_5 a_4 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      ((reverse_helper_lh__d2 t_5) (`LH_C(h_5, a_4)))
    | `LH_N -> 
      a_4);;
let rec reverse_lh__d2 ls_1_5 =
  ((reverse_helper_lh__d2 ls_1_5) (`LH_N));;
let rec reverse_helper_lh__d5 ls_2 a_1 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((reverse_helper_lh__d5 t_2) (`LH_C(h_2, a_1)))
    | `LH_N -> 
      a_1);;
let rec reverse_lh__d5 ls_1_1 =
  ((reverse_helper_lh__d5 ls_1_1) (`LH_N));;
let rec reverse_helper_lh__d3 ls_4 a_3 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      ((reverse_helper_lh__d3 t_4) (`LH_C(h_4, a_3)))
    | `LH_N -> 
      a_3);;
let rec reverse_lh__d3 ls_1_4 =
  ((reverse_helper_lh__d3 ls_1_4) (`LH_N));;
let rec take_lh__d4 n_0 ls_7 =
  (if (n_0 > 0) then
    (match ls_7 with
      | `LH_C(h_7, t_7) -> 
        (`LH_C(h_7, ((take_lh__d4 (n_0 - 1)) t_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec drop_lh__d2 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 = 0) then
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2))
      else
        ((drop_lh__d2 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec zip_lh__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_1 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C((`LH_P2(hx_1, hy_1)), ((zip_lh__d1 tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec reverse_helper_lh__d6 ls_1 a_0 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((reverse_helper_lh__d6 t_1) (`LH_C(h_1, a_0)))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d6 ls_1_0 =
  ((reverse_helper_lh__d6 ls_1_0) (`LH_N));;
let rec algb1_lh__d1 _lh_algb1_arg1_2 _lh_algb1_arg2_2 =
  (match _lh_algb1_arg1_2 with
    | `LH_N -> 
      ((map_lh__d1 snd_lh__d1) _lh_algb1_arg2_2)
    | `LH_C(_lh_algb1_LH_C_0_2, _lh_algb1_LH_C_1_2) -> 
      ((algb1_lh__d1 _lh_algb1_LH_C_1_2) ((((algb2_lh__d1 _lh_algb1_LH_C_0_2) 0) 0) _lh_algb1_arg2_2))
    | _ -> 
      (failwith "error"));;
let rec algb_lh__d1 _lh_algb_arg1_3 _lh_algb_arg2_3 =
  (`LH_C(0, ((algb1_lh__d1 _lh_algb_arg1_3) (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_3, 0)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 _lh_algb_arg2_3)))));;
let rec algb_lh__d4 _lh_algb_arg1_0 _lh_algb_arg2_0 =
  (`LH_C(0, ((algb1_lh__d3 _lh_algb_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_0, 0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_algb_arg2_0)))));;
let rec drop_lh__d3 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 = 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop_lh__d3 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec take_lh__d1 n_3 ls_1_2 =
  (if (n_3 > 0) then
    (match ls_1_2 with
      | `LH_C(h_1_0, t_1_0) -> 
        (`LH_C(h_1_0, ((take_lh__d1 (n_3 - 1)) t_1_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec findk_lh__d1 _lh_findk_arg1_1 _lh_findk_arg2_1 _lh_findk_arg3_1 _lh_findk_arg4_1 =
  (match _lh_findk_arg4_1 with
    | `LH_N -> 
      _lh_findk_arg2_1
    | `LH_C(_lh_findk_LH_C_0_1, _lh_findk_LH_C_1_1) -> 
      (match _lh_findk_LH_C_0_1 with
        | `LH_P2(_lh_findk_LH_P2_0_1, _lh_findk_LH_P2_1_1) -> 
          (if ((_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1) >= _lh_findk_arg3_1) then
            ((((findk_lh__d1 (_lh_findk_arg1_1 + 1)) _lh_findk_arg1_1) (_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1)) _lh_findk_LH_C_1_1)
          else
            ((((findk_lh__d1 (_lh_findk_arg1_1 + 1)) _lh_findk_arg2_1) _lh_findk_arg3_1) _lh_findk_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec zip_lh__d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lh__d2 tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec reverse_helper_lh__d4 ls_3 a_2 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      ((reverse_helper_lh__d4 t_3) (`LH_C(h_3, a_2)))
    | `LH_N -> 
      a_2);;
let rec reverse_lh__d4 ls_1_3 =
  ((reverse_helper_lh__d4 ls_1_3) (`LH_N));;
let rec algb1_lh__d2 _lh_algb1_arg1_1 _lh_algb1_arg2_1 =
  (match _lh_algb1_arg1_1 with
    | `LH_N -> 
      ((map_lh__d1 snd_lh__d1) _lh_algb1_arg2_1)
    | `LH_C(_lh_algb1_LH_C_0_1, _lh_algb1_LH_C_1_1) -> 
      ((algb1_lh__d2 _lh_algb1_LH_C_1_1) ((((algb2_lh__d1 _lh_algb1_LH_C_0_1) 0) 0) _lh_algb1_arg2_1))
    | _ -> 
      (failwith "error"));;
let rec algb_lh__d2 _lh_algb_arg1_2 _lh_algb_arg2_2 =
  (`LH_C(0, ((algb1_lh__d2 _lh_algb_arg1_2) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2, 0)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 _lh_algb_arg2_2)))));;
let rec algc_lh__d1 _lh_algc_arg1_0 _lh_algc_arg2_0 _lh_algc_arg3_0 _lh_algc_arg4_0 =
  (match _lh_algc_arg4_0 with
    | `LH_N -> 
      (fun x_0 -> 
        x_0)
    | _ -> 
      (match _lh_algc_arg3_0 with
        | `LH_C(_lh_algc_LH_C_0_0, _lh_algc_LH_C_1_0) -> 
          (match _lh_algc_LH_C_1_0 with
            | `LH_N -> 
              (if ((inList_lh__d1 _lh_algc_LH_C_0_0) _lh_algc_arg4_0) then
                (fun t_1_2 -> 
                  (`LH_C(_lh_algc_LH_C_0_0, t_1_2)))
              else
                (fun x_1 -> 
                  x_1))
            | _ -> 
              (let rec m2_0 = (_lh_algc_arg1_0 / 2) in
                (let rec xs1_0 = ((take_lh__d3 m2_0) _lh_algc_arg3_0) in
                  (let rec xs2_0 = ((drop_lh__d1 m2_0) _lh_algc_arg3_0) in
                    (let rec l1_0 = ((algb_lh__d2 xs1_0) _lh_algc_arg4_0) in
                      (let rec l2_0 = (reverse_lh__d4 ((algb_lh__d4 (reverse_lh__d6 xs2_0)) (reverse_lh__d1 _lh_algc_arg4_0))) in
                        (let rec k_0 = ((((findk_lh__d2 0) 0) (0 - 1)) ((zip_lh__d2 l1_0) l2_0)) in
                          (fun _lh_funcomp_x_0 -> 
                            (((((algc_lh__d1 m2_0) k_0) xs1_0) ((take_lh__d1 k_0) _lh_algc_arg4_0)) (((((algc_lh__d1 (_lh_algc_arg1_0 - m2_0)) (_lh_algc_arg2_0 - k_0)) xs2_0) ((drop_lh__d2 k_0) _lh_algc_arg4_0)) _lh_funcomp_x_0))))))))))
        | _ -> 
          (let rec m2_1 = (_lh_algc_arg1_0 / 2) in
            (let rec xs1_1 = ((take_lh__d2 m2_1) _lh_algc_arg3_0) in
              (let rec xs2_1 = ((drop_lh__d4 m2_1) _lh_algc_arg3_0) in
                (let rec l1_1 = ((algb_lh__d3 xs1_1) _lh_algc_arg4_0) in
                  (let rec l2_1 = (reverse_lh__d2 ((algb_lh__d1 (reverse_lh__d5 xs2_1)) (reverse_lh__d3 _lh_algc_arg4_0))) in
                    (let rec k_1 = ((((findk_lh__d1 0) 0) (0 - 1)) ((zip_lh__d1 l1_1) l2_1)) in
                      (fun _lh_funcomp_x_1 -> 
                        (((((algc_lh__d1 m2_1) k_1) xs1_1) ((take_lh__d4 k_1) _lh_algc_arg4_0)) (((((algc_lh__d1 (_lh_algc_arg1_0 - m2_1)) (_lh_algc_arg2_0 - k_1)) xs2_1) ((drop_lh__d3 k_1) _lh_algc_arg4_0)) _lh_funcomp_x_1)))))))))));;
let rec length_lh__d1 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_1_2, t_1_3) -> 
      (1 + (length_lh__d1 t_1_3))
    | `LH_N -> 
      0);;
let rec length_lh__d2 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_1, t_1_1) -> 
      (1 + (length_lh__d2 t_1_1))
    | `LH_N -> 
      0);;
let rec lcss_lh__d1 _lh_lcss_arg1_0 _lh_lcss_arg2_0 =
  (((((algc_lh__d1 (length_lh__d2 _lh_lcss_arg1_0)) (length_lh__d1 _lh_lcss_arg2_0)) _lh_lcss_arg1_0) _lh_lcss_arg2_0) (`LH_N));;
let rec enumFromThenTo_lh__d1 a_7 t_1_5 b_1 =
  (if (a_7 <= b_1) then
    (`LH_C(a_7, (((enumFromThenTo_lh__d1 t_1_5) ((2 * t_1_5) - a_7)) b_1)))
  else
    (`LH_N));;
let rec lcssMain_lh__d1 _lh_lcssMain_arg1_0 _lh_lcssMain_arg2_0 _lh_lcssMain_arg3_0 _lh_lcssMain_arg4_0 _lh_lcssMain_arg5_0 _lh_lcssMain_arg6_0 =
  ((lcss_lh__d1 (((enumFromThenTo_lh__d1 _lh_lcssMain_arg1_0) _lh_lcssMain_arg2_0) _lh_lcssMain_arg3_0)) (((enumFromThenTo_lh__d2 _lh_lcssMain_arg4_0) _lh_lcssMain_arg5_0) _lh_lcssMain_arg6_0));;
let rec testLCSS_nofib_lh__d1 _lh_testLCSS_nofib_arg1_0 =
  ((((((lcssMain_lh__d1 1) 2) 60) 30) 31) 90);;
let run () = 1 + (Obj.magic ((testLCSS_nofib_lh__d1 0)));
end;;

