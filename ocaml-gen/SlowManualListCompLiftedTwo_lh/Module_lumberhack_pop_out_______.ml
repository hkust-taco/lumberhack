

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d1 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec lscompf_lh__d1 _lh_lscompf_arg1_0 _lh_lscompf_arg2_2 =
  (let rec _lh_matchIdent_0 = _lh_lscompf_arg1_0 in
    (_lh_matchIdent_0 _lh_lscompf_arg2_2));;
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec enumFromTo_lh__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_lscompf_LH_C_1_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec _lh_lscompf_LH_C_0_0 = a_0 in
        (let rec t_1 = ((lscompf_lh__d1 _lh_lscompf_LH_C_1_0) _lh_popOutId_0_0) in
          (let rec h_1 = (testSlowManualListCompLiftedTwo_lh__d1 (_lh_popOutId_0_0 - 1)) in
            ((mappend_lh__d1 h_1) (concat_lh__d1 t_1))))))
  else
    (`LH_N))
and
testSlowManualListCompLiftedTwo_lh__d1 _lh_testSlowManualListCompLiftedTwo_arg1_0 =
  (if (_lh_testSlowManualListCompLiftedTwo_arg1_0 < 0) then
    (`LH_C(1, (`LH_N)))
  else
    (concat_lh__d1 ((lscompf_lh__d1 ((enumFromTo_lh__d1 0) _lh_testSlowManualListCompLiftedTwo_arg1_0)) _lh_testSlowManualListCompLiftedTwo_arg1_0)));;
let run () = 1 + (Obj.magic ((testSlowManualListCompLiftedTwo_lh__d1 8)));
end;;

