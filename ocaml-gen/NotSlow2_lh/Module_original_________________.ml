
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_1, t_1) -> 
      ((mappend_lh h_1) (concat_lh t_1))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec testNotSlow2_lh _lh_testNotSlow2_arg1_0 =
  (if (_lh_testNotSlow2_arg1_0 < 0) then
    (`LH_N)
  else
    (concat_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
      (match _lh_listcomp_fun_para_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
          (`LH_C((testNotSlow2_lh (_lh_listcomp_fun_ls_h_0 - 1)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_0 ((enumFromTo_lh 1) _lh_testNotSlow2_arg1_0)))));;
let run () = 1 + (Obj.magic ((testNotSlow2_lh 23)));
end;;
