(*
touch ./Clausify_nofib.mli && ocamlc ./Clausify_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Clausify_nofib.ml -o "./Clausify_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Clausify_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
module Module_original = struct
let rec conjunct__d0 _lh_conjunct_arg1_1 =
  (match _lh_conjunct_arg1_1 with
    | `Con(_lh_conjunct_Con_0_1, _lh_conjunct_Con_1_1) -> 
      true
    | _ -> 
      false);;
let rec conjunct__d1 _lh_conjunct_arg1_2 =
  (match _lh_conjunct_arg1_2 with
    | `Con(_lh_conjunct_Con_0_2, _lh_conjunct_Con_1_2) -> 
      true
    | _ -> 
      false);;
let rec contains__d0 _lh_contains_arg1_1 _lh_contains_arg2_1 =
  (match _lh_contains_arg2_1 with
    | `LH_C(_lh_contains_LH_C_0_1, _lh_contains_LH_C_1_1) -> 
      ((_lh_contains_arg1_1 = _lh_contains_LH_C_0_1) || ((contains__d0 _lh_contains_arg1_1) _lh_contains_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec copy__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy__d1 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d1 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy__d2 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy__d2 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec elim__d0 _lh_elim_arg1_1 =
  (match _lh_elim_arg1_1 with
    | `Sym(_lh_elim_Sym_0_1) -> 
      (`Sym(_lh_elim_Sym_0_1))
    | `Not(_lh_elim_Not_0_1) -> 
      (`Not((elim__d0 _lh_elim_Not_0_1)))
    | `Dis(_lh_elim_Dis_0_1, _lh_elim_Dis_1_1) -> 
      (`Dis((elim__d0 _lh_elim_Dis_0_1), (elim__d0 _lh_elim_Dis_1_1)))
    | `Con(_lh_elim_Con_0_1, _lh_elim_Con_1_1) -> 
      (`Con((elim__d0 _lh_elim_Con_0_1), (elim__d0 _lh_elim_Con_1_1)))
    | `Imp(_lh_elim_Imp_0_1, _lh_elim_Imp_1_1) -> 
      (`Dis((`Not((elim__d0 _lh_elim_Imp_0_1))), (elim__d0 _lh_elim_Imp_1_1)))
    | `Eqv(_lh_elim_Eqv_0_1, _lh_elim_Eqv_1_1) -> 
      (`Con((elim__d0 (`Imp(_lh_elim_Eqv_0_1, _lh_elim_Eqv_1_1))), (elim__d0 (`Imp(_lh_elim_Eqv_1_1, _lh_elim_Eqv_0_1)))))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1_4 i_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_5, t_2_7) -> 
      ((f_1_4 h_2_5) (((foldr__d0 f_1_4) i_3) t_2_7))
    | `LH_N -> 
      i_3);;
let rec insert__d0 _lh_insert_arg1_3 _lh_insert_arg2_3 =
  (match _lh_insert_arg2_3 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_3, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3) -> 
      (if (_lh_insert_arg1_3 < _lh_insert_LH_C_0_3) then
        (`LH_C(_lh_insert_arg1_3, (`LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3))))
      else
        (if (_lh_insert_arg1_3 > _lh_insert_LH_C_0_3) then
          (`LH_C(_lh_insert_LH_C_0_3, ((insert__d0 _lh_insert_arg1_3) _lh_insert_LH_C_1_3)))
        else
          (`LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec insert__d1 _lh_insert_arg1_2 _lh_insert_arg2_2 =
  (match _lh_insert_arg2_2 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_2, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
      (if (_lh_insert_arg1_2 < _lh_insert_LH_C_0_2) then
        (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
      else
        (if (_lh_insert_arg1_2 > _lh_insert_LH_C_0_2) then
          (`LH_C(_lh_insert_LH_C_0_2, ((insert__d1 _lh_insert_arg1_2) _lh_insert_LH_C_1_2)))
        else
          (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec insert__d2 _lh_insert_arg1_1 _lh_insert_arg2_1 =
  (match _lh_insert_arg2_1 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_1, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
      (if (_lh_insert_arg1_1 < _lh_insert_LH_C_0_1) then
        (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
      else
        (if (_lh_insert_arg1_1 > _lh_insert_LH_C_0_1) then
          (`LH_C(_lh_insert_LH_C_0_1, ((insert__d2 _lh_insert_arg1_1) _lh_insert_LH_C_1_1)))
        else
          (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec interleave__d0 _lh_interleave_arg1_2 _lh_interleave_arg2_2 =
  (match _lh_interleave_arg1_2 with
    | `LH_C(_lh_interleave_LH_C_0_2, _lh_interleave_LH_C_1_2) -> 
      (`LH_C(_lh_interleave_LH_C_0_2, ((interleave__d0 _lh_interleave_arg2_2) _lh_interleave_LH_C_1_2)))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec interleave__d1 _lh_interleave_arg1_1 _lh_interleave_arg2_1 =
  (match _lh_interleave_arg1_1 with
    | `LH_C(_lh_interleave_LH_C_0_1, _lh_interleave_LH_C_1_1) -> 
      (`LH_C(_lh_interleave_LH_C_0_1, ((interleave__d1 _lh_interleave_arg2_1) _lh_interleave_LH_C_1_1)))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_8, t_3_0) -> 
      (1 + (length__d0 t_3_0))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_1, t_3_3) -> 
      (1 + (length__d1 t_3_3))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_3 h_2_4), ((map__d0 f_1_3) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_2 h_2_2), ((map__d1 f_1_2) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_5 ys_1_3 =
  (match xs_1_5 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d0 t_3_2) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1 xs_1_0 ys_9 =
  (match xs_1_0 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d2 xs_1_2 ys_1_1 =
  (match xs_1_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d2 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d3 xs_1_1 ys_1_0 =
  (match xs_1_1 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d3 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d4 xs_1_4 ys_1_2 =
  (match xs_1_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d4 t_2_8) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec negin__d0 _lh_negin_arg1_1 =
  (match _lh_negin_arg1_1 with
    | `Not(_lh_negin_Not_0_2) -> 
      (match _lh_negin_Not_0_2 with
        | `Not(_lh_negin_Not_0_3) -> 
          (negin__d0 _lh_negin_Not_0_3)
        | `Con(_lh_negin_Con_0_2, _lh_negin_Con_1_2) -> 
          (`Dis((negin__d0 (`Not(_lh_negin_Con_0_2))), (negin__d0 (`Not(_lh_negin_Con_1_2)))))
        | `Dis(_lh_negin_Dis_0_2, _lh_negin_Dis_1_2) -> 
          (`Con((negin__d0 (`Not(_lh_negin_Dis_0_2))), (negin__d0 (`Not(_lh_negin_Dis_1_2)))))
        | _ -> 
          _lh_negin_arg1_1)
    | `Dis(_lh_negin_Dis_0_3, _lh_negin_Dis_1_3) -> 
      (`Dis((negin__d0 _lh_negin_Dis_0_3), (negin__d0 _lh_negin_Dis_1_3)))
    | `Con(_lh_negin_Con_0_3, _lh_negin_Con_1_3) -> 
      (`Con((negin__d0 _lh_negin_Con_0_3), (negin__d0 _lh_negin_Con_1_3)))
    | _ -> 
      _lh_negin_arg1_1);;
let rec opri__d0 _lh_opri_arg1_2 =
  (match _lh_opri_arg1_2 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d1 _lh_opri_arg1_3 =
  (match _lh_opri_arg1_3 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d2 _lh_opri_arg1_4 =
  (match _lh_opri_arg1_4 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d3 _lh_opri_arg1_1 =
  (match _lh_opri_arg1_1 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec red__d0 _lh_red_arg1_1 =
  (match _lh_red_arg1_1 with
    | `LH_C(_lh_red_LH_C_0_6, _lh_red_LH_C_1_6) -> 
      (match _lh_red_LH_C_0_6 with
        | `Ast(_lh_red_Ast_0_5) -> 
          (match _lh_red_LH_C_1_6 with
            | `LH_C(_lh_red_LH_C_0_7, _lh_red_LH_C_1_7) -> 
              (match _lh_red_LH_C_0_7 with
                | `Lex(_lh_red_Lex_0_1) -> 
                  (match _lh_red_Lex_0_1 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_8, _lh_red_LH_C_1_8) -> 
                          (match _lh_red_LH_C_0_8 with
                            | `Ast(_lh_red_Ast_0_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_6, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_8))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_9, _lh_red_LH_C_1_9) -> 
                          (match _lh_red_LH_C_0_9 with
                            | `Ast(_lh_red_Ast_0_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_7, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_9))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_0, _lh_red_LH_C_1_1_0) -> 
                          (match _lh_red_LH_C_0_1_0 with
                            | `Ast(_lh_red_Ast_0_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_8, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_0))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_1, _lh_red_LH_C_1_1_1) -> 
                          (match _lh_red_LH_C_0_1_1 with
                            | `Ast(_lh_red_Ast_0_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_9, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_1))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_5)))), _lh_red_LH_C_1_7))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec red__d1 _lh_red_arg1_3 =
  (match _lh_red_arg1_3 with
    | `LH_C(_lh_red_LH_C_0_1_8, _lh_red_LH_C_1_1_8) -> 
      (match _lh_red_LH_C_0_1_8 with
        | `Ast(_lh_red_Ast_0_1_5) -> 
          (match _lh_red_LH_C_1_1_8 with
            | `LH_C(_lh_red_LH_C_0_1_9, _lh_red_LH_C_1_1_9) -> 
              (match _lh_red_LH_C_0_1_9 with
                | `Lex(_lh_red_Lex_0_3) -> 
                  (match _lh_red_Lex_0_3 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_0, _lh_red_LH_C_1_2_0) -> 
                          (match _lh_red_LH_C_0_2_0 with
                            | `Ast(_lh_red_Ast_0_1_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1_6, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_0))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_1, _lh_red_LH_C_1_2_1) -> 
                          (match _lh_red_LH_C_0_2_1 with
                            | `Ast(_lh_red_Ast_0_1_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_7, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_1))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_2, _lh_red_LH_C_1_2_2) -> 
                          (match _lh_red_LH_C_0_2_2 with
                            | `Ast(_lh_red_Ast_0_1_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_8, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_2))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_3, _lh_red_LH_C_1_2_3) -> 
                          (match _lh_red_LH_C_0_2_3 with
                            | `Ast(_lh_red_Ast_0_1_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_9, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_3))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_1_9))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec red__d2 _lh_red_arg1_2 =
  (match _lh_red_arg1_2 with
    | `LH_C(_lh_red_LH_C_0_1_2, _lh_red_LH_C_1_1_2) -> 
      (match _lh_red_LH_C_0_1_2 with
        | `Ast(_lh_red_Ast_0_1_0) -> 
          (match _lh_red_LH_C_1_1_2 with
            | `LH_C(_lh_red_LH_C_0_1_3, _lh_red_LH_C_1_1_3) -> 
              (match _lh_red_LH_C_0_1_3 with
                | `Lex(_lh_red_Lex_0_2) -> 
                  (match _lh_red_Lex_0_2 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_4, _lh_red_LH_C_1_1_4) -> 
                          (match _lh_red_LH_C_0_1_4 with
                            | `Ast(_lh_red_Ast_0_1_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1_1, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_4))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_5, _lh_red_LH_C_1_1_5) -> 
                          (match _lh_red_LH_C_0_1_5 with
                            | `Ast(_lh_red_Ast_0_1_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_2, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_5))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_6, _lh_red_LH_C_1_1_6) -> 
                          (match _lh_red_LH_C_0_1_6 with
                            | `Ast(_lh_red_Ast_0_1_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_3, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_6))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_7, _lh_red_LH_C_1_1_7) -> 
                          (match _lh_red_LH_C_0_1_7 with
                            | `Ast(_lh_red_Ast_0_1_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_4, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_7))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_3))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec splitHelper__d0 _lh_splitHelper_arg1_1 _lh_splitHelper_arg2_1 =
  (match _lh_splitHelper_arg1_1 with
    | `Con(_lh_splitHelper_Con_0_1, _lh_splitHelper_Con_1_1) -> 
      ((splitHelper__d0 _lh_splitHelper_Con_0_1) ((splitHelper__d0 _lh_splitHelper_Con_1_1) _lh_splitHelper_arg2_1))
    | _ -> 
      (`LH_C(_lh_splitHelper_arg1_1, _lh_splitHelper_arg2_1)));;
let rec while__d0 _lh_while_arg1_2 _lh_while_arg2_2 _lh_while_arg3_2 =
  (if (_lh_while_arg1_2 _lh_while_arg3_2) then
    (((while__d0 _lh_while_arg1_2) _lh_while_arg2_2) (_lh_while_arg2_2 _lh_while_arg3_2))
  else
    _lh_while_arg3_2);;
let rec while__d1 _lh_while_arg1_1 _lh_while_arg2_1 _lh_while_arg3_1 =
  (if (_lh_while_arg1_1 _lh_while_arg3_1) then
    (((while__d1 _lh_while_arg1_1) _lh_while_arg2_1) (_lh_while_arg2_1 _lh_while_arg3_1))
  else
    _lh_while_arg3_1);;
let rec clauseHelper__d0 _lh_clauseHelper_arg1_1 _lh_clauseHelper_arg2_1 =
  (match _lh_clauseHelper_arg1_1 with
    | `Dis(_lh_clauseHelper_Dis_0_1, _lh_clauseHelper_Dis_1_1) -> 
      ((clauseHelper__d0 _lh_clauseHelper_Dis_0_1) ((clauseHelper__d0 _lh_clauseHelper_Dis_1_1) _lh_clauseHelper_arg2_1))
    | `Sym(_lh_clauseHelper_Sym_0_2) -> 
      (match _lh_clauseHelper_arg2_1 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_2, _lh_clauseHelper_LH_P2_1_2) -> 
          (`LH_P2(((insert__d0 _lh_clauseHelper_Sym_0_2) _lh_clauseHelper_LH_P2_0_2), _lh_clauseHelper_LH_P2_1_2))
        | _ -> 
          (failwith "error"))
    | `Not(_lh_clauseHelper_Not_0_1) -> 
      (match _lh_clauseHelper_Not_0_1 with
        | `Sym(_lh_clauseHelper_Sym_0_3) -> 
          (match _lh_clauseHelper_arg2_1 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_3, _lh_clauseHelper_LH_P2_1_3) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_3, ((insert__d1 _lh_clauseHelper_Sym_0_3) _lh_clauseHelper_LH_P2_1_3)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and clause__d0 _lh_clause_arg1_1 =
  ((clauseHelper__d0 _lh_clause_arg1_1) (`LH_P2((`LH_N), (`LH_N))))
and clauses__d0 _lh_clauses_arg1_1 =
  ((fun _lh_funcomp_x_8 -> 
    ((fun _lh_funcomp_x_9 -> 
      ((fun _lh_funcomp_x_1_0 -> 
        ((fun _lh_funcomp_x_1_1 -> 
          ((fun _lh_funcomp_x_1_2 -> 
            ((fun _lh_funcomp_x_1_3 -> 
              ((fun _lh_funcomp_x_1_4 -> 
                (concat__d0 ((map__d0 disp__d0) _lh_funcomp_x_1_4))) (unicl__d0 _lh_funcomp_x_1_3))) (split__d0 _lh_funcomp_x_1_2))) (disin__d0 _lh_funcomp_x_1_1))) (negin__d0 _lh_funcomp_x_1_0))) (elim__d0 _lh_funcomp_x_9))) (parse__d0 _lh_funcomp_x_8))) _lh_clauses_arg1_1)
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_7, t_2_9) -> 
      ((mappend__d0 h_2_7) (concat__d0 t_2_9))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_2_9, t_3_1) -> 
      ((mappend__d4 h_2_9) (concat__d1 t_3_1))
    | `LH_N -> 
      (`LH_N))
and disin__d0 _lh_disin_arg1_1 =
  (match _lh_disin_arg1_1 with
    | `Dis(_lh_disin_Dis_0_1, _lh_disin_Dis_1_1) -> 
      (match _lh_disin_Dis_1_1 with
        | `Con(_lh_disin_Con_0_3, _lh_disin_Con_1_3) -> 
          (`Con((disin__d0 (`Dis(_lh_disin_Dis_0_1, _lh_disin_Con_0_3))), (disin__d0 (`Dis(_lh_disin_Dis_0_1, _lh_disin_Con_1_3)))))
        | _ -> 
          (match _lh_disin_Dis_0_1 with
            | `Con(_lh_disin_Con_0_4, _lh_disin_Con_1_4) -> 
              (`Con((disin__d0 (`Dis(_lh_disin_Con_0_4, _lh_disin_Dis_1_1))), (disin__d0 (`Dis(_lh_disin_Con_1_4, _lh_disin_Dis_1_1)))))
            | _ -> 
              (let rec dp_1 = (disin__d0 _lh_disin_Dis_0_1) in
                (let rec dq_1 = (disin__d0 _lh_disin_Dis_1_1) in
                  (if ((conjunct__d0 dp_1) || (conjunct__d1 dq_1)) then
                    (disin__d0 (`Dis(dp_1, dq_1)))
                  else
                    (`Dis(dp_1, dq_1)))))))
    | `Con(_lh_disin_Con_0_5, _lh_disin_Con_1_5) -> 
      (`Con((disin__d0 _lh_disin_Con_0_5), (disin__d0 _lh_disin_Con_1_5)))
    | _ -> 
      _lh_disin_arg1_1)
and disp__d0 _lh_disp_arg1_1 =
  (match _lh_disp_arg1_1 with
    | `LH_P2(_lh_disp_LH_P2_0_1, _lh_disp_LH_P2_1_1) -> 
      ((mappend__d1 ((mappend__d2 ((interleave__d0 _lh_disp_LH_P2_0_1) (spaces__d0 (length__d0 _lh_disp_LH_P2_0_1)))) (`LH_C('<', (`LH_C('=', (`LH_N))))))) ((mappend__d3 ((interleave__d1 (spaces__d1 (length__d1 _lh_disp_LH_P2_1_1))) _lh_disp_LH_P2_1_1)) (`LH_C('n', (`LH_N)))))
    | _ -> 
      (failwith "error"))
and parseHelper__d0 _lh_parseHelper_arg1_1 _lh_parseHelper_arg2_1 =
  (match _lh_parseHelper_arg1_1 with
    | `LH_N -> 
      (redstar__d0 _lh_parseHelper_arg2_1)
    | `LH_C(_lh_parseHelper_LH_C_0_3, _lh_parseHelper_LH_C_1_3) -> 
      (match _lh_parseHelper_LH_C_0_3 with
        | ' ' -> 
          ((parseHelper__d0 _lh_parseHelper_LH_C_1_3) _lh_parseHelper_arg2_1)
        | '(' -> 
          ((parseHelper__d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_1)))
        | ')' -> 
          (let rec _lh_matchIdent_3 = (redstar__d1 _lh_parseHelper_arg2_1) in
            (match _lh_matchIdent_3 with
              | `LH_C(_lh_parseHelper_LH_C_0_4, _lh_parseHelper_LH_C_1_4) -> 
                (match _lh_parseHelper_LH_C_1_4 with
                  | `LH_C(_lh_parseHelper_LH_C_0_5, _lh_parseHelper_LH_C_1_5) -> 
                    (match _lh_parseHelper_LH_C_0_5 with
                      | `Lex(_lh_parseHelper_Lex_0_1) -> 
                        (match _lh_parseHelper_Lex_0_1 with
                          | '(' -> 
                            ((parseHelper__d0 _lh_parseHelper_LH_C_1_3) (`LH_C(_lh_parseHelper_LH_C_0_4, _lh_parseHelper_LH_C_1_5)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (if (('a' <= _lh_parseHelper_LH_C_0_3) && (_lh_parseHelper_LH_C_0_3 <= 'z')) then
            ((parseHelper__d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_3)))), _lh_parseHelper_arg2_1)))
          else
            (if ((spri__d2 _lh_parseHelper_arg2_1) > (opri__d0 _lh_parseHelper_LH_C_0_3)) then
              ((parseHelper__d0 (`LH_C(_lh_parseHelper_LH_C_0_3, _lh_parseHelper_LH_C_1_3))) (red__d0 _lh_parseHelper_arg2_1))
            else
              ((parseHelper__d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_3)), _lh_parseHelper_arg2_1))))))
    | _ -> 
      (failwith "error"))
and parse__d0 _lh_parse_arg1_1 =
  (let rec _lh_matchIdent_2 = ((parseHelper__d0 _lh_parse_arg1_1) (`LH_N)) in
    (match _lh_matchIdent_2 with
      | `LH_C(_lh_parse_LH_C_0_1, _lh_parse_LH_C_1_1) -> 
        (match _lh_parse_LH_C_0_1 with
          | `Ast(_lh_parse_Ast_0_1) -> 
            (match _lh_parse_LH_C_1_1 with
              | `LH_N -> 
                _lh_parse_Ast_0_1
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and redstar__d0 _lh_redstar_arg1_1 =
  (((while__d0 (fun _lh_funcomp_x_1_5 -> 
    (0 <> (spri__d0 _lh_funcomp_x_1_5)))) red__d1) _lh_redstar_arg1_1)
and redstar__d1 _lh_redstar_arg1_2 =
  (((while__d1 (fun _lh_funcomp_x_1_6 -> 
    (0 <> (spri__d1 _lh_funcomp_x_1_6)))) red__d2) _lh_redstar_arg1_2)
and spaces__d0 _lh_spaces_arg1_2 =
  ((copy__d0 _lh_spaces_arg1_2) ' ')
and spaces__d1 _lh_spaces_arg1_1 =
  ((copy__d1 _lh_spaces_arg1_1) ' ')
and split__d0 _lh_split_arg1_1 =
  ((splitHelper__d0 _lh_split_arg1_1) (`LH_N))
and spri__d0 _lh_spri_arg1_2 =
  (match _lh_spri_arg1_2 with
    | `LH_C(_lh_spri_LH_C_0_4, _lh_spri_LH_C_1_4) -> 
      (match _lh_spri_LH_C_0_4 with
        | `Ast(_lh_spri_Ast_0_2) -> 
          (match _lh_spri_LH_C_1_4 with
            | `LH_C(_lh_spri_LH_C_0_5, _lh_spri_LH_C_1_5) -> 
              (match _lh_spri_LH_C_0_5 with
                | `Lex(_lh_spri_Lex_0_2) -> 
                  (opri__d1 _lh_spri_Lex_0_2)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri__d1 _lh_spri_arg1_1 =
  (match _lh_spri_arg1_1 with
    | `LH_C(_lh_spri_LH_C_0_2, _lh_spri_LH_C_1_2) -> 
      (match _lh_spri_LH_C_0_2 with
        | `Ast(_lh_spri_Ast_0_1) -> 
          (match _lh_spri_LH_C_1_2 with
            | `LH_C(_lh_spri_LH_C_0_3, _lh_spri_LH_C_1_3) -> 
              (match _lh_spri_LH_C_0_3 with
                | `Lex(_lh_spri_Lex_0_1) -> 
                  (opri__d2 _lh_spri_Lex_0_1)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri__d2 _lh_spri_arg1_3 =
  (match _lh_spri_arg1_3 with
    | `LH_C(_lh_spri_LH_C_0_6, _lh_spri_LH_C_1_6) -> 
      (match _lh_spri_LH_C_0_6 with
        | `Ast(_lh_spri_Ast_0_3) -> 
          (match _lh_spri_LH_C_1_6 with
            | `LH_C(_lh_spri_LH_C_0_7, _lh_spri_LH_C_1_7) -> 
              (match _lh_spri_LH_C_0_7 with
                | `Lex(_lh_spri_Lex_0_3) -> 
                  (opri__d3 _lh_spri_Lex_0_3)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and tautclause__d0 _lh_tautclause_arg1_1 =
  (match _lh_tautclause_arg1_1 with
    | `LH_P2(_lh_tautclause_LH_P2_0_1, _lh_tautclause_LH_P2_1_1) -> 
      ((let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((contains__d0 _lh_listcomp_fun_ls_h_1) _lh_tautclause_LH_P2_1_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_tautclause_LH_P2_0_1)) <> (`LH_N))
    | _ -> 
      (failwith "error"))
and testClausify_nofib__d0 _lh_testClausify_nofib_arg1_1 =
  (let rec xs_1_3 = ((copy__d2 _lh_testClausify_nofib_arg1_1) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat__d1 ((map__d1 clauses__d0) xs_1_3)))
and uniclHelper__d0 _lh_uniclHelper_arg1_1 _lh_uniclHelper_arg2_1 =
  (let rec cp_1 = (clause__d0 _lh_uniclHelper_arg1_1) in
    (if (tautclause__d0 cp_1) then
      _lh_uniclHelper_arg2_1
    else
      ((insert__d2 cp_1) _lh_uniclHelper_arg2_1)))
and unicl__d0 _lh_unicl_arg1_1 =
  (((foldr__d0 uniclHelper__d0) (`LH_N)) _lh_unicl_arg1_1);;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec conjunct__d0 _lh_conjunct_arg1_0 =
  (match _lh_conjunct_arg1_0 with
    | `Con(_lh_conjunct_Con_0_0, _lh_conjunct_Con_1_0) -> 
      true
    | _ -> 
      false);;
let rec conjunct__d1 _lh_conjunct_arg1_1 =
  (match _lh_conjunct_arg1_1 with
    | `Con(_lh_conjunct_Con_0_1, _lh_conjunct_Con_1_1) -> 
      true
    | _ -> 
      false);;
let rec contains__d0 _lh_contains_arg1_0 _lh_contains_arg2_0 =
  (match _lh_contains_arg2_0 with
    | `LH_C(_lh_contains_LH_C_0_0, _lh_contains_LH_C_1_0) -> 
      ((_lh_contains_arg1_0 = _lh_contains_LH_C_0_0) || ((contains__d0 _lh_contains_arg1_0) _lh_contains_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy__d1 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy__d1 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec elim__d0 _lh_elim_arg1_0 =
  (match _lh_elim_arg1_0 with
    | `Sym(_lh_elim_Sym_0_0) -> 
      (`Sym(_lh_elim_Sym_0_0))
    | `Not(_lh_elim_Not_0_0) -> 
      (`Not((elim__d0 _lh_elim_Not_0_0)))
    | `Dis(_lh_elim_Dis_0_0, _lh_elim_Dis_1_0) -> 
      (`Dis((elim__d0 _lh_elim_Dis_0_0), (elim__d0 _lh_elim_Dis_1_0)))
    | `Con(_lh_elim_Con_0_0, _lh_elim_Con_1_0) -> 
      (`Con((elim__d0 _lh_elim_Con_0_0), (elim__d0 _lh_elim_Con_1_0)))
    | `Imp(_lh_elim_Imp_0_0, _lh_elim_Imp_1_0) -> 
      (`Dis((`Not((elim__d0 _lh_elim_Imp_0_0))), (elim__d0 _lh_elim_Imp_1_0)))
    | `Eqv(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0) -> 
      (`Con((elim__d0 (`Imp(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0))), (elim__d0 (`Imp(_lh_elim_Eqv_1_0, _lh_elim_Eqv_0_0)))))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_0 i_0 ls_0 =
  ((ls_0 f_0) i_0);;
let rec insert__d0 _lh_insert_arg1_0 _lh_insert_arg2_0 =
  (match _lh_insert_arg2_0 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_0, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
      (if (_lh_insert_arg1_0 < _lh_insert_LH_C_0_0) then
        (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
      else
        (if (_lh_insert_arg1_0 > _lh_insert_LH_C_0_0) then
          (`LH_C(_lh_insert_LH_C_0_0, ((insert__d0 _lh_insert_arg1_0) _lh_insert_LH_C_1_0)))
        else
          (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec insert__d1 _lh_insert_arg1_1 _lh_insert_arg2_1 =
  (match _lh_insert_arg2_1 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_1, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
      (if (_lh_insert_arg1_1 < _lh_insert_LH_C_0_1) then
        (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
      else
        (if (_lh_insert_arg1_1 > _lh_insert_LH_C_0_1) then
          (`LH_C(_lh_insert_LH_C_0_1, ((insert__d1 _lh_insert_arg1_1) _lh_insert_LH_C_1_1)))
        else
          (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec insert__d2 _lh_insert_arg1_2 _lh_insert_arg2_2 =
  (match _lh_insert_arg2_2 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_2, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
      (if (_lh_insert_arg1_2 < _lh_insert_LH_C_0_2) then
        (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
      else
        (if (_lh_insert_arg1_2 > _lh_insert_LH_C_0_2) then
          (`LH_C(_lh_insert_LH_C_0_2, ((insert__d2 _lh_insert_arg1_2) _lh_insert_LH_C_1_2)))
        else
          (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_7, t_1_7) -> 
      (1 + (length__d0 t_1_7))
    | `LH_N -> 
      0);;
let rec length__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_3, t_1_3) -> 
      (1 + (length__d1 t_1_3))
    | `LH_N -> 
      0);;
let rec map__d1 f_4 ls_1 =
  (ls_1 f_4);;
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d1 xs_2 ys_3 =
  (xs_2 ys_3);;
let rec mappend__d2 xs_4 ys_1_4 =
  (xs_4 ys_1_4);;
let rec mappend__d3 xs_5 ys_1_5 =
  (xs_5 ys_1_5);;
let rec mappend__d4 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec negin__d0 _lh_negin_arg1_0 =
  (match _lh_negin_arg1_0 with
    | `Not(_lh_negin_Not_0_0) -> 
      (match _lh_negin_Not_0_0 with
        | `Not(_lh_negin_Not_0_1) -> 
          (negin__d0 _lh_negin_Not_0_1)
        | `Con(_lh_negin_Con_0_0, _lh_negin_Con_1_0) -> 
          (`Dis((negin__d0 (`Not(_lh_negin_Con_0_0))), (negin__d0 (`Not(_lh_negin_Con_1_0)))))
        | `Dis(_lh_negin_Dis_0_0, _lh_negin_Dis_1_0) -> 
          (`Con((negin__d0 (`Not(_lh_negin_Dis_0_0))), (negin__d0 (`Not(_lh_negin_Dis_1_0)))))
        | _ -> 
          _lh_negin_arg1_0)
    | `Dis(_lh_negin_Dis_0_1, _lh_negin_Dis_1_1) -> 
      (`Dis((negin__d0 _lh_negin_Dis_0_1), (negin__d0 _lh_negin_Dis_1_1)))
    | `Con(_lh_negin_Con_0_1, _lh_negin_Con_1_1) -> 
      (`Con((negin__d0 _lh_negin_Con_0_1), (negin__d0 _lh_negin_Con_1_1)))
    | _ -> 
      _lh_negin_arg1_0);;
let rec opri__d0 _lh_opri_arg1_3 =
  (match _lh_opri_arg1_3 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d1 _lh_opri_arg1_2 =
  (match _lh_opri_arg1_2 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d2 _lh_opri_arg1_0 =
  (match _lh_opri_arg1_0 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d3 _lh_opri_arg1_1 =
  (match _lh_opri_arg1_1 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec red__d0 _lh_red_arg1_0 =
  (match _lh_red_arg1_0 with
    | `LH_C(_lh_red_LH_C_0_0, _lh_red_LH_C_1_0) -> 
      (match _lh_red_LH_C_0_0 with
        | `Ast(_lh_red_Ast_0_0) -> 
          (match _lh_red_LH_C_1_0 with
            | `LH_C(_lh_red_LH_C_0_1, _lh_red_LH_C_1_1) -> 
              (match _lh_red_LH_C_0_1 with
                | `Lex(_lh_red_Lex_0_0) -> 
                  (match _lh_red_Lex_0_0 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_2, _lh_red_LH_C_1_2) -> 
                          (match _lh_red_LH_C_0_2 with
                            | `Ast(_lh_red_Ast_0_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_2))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_3, _lh_red_LH_C_1_3) -> 
                          (match _lh_red_LH_C_0_3 with
                            | `Ast(_lh_red_Ast_0_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_2, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_3))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_4, _lh_red_LH_C_1_4) -> 
                          (match _lh_red_LH_C_0_4 with
                            | `Ast(_lh_red_Ast_0_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_3, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_4))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_5, _lh_red_LH_C_1_5) -> 
                          (match _lh_red_LH_C_0_5 with
                            | `Ast(_lh_red_Ast_0_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_4, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_5))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_0)))), _lh_red_LH_C_1_1))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec red__d1 _lh_red_arg1_2 =
  (match _lh_red_arg1_2 with
    | `LH_C(_lh_red_LH_C_0_1_2, _lh_red_LH_C_1_1_2) -> 
      (match _lh_red_LH_C_0_1_2 with
        | `Ast(_lh_red_Ast_0_1_0) -> 
          (match _lh_red_LH_C_1_1_2 with
            | `LH_C(_lh_red_LH_C_0_1_3, _lh_red_LH_C_1_1_3) -> 
              (match _lh_red_LH_C_0_1_3 with
                | `Lex(_lh_red_Lex_0_2) -> 
                  (match _lh_red_Lex_0_2 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_4, _lh_red_LH_C_1_1_4) -> 
                          (match _lh_red_LH_C_0_1_4 with
                            | `Ast(_lh_red_Ast_0_1_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1_1, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_4))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_5, _lh_red_LH_C_1_1_5) -> 
                          (match _lh_red_LH_C_0_1_5 with
                            | `Ast(_lh_red_Ast_0_1_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_2, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_5))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_6, _lh_red_LH_C_1_1_6) -> 
                          (match _lh_red_LH_C_0_1_6 with
                            | `Ast(_lh_red_Ast_0_1_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_3, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_6))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_7, _lh_red_LH_C_1_1_7) -> 
                          (match _lh_red_LH_C_0_1_7 with
                            | `Ast(_lh_red_Ast_0_1_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_4, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_7))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_3))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec red__d2 _lh_red_arg1_1 =
  (match _lh_red_arg1_1 with
    | `LH_C(_lh_red_LH_C_0_6, _lh_red_LH_C_1_6) -> 
      (match _lh_red_LH_C_0_6 with
        | `Ast(_lh_red_Ast_0_5) -> 
          (match _lh_red_LH_C_1_6 with
            | `LH_C(_lh_red_LH_C_0_7, _lh_red_LH_C_1_7) -> 
              (match _lh_red_LH_C_0_7 with
                | `Lex(_lh_red_Lex_0_1) -> 
                  (match _lh_red_Lex_0_1 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_8, _lh_red_LH_C_1_8) -> 
                          (match _lh_red_LH_C_0_8 with
                            | `Ast(_lh_red_Ast_0_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_6, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_8))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_9, _lh_red_LH_C_1_9) -> 
                          (match _lh_red_LH_C_0_9 with
                            | `Ast(_lh_red_Ast_0_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_7, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_9))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_0, _lh_red_LH_C_1_1_0) -> 
                          (match _lh_red_LH_C_0_1_0 with
                            | `Ast(_lh_red_Ast_0_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_8, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_0))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_1, _lh_red_LH_C_1_1_1) -> 
                          (match _lh_red_LH_C_0_1_1 with
                            | `Ast(_lh_red_Ast_0_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_9, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_1))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_5)))), _lh_red_LH_C_1_7))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec while__d0 _lh_while_arg1_0 _lh_while_arg2_0 _lh_while_arg3_0 =
  (if (_lh_while_arg1_0 _lh_while_arg3_0) then
    (((while__d0 _lh_while_arg1_0) _lh_while_arg2_0) (_lh_while_arg2_0 _lh_while_arg3_0))
  else
    _lh_while_arg3_0);;
let rec while__d1 _lh_while_arg1_1 _lh_while_arg2_1 _lh_while_arg3_1 =
  (if (_lh_while_arg1_1 _lh_while_arg3_1) then
    (((while__d1 _lh_while_arg1_1) _lh_while_arg2_1) (_lh_while_arg2_1 _lh_while_arg3_1))
  else
    _lh_while_arg3_1);;
let rec clauseHelper__d0 _lh_clauseHelper_arg1_0 _lh_clauseHelper_arg2_0 =
  (match _lh_clauseHelper_arg1_0 with
    | `Dis(_lh_clauseHelper_Dis_0_0, _lh_clauseHelper_Dis_1_0) -> 
      ((clauseHelper__d0 _lh_clauseHelper_Dis_0_0) ((clauseHelper__d0 _lh_clauseHelper_Dis_1_0) _lh_clauseHelper_arg2_0))
    | `Sym(_lh_clauseHelper_Sym_0_0) -> 
      (match _lh_clauseHelper_arg2_0 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_0, _lh_clauseHelper_LH_P2_1_0) -> 
          (`LH_P2(((insert__d0 _lh_clauseHelper_Sym_0_0) _lh_clauseHelper_LH_P2_0_0), _lh_clauseHelper_LH_P2_1_0))
        | _ -> 
          (failwith "error"))
    | `Not(_lh_clauseHelper_Not_0_0) -> 
      (match _lh_clauseHelper_Not_0_0 with
        | `Sym(_lh_clauseHelper_Sym_0_1) -> 
          (match _lh_clauseHelper_arg2_0 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_1, _lh_clauseHelper_LH_P2_1_1) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_1, ((insert__d1 _lh_clauseHelper_Sym_0_1) _lh_clauseHelper_LH_P2_1_1)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and clause__d0 _lh_clause_arg1_0 =
  ((clauseHelper__d0 _lh_clause_arg1_0) (`LH_P2((`LH_N), (`LH_N))))
and clauses__d0 _lh_clauses_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun _lh_funcomp_x_4 -> 
            ((fun _lh_funcomp_x_5 -> 
              ((fun _lh_funcomp_x_6 -> 
                (concat__d0 ((map__d0 disp__d0) _lh_funcomp_x_6))) (unicl__d0 _lh_funcomp_x_5))) (split__d0 _lh_funcomp_x_4))) (disin__d0 _lh_funcomp_x_3))) (negin__d0 _lh_funcomp_x_2))) (elim__d0 _lh_funcomp_x_1))) (parse__d0 _lh_funcomp_x_0))) _lh_clauses_arg1_0)
and copy__d2 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (let rec t_0 = ((copy__d2 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_0 = _lh_copy_arg2_0 in
        (fun f_2 -> 
          (let rec t_1 = ((map__d1 f_2) t_0) in
            (let rec h_1 = (f_2 h_0) in
              (fun _lh_dummy_0 -> 
                ((mappend__d4 h_1) (concat__d1 t_1))))))))
  else
    (fun f_3 _lh_dummy_1 -> 
      (`LH_N)))
and disin__d0 _lh_disin_arg1_0 =
  (match _lh_disin_arg1_0 with
    | `Dis(_lh_disin_Dis_0_0, _lh_disin_Dis_1_0) -> 
      (match _lh_disin_Dis_1_0 with
        | `Con(_lh_disin_Con_0_0, _lh_disin_Con_1_0) -> 
          (`Con((disin__d0 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_0_0))), (disin__d0 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_1_0)))))
        | _ -> 
          (match _lh_disin_Dis_0_0 with
            | `Con(_lh_disin_Con_0_1, _lh_disin_Con_1_1) -> 
              (`Con((disin__d0 (`Dis(_lh_disin_Con_0_1, _lh_disin_Dis_1_0))), (disin__d0 (`Dis(_lh_disin_Con_1_1, _lh_disin_Dis_1_0)))))
            | _ -> 
              (let rec dp_0 = (disin__d0 _lh_disin_Dis_0_0) in
                (let rec dq_0 = (disin__d0 _lh_disin_Dis_1_0) in
                  (if ((conjunct__d0 dp_0) || (conjunct__d1 dq_0)) then
                    (disin__d0 (`Dis(dp_0, dq_0)))
                  else
                    (`Dis(dp_0, dq_0)))))))
    | `Con(_lh_disin_Con_0_2, _lh_disin_Con_1_2) -> 
      (`Con((disin__d0 _lh_disin_Con_0_2), (disin__d0 _lh_disin_Con_1_2)))
    | _ -> 
      _lh_disin_arg1_0)
and disp__d0 _lh_disp_arg1_0 =
  (match _lh_disp_arg1_0 with
    | `LH_P2(_lh_disp_LH_P2_0_0, _lh_disp_LH_P2_1_0) -> 
      ((mappend__d1 ((mappend__d2 ((interleave__d0 _lh_disp_LH_P2_0_0) (spaces__d0 (length__d0 _lh_disp_LH_P2_0_0)))) (let rec t_5 = (let rec t_6 = (fun ys_4 -> 
        ys_4) in
        (let rec h_5 = '=' in
          (fun ys_5 -> 
            (let rec t_7 = ((mappend__d1 t_6) ys_5) in
              (let rec h_6 = h_5 in
                (fun ys_6 -> 
                  (let rec t_8 = ((mappend__d0 t_7) ys_6) in
                    (let rec h_7 = h_6 in
                      (fun ys_7 -> 
                        (`LH_C(h_7, ((mappend__d4 t_8) ys_7)))))))))))) in
        (let rec h_8 = '<' in
          (fun ys_8 -> 
            (let rec t_9 = ((mappend__d1 t_5) ys_8) in
              (let rec h_9 = h_8 in
                (fun ys_9 -> 
                  (let rec t_1_0 = ((mappend__d0 t_9) ys_9) in
                    (let rec h_1_0 = h_9 in
                      (fun ys_1_0 -> 
                        (`LH_C(h_1_0, ((mappend__d4 t_1_0) ys_1_0)))))))))))))) ((mappend__d3 ((interleave__d1 (spaces__d1 (length__d1 _lh_disp_LH_P2_1_0))) _lh_disp_LH_P2_1_0)) (let rec t_1_1 = (fun ys_1_1 -> 
        ys_1_1) in
        (let rec h_1_1 = 'n' in
          (fun ys_1_2 -> 
            (let rec t_1_2 = ((mappend__d0 t_1_1) ys_1_2) in
              (let rec h_1_2 = h_1_1 in
                (fun ys_1_3 -> 
                  (`LH_C(h_1_2, ((mappend__d4 t_1_2) ys_1_3)))))))))))
    | _ -> 
      (failwith "error"))
and interleave__d0 _lh_interleave_arg1_1 _lh_interleave_arg2_1 =
  (match _lh_interleave_arg1_1 with
    | `LH_C(_lh_interleave_LH_C_0_1, _lh_interleave_LH_C_1_1) -> 
      (let rec t_1_8 = ((interleave__d0 _lh_interleave_arg2_1) _lh_interleave_LH_C_1_1) in
        (let rec h_1_8 = _lh_interleave_LH_C_0_1 in
          (fun ys_2_0 -> 
            (let rec t_1_9 = ((mappend__d2 t_1_8) ys_2_0) in
              (let rec h_1_9 = h_1_8 in
                (fun ys_2_1 -> 
                  (let rec t_2_0 = ((mappend__d1 t_1_9) ys_2_1) in
                    (let rec h_2_0 = h_1_9 in
                      (fun ys_2_2 -> 
                        (let rec t_2_1 = ((mappend__d0 t_2_0) ys_2_2) in
                          (let rec h_2_1 = h_2_0 in
                            (fun ys_2_3 -> 
                              (`LH_C(h_2_1, ((mappend__d4 t_2_1) ys_2_3)))))))))))))))
    | `LH_N -> 
      (fun ys_2_4 -> 
        ys_2_4)
    | _ -> 
      (failwith "error"))
and interleave__d1 _lh_interleave_arg1_0 _lh_interleave_arg2_0 =
  (match _lh_interleave_arg1_0 with
    | `LH_C(_lh_interleave_LH_C_0_0, _lh_interleave_LH_C_1_0) -> 
      (let rec t_1_4 = ((interleave__d1 _lh_interleave_arg2_0) _lh_interleave_LH_C_1_0) in
        (let rec h_1_4 = _lh_interleave_LH_C_0_0 in
          (fun ys_1_6 -> 
            (let rec t_1_5 = ((mappend__d3 t_1_4) ys_1_6) in
              (let rec h_1_5 = h_1_4 in
                (fun ys_1_7 -> 
                  (let rec t_1_6 = ((mappend__d0 t_1_5) ys_1_7) in
                    (let rec h_1_6 = h_1_5 in
                      (fun ys_1_8 -> 
                        (`LH_C(h_1_6, ((mappend__d4 t_1_6) ys_1_8))))))))))))
    | `LH_N -> 
      (fun ys_1_9 -> 
        ys_1_9)
    | _ -> 
      (failwith "error"))
and map__d0 f_5 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map__d0 f_5) t_2) in
        (let rec h_3 = (f_5 h_2) in
          (fun _lh_dummy_2 -> 
            ((mappend__d0 h_3) (concat__d0 t_3)))))
    | `LH_N -> 
      (fun _lh_dummy_3 ys_2 -> 
        ys_2))
and parseHelper__d0 _lh_parseHelper_arg1_0 _lh_parseHelper_arg2_0 =
  (match _lh_parseHelper_arg1_0 with
    | `LH_N -> 
      (redstar__d0 _lh_parseHelper_arg2_0)
    | `LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0) -> 
      (match _lh_parseHelper_LH_C_0_0 with
        | ' ' -> 
          ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) _lh_parseHelper_arg2_0)
        | '(' -> 
          ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_0)))
        | ')' -> 
          (let rec _lh_matchIdent_0 = (redstar__d1 _lh_parseHelper_arg2_0) in
            (match _lh_matchIdent_0 with
              | `LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_1) -> 
                (match _lh_parseHelper_LH_C_1_1 with
                  | `LH_C(_lh_parseHelper_LH_C_0_2, _lh_parseHelper_LH_C_1_2) -> 
                    (match _lh_parseHelper_LH_C_0_2 with
                      | `Lex(_lh_parseHelper_Lex_0_0) -> 
                        (match _lh_parseHelper_Lex_0_0 with
                          | '(' -> 
                            ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_2)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (if (('a' <= _lh_parseHelper_LH_C_0_0) && (_lh_parseHelper_LH_C_0_0 <= 'z')) then
            ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_0)))), _lh_parseHelper_arg2_0)))
          else
            (if ((spri__d2 _lh_parseHelper_arg2_0) > (opri__d0 _lh_parseHelper_LH_C_0_0)) then
              ((parseHelper__d0 (`LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0))) (red__d0 _lh_parseHelper_arg2_0))
            else
              ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_0)), _lh_parseHelper_arg2_0))))))
    | _ -> 
      (failwith "error"))
and parse__d0 _lh_parse_arg1_0 =
  (let rec _lh_matchIdent_1 = ((parseHelper__d0 _lh_parse_arg1_0) (`LH_N)) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_parse_LH_C_0_0, _lh_parse_LH_C_1_0) -> 
        (match _lh_parse_LH_C_0_0 with
          | `Ast(_lh_parse_Ast_0_0) -> 
            (match _lh_parse_LH_C_1_0 with
              | `LH_N -> 
                _lh_parse_Ast_0_0
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and redstar__d0 _lh_redstar_arg1_0 =
  (((while__d0 (fun _lh_funcomp_x_7 -> 
    (0 <> (spri__d0 _lh_funcomp_x_7)))) red__d1) _lh_redstar_arg1_0)
and redstar__d1 _lh_redstar_arg1_1 =
  (((while__d1 (fun _lh_funcomp_x_8 -> 
    (0 <> (spri__d1 _lh_funcomp_x_8)))) red__d2) _lh_redstar_arg1_1)
and spaces__d0 _lh_spaces_arg1_1 =
  ((copy__d0 _lh_spaces_arg1_1) ' ')
and spaces__d1 _lh_spaces_arg1_0 =
  ((copy__d1 _lh_spaces_arg1_0) ' ')
and splitHelper__d0 _lh_splitHelper_arg1_0 _lh_splitHelper_arg2_0 =
  (match _lh_splitHelper_arg1_0 with
    | `Con(_lh_splitHelper_Con_0_0, _lh_splitHelper_Con_1_0) -> 
      ((splitHelper__d0 _lh_splitHelper_Con_0_0) ((splitHelper__d0 _lh_splitHelper_Con_1_0) _lh_splitHelper_arg2_0))
    | _ -> 
      (let rec t_4 = _lh_splitHelper_arg2_0 in
        (let rec h_4 = _lh_splitHelper_arg1_0 in
          (fun f_6 i_2 -> 
            ((f_6 h_4) (((foldr__d0 f_6) i_2) t_4))))))
and split__d0 _lh_split_arg1_0 =
  ((splitHelper__d0 _lh_split_arg1_0) (fun f_1 i_1 -> 
    i_1))
and spri__d0 _lh_spri_arg1_2 =
  (match _lh_spri_arg1_2 with
    | `LH_C(_lh_spri_LH_C_0_4, _lh_spri_LH_C_1_4) -> 
      (match _lh_spri_LH_C_0_4 with
        | `Ast(_lh_spri_Ast_0_2) -> 
          (match _lh_spri_LH_C_1_4 with
            | `LH_C(_lh_spri_LH_C_0_5, _lh_spri_LH_C_1_5) -> 
              (match _lh_spri_LH_C_0_5 with
                | `Lex(_lh_spri_Lex_0_2) -> 
                  (opri__d1 _lh_spri_Lex_0_2)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri__d1 _lh_spri_arg1_1 =
  (match _lh_spri_arg1_1 with
    | `LH_C(_lh_spri_LH_C_0_2, _lh_spri_LH_C_1_2) -> 
      (match _lh_spri_LH_C_0_2 with
        | `Ast(_lh_spri_Ast_0_1) -> 
          (match _lh_spri_LH_C_1_2 with
            | `LH_C(_lh_spri_LH_C_0_3, _lh_spri_LH_C_1_3) -> 
              (match _lh_spri_LH_C_0_3 with
                | `Lex(_lh_spri_Lex_0_1) -> 
                  (opri__d2 _lh_spri_Lex_0_1)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri__d2 _lh_spri_arg1_0 =
  (match _lh_spri_arg1_0 with
    | `LH_C(_lh_spri_LH_C_0_0, _lh_spri_LH_C_1_0) -> 
      (match _lh_spri_LH_C_0_0 with
        | `Ast(_lh_spri_Ast_0_0) -> 
          (match _lh_spri_LH_C_1_0 with
            | `LH_C(_lh_spri_LH_C_0_1, _lh_spri_LH_C_1_1) -> 
              (match _lh_spri_LH_C_0_1 with
                | `Lex(_lh_spri_Lex_0_0) -> 
                  (opri__d3 _lh_spri_Lex_0_0)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and tautclause__d0 _lh_tautclause_arg1_0 =
  (match _lh_tautclause_arg1_0 with
    | `LH_P2(_lh_tautclause_LH_P2_0_0, _lh_tautclause_LH_P2_1_0) -> 
      ((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((contains__d0 _lh_listcomp_fun_ls_h_0) _lh_tautclause_LH_P2_1_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_tautclause_LH_P2_0_0)) <> (`LH_N))
    | _ -> 
      (failwith "error"))
and testClausify_nofib__d0 _lh_testClausify_nofib_arg1_0 =
  (let rec xs_3 = ((copy__d2 _lh_testClausify_nofib_arg1_0) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat__d1 ((map__d1 clauses__d0) xs_3)))
and uniclHelper__d0 _lh_uniclHelper_arg1_0 _lh_uniclHelper_arg2_0 =
  (let rec cp_0 = (clause__d0 _lh_uniclHelper_arg1_0) in
    (if (tautclause__d0 cp_0) then
      _lh_uniclHelper_arg2_0
    else
      ((insert__d2 cp_0) _lh_uniclHelper_arg2_0)))
and unicl__d0 _lh_unicl_arg1_0 =
  (((foldr__d0 uniclHelper__d0) (`LH_N)) _lh_unicl_arg1_0);;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec conjunct__d0 _lh_conjunct_arg1_0 =
  (match _lh_conjunct_arg1_0 with
    | `Con(_lh_conjunct_Con_0_0, _lh_conjunct_Con_1_0) -> 
      true
    | _ -> 
      false);;
let rec conjunct__d1 _lh_conjunct_arg1_1 =
  (match _lh_conjunct_arg1_1 with
    | `Con(_lh_conjunct_Con_0_1, _lh_conjunct_Con_1_1) -> 
      true
    | _ -> 
      false);;
let rec contains__d0 _lh_contains_arg1_0 _lh_contains_arg2_0 =
  (match _lh_contains_arg2_0 with
    | `LH_C(_lh_contains_LH_C_0_0, _lh_contains_LH_C_1_0) -> 
      ((_lh_contains_arg1_0 = _lh_contains_LH_C_0_0) || ((contains__d0 _lh_contains_arg1_0) _lh_contains_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy__d1 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy__d1 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec elim__d0 _lh_elim_arg1_0 =
  (match _lh_elim_arg1_0 with
    | `Sym(_lh_elim_Sym_0_0) -> 
      (`Sym(_lh_elim_Sym_0_0))
    | `Not(_lh_elim_Not_0_0) -> 
      (`Not((elim__d0 _lh_elim_Not_0_0)))
    | `Dis(_lh_elim_Dis_0_0, _lh_elim_Dis_1_0) -> 
      (`Dis((elim__d0 _lh_elim_Dis_0_0), (elim__d0 _lh_elim_Dis_1_0)))
    | `Con(_lh_elim_Con_0_0, _lh_elim_Con_1_0) -> 
      (`Con((elim__d0 _lh_elim_Con_0_0), (elim__d0 _lh_elim_Con_1_0)))
    | `Imp(_lh_elim_Imp_0_0, _lh_elim_Imp_1_0) -> 
      (`Dis((`Not((elim__d0 _lh_elim_Imp_0_0))), (elim__d0 _lh_elim_Imp_1_0)))
    | `Eqv(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0) -> 
      (`Con((elim__d0 (`Imp(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0))), (elim__d0 (`Imp(_lh_elim_Eqv_1_0, _lh_elim_Eqv_0_0)))))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_0 i_0 ls_0 =
  ((ls_0 f_0) i_0);;
let rec insert__d0 _lh_insert_arg1_0 _lh_insert_arg2_0 =
  (match _lh_insert_arg2_0 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_0, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
      (if (_lh_insert_arg1_0 < _lh_insert_LH_C_0_0) then
        (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
      else
        (if (_lh_insert_arg1_0 > _lh_insert_LH_C_0_0) then
          (`LH_C(_lh_insert_LH_C_0_0, ((insert__d0 _lh_insert_arg1_0) _lh_insert_LH_C_1_0)))
        else
          (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec insert__d1 _lh_insert_arg1_1 _lh_insert_arg2_1 =
  (match _lh_insert_arg2_1 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_1, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
      (if (_lh_insert_arg1_1 < _lh_insert_LH_C_0_1) then
        (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
      else
        (if (_lh_insert_arg1_1 > _lh_insert_LH_C_0_1) then
          (`LH_C(_lh_insert_LH_C_0_1, ((insert__d1 _lh_insert_arg1_1) _lh_insert_LH_C_1_1)))
        else
          (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec insert__d2 _lh_insert_arg1_2 _lh_insert_arg2_2 =
  (match _lh_insert_arg2_2 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_2, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
      (if (_lh_insert_arg1_2 < _lh_insert_LH_C_0_2) then
        (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
      else
        (if (_lh_insert_arg1_2 > _lh_insert_LH_C_0_2) then
          (`LH_C(_lh_insert_LH_C_0_2, ((insert__d2 _lh_insert_arg1_2) _lh_insert_LH_C_1_2)))
        else
          (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_7, t_1_7) -> 
      (1 + (length__d0 t_1_7))
    | `LH_N -> 
      0);;
let rec length__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_3, t_1_3) -> 
      (1 + (length__d1 t_1_3))
    | `LH_N -> 
      0);;
let rec map__d1 f_4 ls_1 =
  (ls_1 f_4);;
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d1 xs_2 ys_3 =
  (xs_2 ys_3);;
let rec mappend__d2 xs_4 ys_1_4 =
  (xs_4 ys_1_4);;
let rec mappend__d3 xs_5 ys_1_5 =
  (xs_5 ys_1_5);;
let rec mappend__d4 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec negin__d0 _lh_negin_arg1_0 =
  (match _lh_negin_arg1_0 with
    | `Not(_lh_negin_Not_0_0) -> 
      (match _lh_negin_Not_0_0 with
        | `Not(_lh_negin_Not_0_1) -> 
          (negin__d0 _lh_negin_Not_0_1)
        | `Con(_lh_negin_Con_0_0, _lh_negin_Con_1_0) -> 
          (`Dis((negin__d0 (`Not(_lh_negin_Con_0_0))), (negin__d0 (`Not(_lh_negin_Con_1_0)))))
        | `Dis(_lh_negin_Dis_0_0, _lh_negin_Dis_1_0) -> 
          (`Con((negin__d0 (`Not(_lh_negin_Dis_0_0))), (negin__d0 (`Not(_lh_negin_Dis_1_0)))))
        | _ -> 
          _lh_negin_arg1_0)
    | `Dis(_lh_negin_Dis_0_1, _lh_negin_Dis_1_1) -> 
      (`Dis((negin__d0 _lh_negin_Dis_0_1), (negin__d0 _lh_negin_Dis_1_1)))
    | `Con(_lh_negin_Con_0_1, _lh_negin_Con_1_1) -> 
      (`Con((negin__d0 _lh_negin_Con_0_1), (negin__d0 _lh_negin_Con_1_1)))
    | _ -> 
      _lh_negin_arg1_0);;
let rec opri__d0 _lh_opri_arg1_3 =
  (match _lh_opri_arg1_3 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d1 _lh_opri_arg1_2 =
  (match _lh_opri_arg1_2 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d2 _lh_opri_arg1_0 =
  (match _lh_opri_arg1_0 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec opri__d3 _lh_opri_arg1_1 =
  (match _lh_opri_arg1_1 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec red__d0 _lh_red_arg1_0 =
  (match _lh_red_arg1_0 with
    | `LH_C(_lh_red_LH_C_0_0, _lh_red_LH_C_1_0) -> 
      (match _lh_red_LH_C_0_0 with
        | `Ast(_lh_red_Ast_0_0) -> 
          (match _lh_red_LH_C_1_0 with
            | `LH_C(_lh_red_LH_C_0_1, _lh_red_LH_C_1_1) -> 
              (match _lh_red_LH_C_0_1 with
                | `Lex(_lh_red_Lex_0_0) -> 
                  (match _lh_red_Lex_0_0 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_2, _lh_red_LH_C_1_2) -> 
                          (match _lh_red_LH_C_0_2 with
                            | `Ast(_lh_red_Ast_0_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_2))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_3, _lh_red_LH_C_1_3) -> 
                          (match _lh_red_LH_C_0_3 with
                            | `Ast(_lh_red_Ast_0_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_2, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_3))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_4, _lh_red_LH_C_1_4) -> 
                          (match _lh_red_LH_C_0_4 with
                            | `Ast(_lh_red_Ast_0_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_3, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_4))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_5, _lh_red_LH_C_1_5) -> 
                          (match _lh_red_LH_C_0_5 with
                            | `Ast(_lh_red_Ast_0_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_4, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_5))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_0)))), _lh_red_LH_C_1_1))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec red__d1 _lh_red_arg1_2 =
  (match _lh_red_arg1_2 with
    | `LH_C(_lh_red_LH_C_0_1_2, _lh_red_LH_C_1_1_2) -> 
      (match _lh_red_LH_C_0_1_2 with
        | `Ast(_lh_red_Ast_0_1_0) -> 
          (match _lh_red_LH_C_1_1_2 with
            | `LH_C(_lh_red_LH_C_0_1_3, _lh_red_LH_C_1_1_3) -> 
              (match _lh_red_LH_C_0_1_3 with
                | `Lex(_lh_red_Lex_0_2) -> 
                  (match _lh_red_Lex_0_2 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_4, _lh_red_LH_C_1_1_4) -> 
                          (match _lh_red_LH_C_0_1_4 with
                            | `Ast(_lh_red_Ast_0_1_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1_1, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_4))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_5, _lh_red_LH_C_1_1_5) -> 
                          (match _lh_red_LH_C_0_1_5 with
                            | `Ast(_lh_red_Ast_0_1_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_2, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_5))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_6, _lh_red_LH_C_1_1_6) -> 
                          (match _lh_red_LH_C_0_1_6 with
                            | `Ast(_lh_red_Ast_0_1_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_3, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_6))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_7, _lh_red_LH_C_1_1_7) -> 
                          (match _lh_red_LH_C_0_1_7 with
                            | `Ast(_lh_red_Ast_0_1_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_4, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_7))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_3))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec red__d2 _lh_red_arg1_1 =
  (match _lh_red_arg1_1 with
    | `LH_C(_lh_red_LH_C_0_6, _lh_red_LH_C_1_6) -> 
      (match _lh_red_LH_C_0_6 with
        | `Ast(_lh_red_Ast_0_5) -> 
          (match _lh_red_LH_C_1_6 with
            | `LH_C(_lh_red_LH_C_0_7, _lh_red_LH_C_1_7) -> 
              (match _lh_red_LH_C_0_7 with
                | `Lex(_lh_red_Lex_0_1) -> 
                  (match _lh_red_Lex_0_1 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_8, _lh_red_LH_C_1_8) -> 
                          (match _lh_red_LH_C_0_8 with
                            | `Ast(_lh_red_Ast_0_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_6, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_8))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_9, _lh_red_LH_C_1_9) -> 
                          (match _lh_red_LH_C_0_9 with
                            | `Ast(_lh_red_Ast_0_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_7, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_9))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_0, _lh_red_LH_C_1_1_0) -> 
                          (match _lh_red_LH_C_0_1_0 with
                            | `Ast(_lh_red_Ast_0_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_8, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_0))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_1, _lh_red_LH_C_1_1_1) -> 
                          (match _lh_red_LH_C_0_1_1 with
                            | `Ast(_lh_red_Ast_0_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_9, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_1))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_5)))), _lh_red_LH_C_1_7))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec while__d0 _lh_while_arg1_0 _lh_while_arg2_0 _lh_while_arg3_0 =
  (if (_lh_while_arg1_0 _lh_while_arg3_0) then
    (((while__d0 _lh_while_arg1_0) _lh_while_arg2_0) (_lh_while_arg2_0 _lh_while_arg3_0))
  else
    _lh_while_arg3_0);;
let rec while__d1 _lh_while_arg1_1 _lh_while_arg2_1 _lh_while_arg3_1 =
  (if (_lh_while_arg1_1 _lh_while_arg3_1) then
    (((while__d1 _lh_while_arg1_1) _lh_while_arg2_1) (_lh_while_arg2_1 _lh_while_arg3_1))
  else
    _lh_while_arg3_1);;
let rec clauseHelper__d0 _lh_clauseHelper_arg1_0 _lh_clauseHelper_arg2_0 =
  (match _lh_clauseHelper_arg1_0 with
    | `Dis(_lh_clauseHelper_Dis_0_0, _lh_clauseHelper_Dis_1_0) -> 
      ((clauseHelper__d0 _lh_clauseHelper_Dis_0_0) ((clauseHelper__d0 _lh_clauseHelper_Dis_1_0) _lh_clauseHelper_arg2_0))
    | `Sym(_lh_clauseHelper_Sym_0_0) -> 
      (match _lh_clauseHelper_arg2_0 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_0, _lh_clauseHelper_LH_P2_1_0) -> 
          (`LH_P2(((insert__d0 _lh_clauseHelper_Sym_0_0) _lh_clauseHelper_LH_P2_0_0), _lh_clauseHelper_LH_P2_1_0))
        | _ -> 
          (failwith "error"))
    | `Not(_lh_clauseHelper_Not_0_0) -> 
      (match _lh_clauseHelper_Not_0_0 with
        | `Sym(_lh_clauseHelper_Sym_0_1) -> 
          (match _lh_clauseHelper_arg2_0 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_1, _lh_clauseHelper_LH_P2_1_1) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_1, ((insert__d1 _lh_clauseHelper_Sym_0_1) _lh_clauseHelper_LH_P2_1_1)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and clause__d0 _lh_clause_arg1_0 =
  ((clauseHelper__d0 _lh_clause_arg1_0) (`LH_P2((`LH_N), (`LH_N))))
and clauses__d0 _lh_clauses_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun _lh_funcomp_x_4 -> 
            ((fun _lh_funcomp_x_5 -> 
              ((fun _lh_funcomp_x_6 -> 
                (concat__d0 ((map__d0 disp__d0) _lh_funcomp_x_6))) (unicl__d0 _lh_funcomp_x_5))) (split__d0 _lh_funcomp_x_4))) (disin__d0 _lh_funcomp_x_3))) (negin__d0 _lh_funcomp_x_2))) (elim__d0 _lh_funcomp_x_1))) (parse__d0 _lh_funcomp_x_0))) _lh_clauses_arg1_0)
and copy__d2 _lh_copy_arg1_0 _lh_copy_arg2_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (let rec t_0 = ((copy__d2 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_0 = _lh_copy_arg2_0 in
        (let rec t_1 = ((map__d1 _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            ((mappend__d4 h_1) (concat__d1 t_1))))))
  else
    (`LH_N))
and disin__d0 _lh_disin_arg1_0 =
  (match _lh_disin_arg1_0 with
    | `Dis(_lh_disin_Dis_0_0, _lh_disin_Dis_1_0) -> 
      (match _lh_disin_Dis_1_0 with
        | `Con(_lh_disin_Con_0_0, _lh_disin_Con_1_0) -> 
          (`Con((disin__d0 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_0_0))), (disin__d0 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_1_0)))))
        | _ -> 
          (match _lh_disin_Dis_0_0 with
            | `Con(_lh_disin_Con_0_1, _lh_disin_Con_1_1) -> 
              (`Con((disin__d0 (`Dis(_lh_disin_Con_0_1, _lh_disin_Dis_1_0))), (disin__d0 (`Dis(_lh_disin_Con_1_1, _lh_disin_Dis_1_0)))))
            | _ -> 
              (let rec dp_0 = (disin__d0 _lh_disin_Dis_0_0) in
                (let rec dq_0 = (disin__d0 _lh_disin_Dis_1_0) in
                  (if ((conjunct__d0 dp_0) || (conjunct__d1 dq_0)) then
                    (disin__d0 (`Dis(dp_0, dq_0)))
                  else
                    (`Dis(dp_0, dq_0)))))))
    | `Con(_lh_disin_Con_0_2, _lh_disin_Con_1_2) -> 
      (`Con((disin__d0 _lh_disin_Con_0_2), (disin__d0 _lh_disin_Con_1_2)))
    | _ -> 
      _lh_disin_arg1_0)
and disp__d0 _lh_disp_arg1_0 =
  (match _lh_disp_arg1_0 with
    | `LH_P2(_lh_disp_LH_P2_0_0, _lh_disp_LH_P2_1_0) -> 
      ((mappend__d1 ((mappend__d2 ((interleave__d0 _lh_disp_LH_P2_0_0) (spaces__d0 (length__d0 _lh_disp_LH_P2_0_0)))) (let rec t_5 = (let rec t_6 = (fun ys_4 -> 
        ys_4) in
        (let rec h_5 = '=' in
          (fun ys_5 -> 
            (let rec t_7 = ((mappend__d1 t_6) ys_5) in
              (let rec h_6 = h_5 in
                (fun ys_6 -> 
                  (let rec t_8 = ((mappend__d0 t_7) ys_6) in
                    (let rec h_7 = h_6 in
                      (fun ys_7 -> 
                        (`LH_C(h_7, ((mappend__d4 t_8) ys_7)))))))))))) in
        (let rec h_8 = '<' in
          (fun ys_8 -> 
            (let rec t_9 = ((mappend__d1 t_5) ys_8) in
              (let rec h_9 = h_8 in
                (fun ys_9 -> 
                  (let rec t_1_0 = ((mappend__d0 t_9) ys_9) in
                    (let rec h_1_0 = h_9 in
                      (fun ys_1_0 -> 
                        (`LH_C(h_1_0, ((mappend__d4 t_1_0) ys_1_0)))))))))))))) ((mappend__d3 ((interleave__d1 (spaces__d1 (length__d1 _lh_disp_LH_P2_1_0))) _lh_disp_LH_P2_1_0)) (let rec t_1_1 = (fun ys_1_1 -> 
        ys_1_1) in
        (let rec h_1_1 = 'n' in
          (fun ys_1_2 -> 
            (let rec t_1_2 = ((mappend__d0 t_1_1) ys_1_2) in
              (let rec h_1_2 = h_1_1 in
                (fun ys_1_3 -> 
                  (`LH_C(h_1_2, ((mappend__d4 t_1_2) ys_1_3)))))))))))
    | _ -> 
      (failwith "error"))
and interleave__d0 _lh_interleave_arg1_1 _lh_interleave_arg2_1 =
  (match _lh_interleave_arg1_1 with
    | `LH_C(_lh_interleave_LH_C_0_1, _lh_interleave_LH_C_1_1) -> 
      (let rec t_1_8 = ((interleave__d0 _lh_interleave_arg2_1) _lh_interleave_LH_C_1_1) in
        (let rec h_1_8 = _lh_interleave_LH_C_0_1 in
          (fun ys_2_0 -> 
            (let rec t_1_9 = ((mappend__d2 t_1_8) ys_2_0) in
              (let rec h_1_9 = h_1_8 in
                (fun ys_2_1 -> 
                  (let rec t_2_0 = ((mappend__d1 t_1_9) ys_2_1) in
                    (let rec h_2_0 = h_1_9 in
                      (fun ys_2_2 -> 
                        (let rec t_2_1 = ((mappend__d0 t_2_0) ys_2_2) in
                          (let rec h_2_1 = h_2_0 in
                            (fun ys_2_3 -> 
                              (`LH_C(h_2_1, ((mappend__d4 t_2_1) ys_2_3)))))))))))))))
    | `LH_N -> 
      (fun ys_2_4 -> 
        ys_2_4)
    | _ -> 
      (failwith "error"))
and interleave__d1 _lh_interleave_arg1_0 _lh_interleave_arg2_0 =
  (match _lh_interleave_arg1_0 with
    | `LH_C(_lh_interleave_LH_C_0_0, _lh_interleave_LH_C_1_0) -> 
      (let rec t_1_4 = ((interleave__d1 _lh_interleave_arg2_0) _lh_interleave_LH_C_1_0) in
        (let rec h_1_4 = _lh_interleave_LH_C_0_0 in
          (fun ys_1_6 -> 
            (let rec t_1_5 = ((mappend__d3 t_1_4) ys_1_6) in
              (let rec h_1_5 = h_1_4 in
                (fun ys_1_7 -> 
                  (let rec t_1_6 = ((mappend__d0 t_1_5) ys_1_7) in
                    (let rec h_1_6 = h_1_5 in
                      (fun ys_1_8 -> 
                        (`LH_C(h_1_6, ((mappend__d4 t_1_6) ys_1_8))))))))))))
    | `LH_N -> 
      (fun ys_1_9 -> 
        ys_1_9)
    | _ -> 
      (failwith "error"))
and map__d0 f_5 ls_2 _lh_popOutId_0_1 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map__d0 f_5) t_2) in
        (let rec h_3 = (f_5 h_2) in
          ((mappend__d0 h_3) (concat__d0 t_3))))
    | `LH_N -> 
      (fun ys_2 -> 
        ys_2))
and parseHelper__d0 _lh_parseHelper_arg1_0 _lh_parseHelper_arg2_0 =
  (match _lh_parseHelper_arg1_0 with
    | `LH_N -> 
      (redstar__d0 _lh_parseHelper_arg2_0)
    | `LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0) -> 
      (match _lh_parseHelper_LH_C_0_0 with
        | ' ' -> 
          ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) _lh_parseHelper_arg2_0)
        | '(' -> 
          ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_0)))
        | ')' -> 
          (let rec _lh_matchIdent_0 = (redstar__d1 _lh_parseHelper_arg2_0) in
            (match _lh_matchIdent_0 with
              | `LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_1) -> 
                (match _lh_parseHelper_LH_C_1_1 with
                  | `LH_C(_lh_parseHelper_LH_C_0_2, _lh_parseHelper_LH_C_1_2) -> 
                    (match _lh_parseHelper_LH_C_0_2 with
                      | `Lex(_lh_parseHelper_Lex_0_0) -> 
                        (match _lh_parseHelper_Lex_0_0 with
                          | '(' -> 
                            ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_2)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (if (('a' <= _lh_parseHelper_LH_C_0_0) && (_lh_parseHelper_LH_C_0_0 <= 'z')) then
            ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_0)))), _lh_parseHelper_arg2_0)))
          else
            (if ((spri__d2 _lh_parseHelper_arg2_0) > (opri__d0 _lh_parseHelper_LH_C_0_0)) then
              ((parseHelper__d0 (`LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0))) (red__d0 _lh_parseHelper_arg2_0))
            else
              ((parseHelper__d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_0)), _lh_parseHelper_arg2_0))))))
    | _ -> 
      (failwith "error"))
and parse__d0 _lh_parse_arg1_0 =
  (let rec _lh_matchIdent_1 = ((parseHelper__d0 _lh_parse_arg1_0) (`LH_N)) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_parse_LH_C_0_0, _lh_parse_LH_C_1_0) -> 
        (match _lh_parse_LH_C_0_0 with
          | `Ast(_lh_parse_Ast_0_0) -> 
            (match _lh_parse_LH_C_1_0 with
              | `LH_N -> 
                _lh_parse_Ast_0_0
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and redstar__d0 _lh_redstar_arg1_0 =
  (((while__d0 (fun _lh_funcomp_x_7 -> 
    (0 <> (spri__d0 _lh_funcomp_x_7)))) red__d1) _lh_redstar_arg1_0)
and redstar__d1 _lh_redstar_arg1_1 =
  (((while__d1 (fun _lh_funcomp_x_8 -> 
    (0 <> (spri__d1 _lh_funcomp_x_8)))) red__d2) _lh_redstar_arg1_1)
and spaces__d0 _lh_spaces_arg1_1 =
  ((copy__d0 _lh_spaces_arg1_1) ' ')
and spaces__d1 _lh_spaces_arg1_0 =
  ((copy__d1 _lh_spaces_arg1_0) ' ')
and splitHelper__d0 _lh_splitHelper_arg1_0 _lh_splitHelper_arg2_0 =
  (match _lh_splitHelper_arg1_0 with
    | `Con(_lh_splitHelper_Con_0_0, _lh_splitHelper_Con_1_0) -> 
      ((splitHelper__d0 _lh_splitHelper_Con_0_0) ((splitHelper__d0 _lh_splitHelper_Con_1_0) _lh_splitHelper_arg2_0))
    | _ -> 
      (let rec t_4 = _lh_splitHelper_arg2_0 in
        (let rec h_4 = _lh_splitHelper_arg1_0 in
          (fun f_6 i_2 -> 
            ((f_6 h_4) (((foldr__d0 f_6) i_2) t_4))))))
and split__d0 _lh_split_arg1_0 =
  ((splitHelper__d0 _lh_split_arg1_0) (fun f_1 i_1 -> 
    i_1))
and spri__d0 _lh_spri_arg1_2 =
  (match _lh_spri_arg1_2 with
    | `LH_C(_lh_spri_LH_C_0_4, _lh_spri_LH_C_1_4) -> 
      (match _lh_spri_LH_C_0_4 with
        | `Ast(_lh_spri_Ast_0_2) -> 
          (match _lh_spri_LH_C_1_4 with
            | `LH_C(_lh_spri_LH_C_0_5, _lh_spri_LH_C_1_5) -> 
              (match _lh_spri_LH_C_0_5 with
                | `Lex(_lh_spri_Lex_0_2) -> 
                  (opri__d1 _lh_spri_Lex_0_2)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri__d1 _lh_spri_arg1_1 =
  (match _lh_spri_arg1_1 with
    | `LH_C(_lh_spri_LH_C_0_2, _lh_spri_LH_C_1_2) -> 
      (match _lh_spri_LH_C_0_2 with
        | `Ast(_lh_spri_Ast_0_1) -> 
          (match _lh_spri_LH_C_1_2 with
            | `LH_C(_lh_spri_LH_C_0_3, _lh_spri_LH_C_1_3) -> 
              (match _lh_spri_LH_C_0_3 with
                | `Lex(_lh_spri_Lex_0_1) -> 
                  (opri__d2 _lh_spri_Lex_0_1)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri__d2 _lh_spri_arg1_0 =
  (match _lh_spri_arg1_0 with
    | `LH_C(_lh_spri_LH_C_0_0, _lh_spri_LH_C_1_0) -> 
      (match _lh_spri_LH_C_0_0 with
        | `Ast(_lh_spri_Ast_0_0) -> 
          (match _lh_spri_LH_C_1_0 with
            | `LH_C(_lh_spri_LH_C_0_1, _lh_spri_LH_C_1_1) -> 
              (match _lh_spri_LH_C_0_1 with
                | `Lex(_lh_spri_Lex_0_0) -> 
                  (opri__d3 _lh_spri_Lex_0_0)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and tautclause__d0 _lh_tautclause_arg1_0 =
  (match _lh_tautclause_arg1_0 with
    | `LH_P2(_lh_tautclause_LH_P2_0_0, _lh_tautclause_LH_P2_1_0) -> 
      ((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((contains__d0 _lh_listcomp_fun_ls_h_0) _lh_tautclause_LH_P2_1_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_tautclause_LH_P2_0_0)) <> (`LH_N))
    | _ -> 
      (failwith "error"))
and testClausify_nofib__d0 _lh_testClausify_nofib_arg1_0 =
  (let rec xs_3 = ((copy__d2 _lh_testClausify_nofib_arg1_0) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat__d1 ((map__d1 clauses__d0) xs_3)))
and uniclHelper__d0 _lh_uniclHelper_arg1_0 _lh_uniclHelper_arg2_0 =
  (let rec cp_0 = (clause__d0 _lh_uniclHelper_arg1_0) in
    (if (tautclause__d0 cp_0) then
      _lh_uniclHelper_arg2_0
    else
      ((insert__d2 cp_0) _lh_uniclHelper_arg2_0)))
and unicl__d0 _lh_unicl_arg1_0 =
  (((foldr__d0 uniclHelper__d0) (`LH_N)) _lh_unicl_arg1_0);;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Clausify_nofib" (fun () -> ignore (let open Module_original in ((testClausify_nofib__d0 10))));
  Bench.Test.create ~name:"lumberhack_Clausify_nofib" (fun () -> ignore (let open Module_lumberhack in ((testClausify_nofib__d0 10))));
  Bench.Test.create ~name:"lumberhack_pop_out_Clausify_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testClausify_nofib__d0 10))));
])
