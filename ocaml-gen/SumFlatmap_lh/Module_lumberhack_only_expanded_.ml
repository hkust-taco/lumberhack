

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d1 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec flatMap_lh__d1 _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((mappend_lh__d1 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap_lh__d1 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec sum_lh__d1 _lh_sum_arg1_0 _lh_sum_arg2_0 =
  (match _lh_sum_arg2_0 with
    | `LH_N -> 
      _lh_sum_arg1_0
    | `LH_C(_lh_sum_LH_C_0_0, _lh_sum_LH_C_1_0) -> 
      ((sum_lh__d1 (_lh_sum_arg1_0 + _lh_sum_LH_C_0_0)) _lh_sum_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec testSumFlatmap_lh__d1 _lh_testSumFlatmap_arg1_0 =
  ((sum_lh__d1 0) ((flatMap_lh__d1 (fun a_1 -> 
    (`LH_C(a_1, (`LH_C(a_1, (`LH_N))))))) ((enumFromTo_lh__d1 1) _lh_testSumFlatmap_arg1_0)));;
end;;
