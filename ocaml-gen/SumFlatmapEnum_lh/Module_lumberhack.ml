

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec flatMap_lh _lh_flatMap_arg1_2 _lh_flatMap_arg2_0 =
  (_lh_flatMap_arg2_0 _lh_flatMap_arg1_2);;
let rec mappend_lh xs_0 ys_0 =
  (xs_0 ys_0);;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_flatMap_LH_C_1_0 = ((enumFromTo_lh (a_0 + 1)) b_0) in
      (let rec _lh_flatMap_LH_C_0_0 = a_0 in
        (fun _lh_flatMap_arg1_0 -> 
          ((mappend_lh (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap_lh _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0)))))
  else
    (fun _lh_flatMap_arg1_1 _lh_sum_arg1_0 -> 
      _lh_sum_arg1_0));;
let rec sum_lh _lh_sum_arg1_1 _lh_sum_arg2_0 =
  (_lh_sum_arg2_0 _lh_sum_arg1_1);;
let rec testSumFlatmapEnum_lh _lh_testSumFlatmapEnum_arg1_0 =
  ((sum_lh 0) ((flatMap_lh (fun a_1 -> 
    (let rec t_0 = (let rec t_1 = (fun ys_1 -> 
      ys_1) in
      (let rec h_0 = a_1 in
        (fun ys_2 -> 
          (let rec _lh_sum_LH_C_1_0 = ((mappend_lh t_1) ys_2) in
            (let rec _lh_sum_LH_C_0_0 = h_0 in
              (fun _lh_sum_arg1_2 -> 
                ((sum_lh (_lh_sum_arg1_2 + _lh_sum_LH_C_0_0)) _lh_sum_LH_C_1_0))))))) in
      (let rec h_1 = a_1 in
        (fun ys_3 -> 
          (let rec _lh_sum_LH_C_1_1 = ((mappend_lh t_0) ys_3) in
            (let rec _lh_sum_LH_C_0_1 = h_1 in
              (fun _lh_sum_arg1_3 -> 
                ((sum_lh (_lh_sum_arg1_3 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1))))))))) ((enumFromTo_lh 1) _lh_testSumFlatmapEnum_arg1_0)));;
end;;

