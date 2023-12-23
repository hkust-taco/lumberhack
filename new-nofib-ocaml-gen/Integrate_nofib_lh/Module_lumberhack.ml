

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec sumFloat_lh__d4_d0 _lh_sumFloat_arg1_1 =
  (_lh_sumFloat_arg1_1 99);;
let rec take_lz_lh__d0 n_1 ls_3 =
  (if (n_1 > 0) then
    ((Lazy.force ls_3) n_1)
  else
    (fun _lh_dummy_2_0 -> 
      0.0));;
let rec map_lz_lh__d0 f_1_0 ls_5 =
  (lazy ((Lazy.force ls_5) f_1_0));;
let rec enumFromFloat_lh__d0 _lh_enumFromFloat_arg1_2 =
  (lazy (let rec t_2 = (enumFromFloat_lh__d0 (_lh_enumFromFloat_arg1_2 +. 1.0)) in
    (let rec h_2 = _lh_enumFromFloat_arg1_2 in
      (fun f_8 -> 
        (`LH_C((f_8 h_2), ((map_lz_lh__d0 f_8) t_2)))))));;
let rec ints_lh__d0 _lh_ints_arg1_1 =
  (enumFromFloat_lh__d0 1.0);;
let rec is_lh__d0 _lh_is_arg1_0 =
  ((map_lz_lh__d0 (fun a_1 -> 
    (((a_1 *. a_1) *. a_1) *. a_1))) (ints_lh__d0 0));;
let rec zipWith_lz_lz_lh__d0 f_2 xs_0 ys_1 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_1, tx_1) -> 
      (match (Lazy.force ys_1) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_2 hx_1) hy_0), (((zipWith_lz_lz_lh__d0 f_2) tx_1) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d1 f_3 ls_2 =
  (lazy ((Lazy.force ls_2) f_3));;
let rec enumFromFloat_lh__d1 _lh_enumFromFloat_arg1_3 =
  (lazy (let rec t_4 = (enumFromFloat_lh__d1 (_lh_enumFromFloat_arg1_3 +. 1.0)) in
    (let rec h_4 = _lh_enumFromFloat_arg1_3 in
      (fun f_1_2 -> 
        (`LH_C((f_1_2 h_4), ((map_lz_lh__d1 f_1_2) t_4)))))));;
let rec ints_lh__d1 _lh_ints_arg1_4 =
  (enumFromFloat_lh__d1 1.0);;
let rec is_lh__d1 _lh_is_arg1_1 =
  ((map_lz_lh__d1 (fun a_3 -> 
    (((a_3 *. a_3) *. a_3) *. a_3))) (ints_lh__d1 0));;
let rec head_lz_lh__d0 ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_lh__d0 ls_6 =
  (match (Lazy.force ls_6) with
    | `LH_C(h_3, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec itotals_lh__d0 _lh_itotals_arg1_0 =
  (lazy (`LH_C((head_lz_lh__d0 (is_lh__d0 0)), (((zipWith_lz_lz_lh__d0 (fun a_0 b_0 -> 
    (a_0 +. b_0))) (tail_lz_lh__d0 (is_lh__d1 0))) (itotals_lh__d0 0)))));;
let rec map_lz_lh__d2 f_2_0 ls_9 =
  (lazy ((Lazy.force ls_9) f_2_0));;
let rec sumFloat_lh__d4_d1 _lh_sumFloat_arg1_2_4 =
  (_lh_sumFloat_arg1_2_4 99);;
let rec zipWith_lz_lz_lh__d4 f_1_3 xs_4 ys_5 =
  (lazy (match (Lazy.force xs_4) with
    | `LH_C(hx_4, tx_4) -> 
      (match (Lazy.force ys_5) with
        | `LH_C(hy_3, ty_3) -> 
          (let rec t_5 = (((zipWith_lz_lz_lh__d4 f_1_3) tx_4) ty_3) in
            (let rec h_5 = ((f_1_3 hx_4) hy_3) in
              (fun f_1_4 -> 
                (let rec t_6 = ((map_lz_lh__d2 f_1_4) t_5) in
                  (let rec h_6 = (f_1_4 h_5) in
                    (fun n_3 -> 
                      (let rec _lh_sumFloat_LH_C_1_2_7 = ((take_lz_lh__d0 (n_3 - 1)) t_6) in
                        (let rec _lh_sumFloat_LH_C_0_2_7 = h_6 in
                          (fun _lh_dummy_3_1 -> 
                            (_lh_sumFloat_LH_C_0_2_7 +. (sumFloat_lh__d4_d1 _lh_sumFloat_LH_C_1_2_7)))))))))))
        | `LH_N -> 
          (fun f_1_5 n_4 _lh_dummy_3_2 -> 
            0.0))
    | `LH_N -> 
      (fun f_1_6 n_5 _lh_dummy_3_3 -> 
        0.0)));;
let rec zipWith_lz_lz_lh__d2 f_6 xs_1 ys_2 =
  (lazy (((Lazy.force xs_1) f_6) ys_2));;
let rec map_lz_lh__d4 f_0 ls_0 =
  (lazy ((Lazy.force ls_0) f_0));;
let rec enumFromFloat_lh__d5 _lh_enumFromFloat_arg1_1 =
  (lazy (let rec t_1 = (enumFromFloat_lh__d5 (_lh_enumFromFloat_arg1_1 +. 1.0)) in
    (let rec h_1 = _lh_enumFromFloat_arg1_1 in
      (fun f_4 -> 
        (let rec ty_1 = ((map_lz_lh__d4 f_4) t_1) in
          (let rec hy_1 = (f_4 h_1) in
            (fun f_5 hx_2 tx_2 -> 
              (`LH_C(((f_5 hx_2) hy_1), (((zipWith_lz_lz_lh__d2 f_5) tx_2) ty_1))))))))));;
let rec ints_lh__d5 _lh_ints_arg1_0 =
  (enumFromFloat_lh__d5 1.0);;
let rec sumFloat_lh__d2_d1 _lh_sumFloat_arg1_5 =
  (_lh_sumFloat_arg1_5 99);;
let rec sumFloat_lh__d2_d9 _lh_sumFloat_arg1_1_5 =
  (_lh_sumFloat_arg1_1_5 99);;
let rec sumFloat_lh__d2_d6 _lh_sumFloat_arg1_2_0 =
  (_lh_sumFloat_arg1_2_0 99);;
let rec sumFloat_lh__d2_d8 _lh_sumFloat_arg1_2_2 =
  (_lh_sumFloat_arg1_2_2 99);;
let rec sumFloat_lh__d2_d0 _lh_sumFloat_arg1_3_0 =
  (_lh_sumFloat_arg1_3_0 99);;
let rec sumFloat_lh__d2_d4 _lh_sumFloat_arg1_3_5 =
  (_lh_sumFloat_arg1_3_5 99);;
let rec sumFloat_lh__d2_d2 _lh_sumFloat_arg1_3 =
  (_lh_sumFloat_arg1_3 99);;
let rec sumFloat_lh__d2_d5 _lh_sumFloat_arg1_4 =
  (_lh_sumFloat_arg1_4 99);;
let rec sumFloat_lh__d2_d7 _lh_sumFloat_arg1_2_8 =
  (_lh_sumFloat_arg1_2_8 99);;
let rec sumFloat_lh__d2_d3 _lh_sumFloat_arg1_2_9 =
  (_lh_sumFloat_arg1_2_9 99);;
let rec integrate1D_lh__d2 _lh_integrate1D_arg1_3 _lh_integrate1D_arg2_3 _lh_integrate1D_arg3_3 =
  (let rec d_3 = ((_lh_integrate1D_arg2_3 -. _lh_integrate1D_arg1_3) /. 8.0) in
    (d_3 *. (sumFloat_lh__d2_d0 (let rec _lh_sumFloat_LH_C_1_2_8 = (let rec _lh_sumFloat_LH_C_1_2_9 = (let rec _lh_sumFloat_LH_C_1_3_0 = (let rec _lh_sumFloat_LH_C_1_3_1 = (let rec _lh_sumFloat_LH_C_1_3_2 = (let rec _lh_sumFloat_LH_C_1_3_3 = (let rec _lh_sumFloat_LH_C_1_3_4 = (let rec _lh_sumFloat_LH_C_1_3_5 = (let rec _lh_sumFloat_LH_C_1_3_6 = (fun _lh_dummy_3_4 -> 
      0.0) in
      (let rec _lh_sumFloat_LH_C_0_2_8 = ((_lh_integrate1D_arg3_3 _lh_integrate1D_arg2_3) *. 0.5) in
        (fun _lh_dummy_3_5 -> 
          (_lh_sumFloat_LH_C_0_2_8 +. (sumFloat_lh__d2_d1 _lh_sumFloat_LH_C_1_3_6))))) in
      (let rec _lh_sumFloat_LH_C_0_2_9 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. d_3)) in
        (fun _lh_dummy_3_6 -> 
          (_lh_sumFloat_LH_C_0_2_9 +. (sumFloat_lh__d2_d2 _lh_sumFloat_LH_C_1_3_5))))) in
      (let rec _lh_sumFloat_LH_C_0_3_0 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (2.0 *. d_3))) in
        (fun _lh_dummy_3_7 -> 
          (_lh_sumFloat_LH_C_0_3_0 +. (sumFloat_lh__d2_d3 _lh_sumFloat_LH_C_1_3_4))))) in
      (let rec _lh_sumFloat_LH_C_0_3_1 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (3.0 *. d_3))) in
        (fun _lh_dummy_3_8 -> 
          (_lh_sumFloat_LH_C_0_3_1 +. (sumFloat_lh__d2_d4 _lh_sumFloat_LH_C_1_3_3))))) in
      (let rec _lh_sumFloat_LH_C_0_3_2 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (4.0 *. d_3))) in
        (fun _lh_dummy_3_9 -> 
          (_lh_sumFloat_LH_C_0_3_2 +. (sumFloat_lh__d2_d5 _lh_sumFloat_LH_C_1_3_2))))) in
      (let rec _lh_sumFloat_LH_C_0_3_3 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (3.0 *. d_3))) in
        (fun _lh_dummy_4_0 -> 
          (_lh_sumFloat_LH_C_0_3_3 +. (sumFloat_lh__d2_d6 _lh_sumFloat_LH_C_1_3_1))))) in
      (let rec _lh_sumFloat_LH_C_0_3_4 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (2.0 *. d_3))) in
        (fun _lh_dummy_4_1 -> 
          (_lh_sumFloat_LH_C_0_3_4 +. (sumFloat_lh__d2_d7 _lh_sumFloat_LH_C_1_3_0))))) in
      (let rec _lh_sumFloat_LH_C_0_3_5 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. d_3)) in
        (fun _lh_dummy_4_2 -> 
          (_lh_sumFloat_LH_C_0_3_5 +. (sumFloat_lh__d2_d8 _lh_sumFloat_LH_C_1_2_9))))) in
      (let rec _lh_sumFloat_LH_C_0_3_6 = ((_lh_integrate1D_arg3_3 _lh_integrate1D_arg1_3) *. 0.5) in
        (fun _lh_dummy_4_3 -> 
          (_lh_sumFloat_LH_C_0_3_6 +. (sumFloat_lh__d2_d9 _lh_sumFloat_LH_C_1_2_8))))))));;
let rec sumFloat_lh__d3_d5 _lh_sumFloat_arg1_2 =
  (_lh_sumFloat_arg1_2 99);;
let rec sumFloat_lh__d3_d7 _lh_sumFloat_arg1_7 =
  (_lh_sumFloat_arg1_7 99);;
let rec sumFloat_lh__d3_d6 _lh_sumFloat_arg1_1_0 =
  (_lh_sumFloat_arg1_1_0 99);;
let rec sumFloat_lh__d3_d8 _lh_sumFloat_arg1_1_4 =
  (_lh_sumFloat_arg1_1_4 99);;
let rec sumFloat_lh__d3_d9 _lh_sumFloat_arg1_1_6 =
  (_lh_sumFloat_arg1_1_6 99);;
let rec sumFloat_lh__d3_d1 _lh_sumFloat_arg1_1_7 =
  (_lh_sumFloat_arg1_1_7 99);;
let rec sumFloat_lh__d3_d0 _lh_sumFloat_arg1_3_4 =
  (_lh_sumFloat_arg1_3_4 99);;
let rec sumFloat_lh__d3_d2 _lh_sumFloat_arg1_3_9 =
  (_lh_sumFloat_arg1_3_9 99);;
let rec sumFloat_lh__d3_d3 _lh_sumFloat_arg1_2_1 =
  (_lh_sumFloat_arg1_2_1 99);;
let rec sumFloat_lh__d3_d4 _lh_sumFloat_arg1_2_3 =
  (_lh_sumFloat_arg1_2_3 99);;
let rec integrate1D_lh__d3 _lh_integrate1D_arg1_0 _lh_integrate1D_arg2_0 _lh_integrate1D_arg3_0 =
  (let rec d_0 = ((_lh_integrate1D_arg2_0 -. _lh_integrate1D_arg1_0) /. 8.0) in
    (d_0 *. (sumFloat_lh__d3_d0 (let rec _lh_sumFloat_LH_C_1_0 = (let rec _lh_sumFloat_LH_C_1_1 = (let rec _lh_sumFloat_LH_C_1_2 = (let rec _lh_sumFloat_LH_C_1_3 = (let rec _lh_sumFloat_LH_C_1_4 = (let rec _lh_sumFloat_LH_C_1_5 = (let rec _lh_sumFloat_LH_C_1_6 = (let rec _lh_sumFloat_LH_C_1_7 = (let rec _lh_sumFloat_LH_C_1_8 = (fun _lh_dummy_0 -> 
      0.0) in
      (let rec _lh_sumFloat_LH_C_0_0 = ((_lh_integrate1D_arg3_0 _lh_integrate1D_arg2_0) *. 0.5) in
        (fun _lh_dummy_1 -> 
          (_lh_sumFloat_LH_C_0_0 +. (sumFloat_lh__d3_d1 _lh_sumFloat_LH_C_1_8))))) in
      (let rec _lh_sumFloat_LH_C_0_1 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. d_0)) in
        (fun _lh_dummy_2 -> 
          (_lh_sumFloat_LH_C_0_1 +. (sumFloat_lh__d3_d2 _lh_sumFloat_LH_C_1_7))))) in
      (let rec _lh_sumFloat_LH_C_0_2 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (2.0 *. d_0))) in
        (fun _lh_dummy_3 -> 
          (_lh_sumFloat_LH_C_0_2 +. (sumFloat_lh__d3_d3 _lh_sumFloat_LH_C_1_6))))) in
      (let rec _lh_sumFloat_LH_C_0_3 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (3.0 *. d_0))) in
        (fun _lh_dummy_4 -> 
          (_lh_sumFloat_LH_C_0_3 +. (sumFloat_lh__d3_d4 _lh_sumFloat_LH_C_1_5))))) in
      (let rec _lh_sumFloat_LH_C_0_4 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (4.0 *. d_0))) in
        (fun _lh_dummy_5 -> 
          (_lh_sumFloat_LH_C_0_4 +. (sumFloat_lh__d3_d5 _lh_sumFloat_LH_C_1_4))))) in
      (let rec _lh_sumFloat_LH_C_0_5 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (3.0 *. d_0))) in
        (fun _lh_dummy_6 -> 
          (_lh_sumFloat_LH_C_0_5 +. (sumFloat_lh__d3_d6 _lh_sumFloat_LH_C_1_3))))) in
      (let rec _lh_sumFloat_LH_C_0_6 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (2.0 *. d_0))) in
        (fun _lh_dummy_7 -> 
          (_lh_sumFloat_LH_C_0_6 +. (sumFloat_lh__d3_d7 _lh_sumFloat_LH_C_1_2))))) in
      (let rec _lh_sumFloat_LH_C_0_7 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. d_0)) in
        (fun _lh_dummy_8 -> 
          (_lh_sumFloat_LH_C_0_7 +. (sumFloat_lh__d3_d8 _lh_sumFloat_LH_C_1_1))))) in
      (let rec _lh_sumFloat_LH_C_0_8 = ((_lh_integrate1D_arg3_0 _lh_integrate1D_arg1_0) *. 0.5) in
        (fun _lh_dummy_9 -> 
          (_lh_sumFloat_LH_C_0_8 +. (sumFloat_lh__d3_d9 _lh_sumFloat_LH_C_1_0))))))));;
let rec integrate2D_lh__d1 _lh_integrate2D_arg1_0 _lh_integrate2D_arg2_0 _lh_integrate2D_arg3_0 _lh_integrate2D_arg4_0 _lh_integrate2D_arg5_0 =
  (((integrate1D_lh__d2 _lh_integrate2D_arg3_0) _lh_integrate2D_arg4_0) (fun y_1 -> 
    (((integrate1D_lh__d3 _lh_integrate2D_arg1_0) _lh_integrate2D_arg2_0) (fun x_1 -> 
      ((_lh_integrate2D_arg5_0 x_1) y_1)))));;
let rec zark_lh__d1 _lh_zark_arg1_1 _lh_zark_arg2_1 =
  (((((integrate2D_lh__d1 0.0) _lh_zark_arg1_1) 0.0) _lh_zark_arg2_1) (fun x_2 y_2 -> 
    (x_2 *. y_2)));;
let rec enumFromFloat_lh__d4 _lh_enumFromFloat_arg1_0 =
  (lazy (let rec tx_0 = (enumFromFloat_lh__d4 (_lh_enumFromFloat_arg1_0 +. 1.0)) in
    (let rec hx_0 = _lh_enumFromFloat_arg1_0 in
      (fun f_1 ys_0 -> 
        ((((Lazy.force ys_0) f_1) hx_0) tx_0)))));;
let rec ints_lh__d4 _lh_ints_arg1_5 =
  (enumFromFloat_lh__d4 1.0);;
let rec zarks_lh__d1 _lh_zarks_arg1_1 =
  (((zipWith_lz_lz_lh__d2 zark_lh__d1) (ints_lh__d4 0)) ((map_lz_lh__d4 (fun n_2 -> 
    (2.0 *. n_2))) (ints_lh__d5 0)));;
let rec head_lz_lh__d1 ls_7 =
  (match (Lazy.force ls_7) with
    | `LH_C(h_7, t_7) -> 
      h_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_lh__d1 ls_8 =
  (match (Lazy.force ls_8) with
    | `LH_C(h_8, t_8) -> 
      t_8
    | `LH_N -> 
      (failwith "error"));;
let rec sumFloat_lh__d3 _lh_sumFloat_arg1_9 =
  (_lh_sumFloat_arg1_9 99);;
let rec sumFloat_lh__d6 _lh_sumFloat_arg1_1_1 =
  (_lh_sumFloat_arg1_1_1 99);;
let rec sumFloat_lh__d0 _lh_sumFloat_arg1_3_2 =
  (_lh_sumFloat_arg1_3_2 99);;
let rec sumFloat_lh__d7 _lh_sumFloat_arg1_3_6 =
  (_lh_sumFloat_arg1_3_6 99);;
let rec sumFloat_lh__d5 _lh_sumFloat_arg1_1_8 =
  (_lh_sumFloat_arg1_1_8 99);;
let rec sumFloat_lh__d1 _lh_sumFloat_arg1_1_9 =
  (_lh_sumFloat_arg1_1_9 99);;
let rec sumFloat_lh__d8 _lh_sumFloat_arg1_2_6 =
  (_lh_sumFloat_arg1_2_6 99);;
let rec sumFloat_lh__d4 _lh_sumFloat_arg1_2_7 =
  (_lh_sumFloat_arg1_2_7 99);;
let rec sumFloat_lh__d9 _lh_sumFloat_arg1_4_0 =
  (_lh_sumFloat_arg1_4_0 99);;
let rec sumFloat_lh__d2 _lh_sumFloat_arg1_4_1 =
  (_lh_sumFloat_arg1_4_1 99);;
let rec integrate1D_lh__d0 _lh_integrate1D_arg1_1 _lh_integrate1D_arg2_1 _lh_integrate1D_arg3_1 =
  (let rec d_1 = ((_lh_integrate1D_arg2_1 -. _lh_integrate1D_arg1_1) /. 8.0) in
    (d_1 *. (sumFloat_lh__d0 (let rec _lh_sumFloat_LH_C_1_9 = (let rec _lh_sumFloat_LH_C_1_1_0 = (let rec _lh_sumFloat_LH_C_1_1_1 = (let rec _lh_sumFloat_LH_C_1_1_2 = (let rec _lh_sumFloat_LH_C_1_1_3 = (let rec _lh_sumFloat_LH_C_1_1_4 = (let rec _lh_sumFloat_LH_C_1_1_5 = (let rec _lh_sumFloat_LH_C_1_1_6 = (let rec _lh_sumFloat_LH_C_1_1_7 = (fun _lh_dummy_1_0 -> 
      0.0) in
      (let rec _lh_sumFloat_LH_C_0_9 = ((_lh_integrate1D_arg3_1 _lh_integrate1D_arg2_1) *. 0.5) in
        (fun _lh_dummy_1_1 -> 
          (_lh_sumFloat_LH_C_0_9 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_1_7))))) in
      (let rec _lh_sumFloat_LH_C_0_1_0 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. d_1)) in
        (fun _lh_dummy_1_2 -> 
          (_lh_sumFloat_LH_C_0_1_0 +. (sumFloat_lh__d2 _lh_sumFloat_LH_C_1_1_6))))) in
      (let rec _lh_sumFloat_LH_C_0_1_1 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (2.0 *. d_1))) in
        (fun _lh_dummy_1_3 -> 
          (_lh_sumFloat_LH_C_0_1_1 +. (sumFloat_lh__d3 _lh_sumFloat_LH_C_1_1_5))))) in
      (let rec _lh_sumFloat_LH_C_0_1_2 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (3.0 *. d_1))) in
        (fun _lh_dummy_1_4 -> 
          (_lh_sumFloat_LH_C_0_1_2 +. (sumFloat_lh__d4 _lh_sumFloat_LH_C_1_1_4))))) in
      (let rec _lh_sumFloat_LH_C_0_1_3 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (4.0 *. d_1))) in
        (fun _lh_dummy_1_5 -> 
          (_lh_sumFloat_LH_C_0_1_3 +. (sumFloat_lh__d5 _lh_sumFloat_LH_C_1_1_3))))) in
      (let rec _lh_sumFloat_LH_C_0_1_4 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (3.0 *. d_1))) in
        (fun _lh_dummy_1_6 -> 
          (_lh_sumFloat_LH_C_0_1_4 +. (sumFloat_lh__d6 _lh_sumFloat_LH_C_1_1_2))))) in
      (let rec _lh_sumFloat_LH_C_0_1_5 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (2.0 *. d_1))) in
        (fun _lh_dummy_1_7 -> 
          (_lh_sumFloat_LH_C_0_1_5 +. (sumFloat_lh__d7 _lh_sumFloat_LH_C_1_1_1))))) in
      (let rec _lh_sumFloat_LH_C_0_1_6 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. d_1)) in
        (fun _lh_dummy_1_8 -> 
          (_lh_sumFloat_LH_C_0_1_6 +. (sumFloat_lh__d8 _lh_sumFloat_LH_C_1_1_0))))) in
      (let rec _lh_sumFloat_LH_C_0_1_7 = ((_lh_integrate1D_arg3_1 _lh_integrate1D_arg1_1) *. 0.5) in
        (fun _lh_dummy_1_9 -> 
          (_lh_sumFloat_LH_C_0_1_7 +. (sumFloat_lh__d9 _lh_sumFloat_LH_C_1_9))))))));;
let rec sumFloat_lh__d1_d5 _lh_sumFloat_arg1_6 =
  (_lh_sumFloat_arg1_6 99);;
let rec sumFloat_lh__d1_d3 _lh_sumFloat_arg1_8 =
  (_lh_sumFloat_arg1_8 99);;
let rec sumFloat_lh__d1_d4 _lh_sumFloat_arg1_1_2 =
  (_lh_sumFloat_arg1_1_2 99);;
let rec sumFloat_lh__d1_d2 _lh_sumFloat_arg1_1_3 =
  (_lh_sumFloat_arg1_1_3 99);;
let rec sumFloat_lh__d1_d8 _lh_sumFloat_arg1_2_5 =
  (_lh_sumFloat_arg1_2_5 99);;
let rec sumFloat_lh__d1_d1 _lh_sumFloat_arg1_0 =
  (_lh_sumFloat_arg1_0 99);;
let rec sumFloat_lh__d1_d9 _lh_sumFloat_arg1_3_1 =
  (_lh_sumFloat_arg1_3_1 99);;
let rec sumFloat_lh__d1_d6 _lh_sumFloat_arg1_3_3 =
  (_lh_sumFloat_arg1_3_3 99);;
let rec sumFloat_lh__d1_d7 _lh_sumFloat_arg1_3_8 =
  (_lh_sumFloat_arg1_3_8 99);;
let rec sumFloat_lh__d1_d0 _lh_sumFloat_arg1_3_7 =
  (_lh_sumFloat_arg1_3_7 99);;
let rec integrate1D_lh__d1 _lh_integrate1D_arg1_2 _lh_integrate1D_arg2_2 _lh_integrate1D_arg3_2 =
  (let rec d_2 = ((_lh_integrate1D_arg2_2 -. _lh_integrate1D_arg1_2) /. 8.0) in
    (d_2 *. (sumFloat_lh__d1_d0 (let rec _lh_sumFloat_LH_C_1_1_8 = (let rec _lh_sumFloat_LH_C_1_1_9 = (let rec _lh_sumFloat_LH_C_1_2_0 = (let rec _lh_sumFloat_LH_C_1_2_1 = (let rec _lh_sumFloat_LH_C_1_2_2 = (let rec _lh_sumFloat_LH_C_1_2_3 = (let rec _lh_sumFloat_LH_C_1_2_4 = (let rec _lh_sumFloat_LH_C_1_2_5 = (let rec _lh_sumFloat_LH_C_1_2_6 = (fun _lh_dummy_2_1 -> 
      0.0) in
      (let rec _lh_sumFloat_LH_C_0_1_8 = ((_lh_integrate1D_arg3_2 _lh_integrate1D_arg2_2) *. 0.5) in
        (fun _lh_dummy_2_2 -> 
          (_lh_sumFloat_LH_C_0_1_8 +. (sumFloat_lh__d1_d1 _lh_sumFloat_LH_C_1_2_6))))) in
      (let rec _lh_sumFloat_LH_C_0_1_9 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. d_2)) in
        (fun _lh_dummy_2_3 -> 
          (_lh_sumFloat_LH_C_0_1_9 +. (sumFloat_lh__d1_d2 _lh_sumFloat_LH_C_1_2_5))))) in
      (let rec _lh_sumFloat_LH_C_0_2_0 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (2.0 *. d_2))) in
        (fun _lh_dummy_2_4 -> 
          (_lh_sumFloat_LH_C_0_2_0 +. (sumFloat_lh__d1_d3 _lh_sumFloat_LH_C_1_2_4))))) in
      (let rec _lh_sumFloat_LH_C_0_2_1 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (3.0 *. d_2))) in
        (fun _lh_dummy_2_5 -> 
          (_lh_sumFloat_LH_C_0_2_1 +. (sumFloat_lh__d1_d4 _lh_sumFloat_LH_C_1_2_3))))) in
      (let rec _lh_sumFloat_LH_C_0_2_2 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (4.0 *. d_2))) in
        (fun _lh_dummy_2_6 -> 
          (_lh_sumFloat_LH_C_0_2_2 +. (sumFloat_lh__d1_d5 _lh_sumFloat_LH_C_1_2_2))))) in
      (let rec _lh_sumFloat_LH_C_0_2_3 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (3.0 *. d_2))) in
        (fun _lh_dummy_2_7 -> 
          (_lh_sumFloat_LH_C_0_2_3 +. (sumFloat_lh__d1_d6 _lh_sumFloat_LH_C_1_2_1))))) in
      (let rec _lh_sumFloat_LH_C_0_2_4 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (2.0 *. d_2))) in
        (fun _lh_dummy_2_8 -> 
          (_lh_sumFloat_LH_C_0_2_4 +. (sumFloat_lh__d1_d7 _lh_sumFloat_LH_C_1_2_0))))) in
      (let rec _lh_sumFloat_LH_C_0_2_5 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. d_2)) in
        (fun _lh_dummy_2_9 -> 
          (_lh_sumFloat_LH_C_0_2_5 +. (sumFloat_lh__d1_d8 _lh_sumFloat_LH_C_1_1_9))))) in
      (let rec _lh_sumFloat_LH_C_0_2_6 = ((_lh_integrate1D_arg3_2 _lh_integrate1D_arg1_2) *. 0.5) in
        (fun _lh_dummy_3_0 -> 
          (_lh_sumFloat_LH_C_0_2_6 +. (sumFloat_lh__d1_d9 _lh_sumFloat_LH_C_1_1_8))))))));;
let rec integrate2D_lh__d0 _lh_integrate2D_arg1_1 _lh_integrate2D_arg2_1 _lh_integrate2D_arg3_1 _lh_integrate2D_arg4_1 _lh_integrate2D_arg5_1 =
  (((integrate1D_lh__d0 _lh_integrate2D_arg3_1) _lh_integrate2D_arg4_1) (fun y_3 -> 
    (((integrate1D_lh__d1 _lh_integrate2D_arg1_1) _lh_integrate2D_arg2_1) (fun x_3 -> 
      ((_lh_integrate2D_arg5_1 x_3) y_3)))));;
let rec zark_lh__d0 _lh_zark_arg1_0 _lh_zark_arg2_0 =
  (((((integrate2D_lh__d0 0.0) _lh_zark_arg1_0) 0.0) _lh_zark_arg2_0) (fun x_0 y_0 -> 
    (x_0 *. y_0)));;
let rec map_lz_lh__d3 f_9 ls_4 =
  (lazy ((Lazy.force ls_4) f_9));;
let rec zipWith_lz_lz_lh__d1 f_1_1 xs_3 ys_4 =
  (lazy (((Lazy.force xs_3) f_1_1) ys_4));;
let rec enumFromFloat_lh__d3 _lh_enumFromFloat_arg1_5 =
  (lazy (let rec t_9 = (enumFromFloat_lh__d3 (_lh_enumFromFloat_arg1_5 +. 1.0)) in
    (let rec h_9 = _lh_enumFromFloat_arg1_5 in
      (fun f_1_8 -> 
        (let rec ty_4 = ((map_lz_lh__d3 f_1_8) t_9) in
          (let rec hy_4 = (f_1_8 h_9) in
            (fun f_1_9 hx_6 tx_6 -> 
              (`LH_C(((f_1_9 hx_6) hy_4), (((zipWith_lz_lz_lh__d1 f_1_9) tx_6) ty_4))))))))));;
let rec ints_lh__d3 _lh_ints_arg1_2 =
  (enumFromFloat_lh__d3 1.0);;
let rec enumFromFloat_lh__d2 _lh_enumFromFloat_arg1_4 =
  (lazy (let rec tx_5 = (enumFromFloat_lh__d2 (_lh_enumFromFloat_arg1_4 +. 1.0)) in
    (let rec hx_5 = _lh_enumFromFloat_arg1_4 in
      (fun f_1_7 ys_6 -> 
        ((((Lazy.force ys_6) f_1_7) hx_5) tx_5)))));;
let rec ints_lh__d2 _lh_ints_arg1_3 =
  (enumFromFloat_lh__d2 1.0);;
let rec zarks_lh__d0 _lh_zarks_arg1_0 =
  (((zipWith_lz_lz_lh__d1 zark_lh__d0) (ints_lh__d2 0)) ((map_lz_lh__d3 (fun n_0 -> 
    (2.0 *. n_0))) (ints_lh__d3 0)));;
let rec zipWith_lz_lz_lh__d3 f_7 xs_2 ys_3 =
  (lazy (match (Lazy.force xs_2) with
    | `LH_C(hx_3, tx_3) -> 
      (match (Lazy.force ys_3) with
        | `LH_C(hy_2, ty_2) -> 
          (`LH_C(((f_7 hx_3) hy_2), (((zipWith_lz_lz_lh__d3 f_7) tx_3) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec rtotals_lh__d0 _lh_rtotals_arg1_0 =
  (lazy (`LH_C((head_lz_lh__d1 (zarks_lh__d0 0)), (((zipWith_lz_lz_lh__d3 (fun a_2 b_1 -> 
    (a_2 +. b_1))) (tail_lz_lh__d1 (zarks_lh__d1 0))) (rtotals_lh__d0 0)))));;
let rec etotal_lh__d0 _lh_etotal_arg1_0 =
  (sumFloat_lh__d4_d0 ((take_lz_lh__d0 _lh_etotal_arg1_0) ((map_lz_lh__d2 (fun a_4 -> 
    (a_4 *. a_4))) (((zipWith_lz_lz_lh__d4 (fun a_5 b_2 -> 
    (a_5 -. b_2))) (rtotals_lh__d0 0)) (itotals_lh__d0 0)))));;
let rec testIntegrate_nofib_lh__d0 _lh_testIntegrate_nofib_arg1_0 =
  (etotal_lh__d0 _lh_testIntegrate_nofib_arg1_0);;
end;;

