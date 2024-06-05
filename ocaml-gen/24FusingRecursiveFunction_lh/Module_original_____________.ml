
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_____________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumerate_lh__d1 n_0 =
  (if (n_0 >= 0) then
    (`Cons(n_0, (enumerate_lh__d1 (n_0 - 1))))
  else
    (`Nil));;
let rec sum_lh__d1 xs_0 =
  (match xs_0 with
    | `Nil -> 
      0
    | `Cons(x_0, xs_1) -> 
      (x_0 + (sum_lh__d1 xs_1)));;
let rec test24FusingRecursiveFunction_lh__d1 x_1 =
  (sum_lh__d1 (enumerate_lh__d1 x_1));;
let run () = 1 + (Obj.magic ((test24FusingRecursiveFunction_lh__d1 10000)));
end;;

