

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d1 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_0 _lh_testSlowTwo_arg1_0 -> 
          (let rec t_1 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_1 = (testSlowTwo_lh__d1 (_lh_testSlowTwo_arg1_0 - 1)) in
              (fun _lh_dummy_0 -> 
                ((mappend_lh__d1 h_1) (concat_lh__d1 t_1))))))))
  else
    (fun _lh_listcomp_fun_1 _lh_testSlowTwo_arg1_1 _lh_dummy_1 -> 
      (`LH_N)))
and
testSlowTwo_lh__d1 _lh_testSlowTwo_arg1_2 =
  (if (_lh_testSlowTwo_arg1_2 < 0) then
    (`LH_C(1, (`LH_N)))
  else
    (concat_lh__d1 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_0 -> 
      ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_2) _lh_testSlowTwo_arg1_2)) in
      (_lh_listcomp_fun_2 ((enumFromTo_lh__d1 0) _lh_testSlowTwo_arg1_2)))));;
let run () = 1 + (Obj.magic ((testSlowTwo_lh__d1 8)));
end;;

