
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec keys_lh =
  (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_N))))))))))), (`LH_C((`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_N))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('a', (`LH_C('u', (`LH_C('l', (`LH_C('t', (`LH_N))))))))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('h', (`LH_C('i', (`LH_C('d', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_N))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C('l', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_N))))))), (`LH_C((`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))))), (`LH_C((`LH_C('o', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_N))))))))), (`LH_C((`LH_C('t', (`LH_C('o', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))));;
let rec all_lh _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec member_lh _lh_member_arg1_0 _lh_member_arg2_0 =
  (match _lh_member_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_0, _lh_member_LH_C_1_0) -> 
      ((_lh_member_arg1_0 = _lh_member_LH_C_0_0) || ((member_lh _lh_member_arg1_0) _lh_member_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec subset_lh _lh_subset_arg1_0 _lh_subset_arg2_0 =
  ((all_lh (fun x_1 -> 
    ((member_lh x_1) _lh_subset_arg2_0))) _lh_subset_arg1_0);;
let rec ends_lh _lh_ends_arg1_0 =
  (match _lh_ends_arg1_0 with
    | `K(_lh_ends_K_0_0, _lh_ends_K_1_0, _lh_ends_K_2_0, _lh_ends_K_3_0) -> 
      (`LH_C(_lh_ends_K_1_0, (`LH_C(_lh_ends_K_2_0, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh t_6) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec union_lh _lh_union_arg1_0 _lh_union_arg2_0 =
  ((mappend_lh _lh_union_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (if (not ((member_lh _lh_listcomp_fun_ls_h_0) _lh_union_arg1_0)) then
          (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
        else
          (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_union_arg2_0)));;
let rec foldr_lh f_2 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((f_2 h_2) (((foldr_lh f_2) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec select_lh _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_0_0)), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec partition'_lh _lh_partition'_arg1_0 =
  ((foldr_lh (select_lh _lh_partition'_arg1_0)) (`LH_P2((`LH_N), (`LH_N))));;
let rec blocked'_lh _lh_blocked'_arg1_0 _lh_blocked'_arg2_0 =
  (match _lh_blocked'_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_C_1_0) -> 
      (let rec ds'_0 = ((union_lh _lh_blocked'_arg1_0) (ends_lh _lh_blocked'_LH_C_0_0)) in
        (let rec _lh_matchIdent_3 = ((partition'_lh (fun x_0 -> 
          ((subset_lh (ends_lh x_0)) ds'_0))) _lh_blocked'_LH_C_1_0) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_blocked'_LH_P2_0_0, _lh_blocked'_LH_P2_1_0) -> 
              ((mappend_lh (`LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_P2_0_0))) ((blocked'_lh ds'_0) _lh_blocked'_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec blocked_lh _lh_blocked_arg1_0 =
  ((blocked'_lh (`LH_N)) _lh_blocked_arg1_0);;
let rec freqsorted_lh _lh_freqsorted_arg1_0 =
  _lh_freqsorted_arg1_0;;
let rec map_lz_lh f_1 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lz_lh f_1) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec first_lh _lh_first_arg1_0 _lh_first_arg2_0 =
  (let rec _lh_matchIdent_4 = (Lazy.force _lh_first_arg2_0) in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (`NotEver(_lh_first_arg1_0))
      | `LH_C(_lh_first_LH_C_0_0, _lh_first_LH_C_1_0) -> 
        (let rec _lh_matchIdent_5 = _lh_first_LH_C_0_0 in
          (match _lh_matchIdent_5 with
            | `YesIts(_lh_first_YesIts_0_0, _lh_first_YesIts_1_0) -> 
              (`YesIts((_lh_first_arg1_0 + _lh_first_YesIts_0_0), _lh_first_YesIts_1_0))
            | `NotEver(_lh_first_NotEver_0_0) -> 
              ((first_lh (_lh_first_arg1_0 + _lh_first_NotEver_0_0)) _lh_first_LH_C_1_0)
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec firstSuccess_lh _lh_firstSuccess_arg1_0 _lh_firstSuccess_arg2_0 =
  ((first_lh 0) ((map_lz_lh _lh_firstSuccess_arg1_0) _lh_firstSuccess_arg2_0));;
let rec assocm_lh _lh_assocm_arg1_0 _lh_assocm_arg2_0 =
  (match _lh_assocm_arg2_0 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_0, _lh_assocm_LH_C_1_0) -> 
      (match _lh_assocm_LH_C_0_0 with
        | `LH_P2(_lh_assocm_LH_P2_0_0, _lh_assocm_LH_P2_1_0) -> 
          (if (_lh_assocm_arg1_0 = _lh_assocm_LH_P2_0_0) then
            (`Just(_lh_assocm_LH_P2_1_0))
          else
            ((assocm_lh _lh_assocm_arg1_0) _lh_assocm_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec histins_lh _lh_histins_arg1_0 _lh_histins_arg2_0 =
  (match _lh_histins_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_0, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_0, _lh_histins_LH_C_1_0) -> 
      (match _lh_histins_LH_C_0_0 with
        | `LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0) -> 
          (if (_lh_histins_arg1_0 = _lh_histins_LH_P2_0_0) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, (_lh_histins_LH_P2_1_0 + 1))), _lh_histins_LH_C_1_0))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0)), ((histins_lh _lh_histins_arg1_0) _lh_histins_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec histo_lh _lh_histo_arg1_0 =
  (((foldr_lh histins_lh) (`LH_N)) _lh_histo_arg1_0);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_7, t_7) -> 
      ((mappend_lh h_7) (concat_lh t_7))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec length_lh ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      (1 + (length_lh t_5))
    | `LH_N -> 
      0);;
let rec head_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec last_lh _lh_last_arg1_0 =
  (match _lh_last_arg1_0 with
    | `LH_C(_lh_last_LH_C_0_0, _lh_last_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 _lh_go_arg2_0 -> 
        (match _lh_go_arg2_0 with
          | `LH_N -> 
            _lh_go_arg1_0
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            ((go_0 _lh_go_LH_C_0_0) _lh_go_LH_C_1_0)
          | _ -> 
            (failwith "error"))) in
        ((go_0 _lh_last_LH_C_0_0) _lh_last_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec attribkeys_lh _lh_attribkeys_arg1_0 =
  ((map_lh (fun k_0 -> 
    (`K(k_0, (head_lh k_0), (last_lh k_0), (length_lh k_0))))) _lh_attribkeys_arg1_0);;
let rec freqtab_lh =
  (histo_lh (concat_lh ((map_lh ends_lh) (attribkeys_lh keys_lh))));;
let rec maxval_lh =
  (length_lh freqtab_lh);;
let rec assoc_lh _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (match _lh_assoc_arg2_0 with
    | `LH_C(_lh_assoc_LH_C_0_0, _lh_assoc_LH_C_1_0) -> 
      (match _lh_assoc_LH_C_0_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          (if (_lh_assoc_arg1_0 = _lh_assoc_LH_P2_0_0) then
            _lh_assoc_LH_P2_1_0
          else
            ((assoc_lh _lh_assoc_arg1_0) _lh_assoc_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec hash_lh _lh_hash_arg1_0 _lh_hash_arg2_0 =
  (match _lh_hash_arg2_0 with
    | `K(_lh_hash_K_0_0, _lh_hash_K_1_0, _lh_hash_K_2_0, _lh_hash_K_3_0) -> 
      ((_lh_hash_K_3_0 + ((assoc_lh _lh_hash_K_1_0) _lh_hash_arg1_0)) + ((assoc_lh _lh_hash_K_2_0) _lh_hash_arg1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lz_lh _lh_enumFromTo_lz_arg1_0 _lh_enumFromTo_lz_arg2_0 =
  (lazy (if (_lh_enumFromTo_lz_arg1_0 <= _lh_enumFromTo_lz_arg2_0) then
    (`LH_C(_lh_enumFromTo_lz_arg1_0, ((enumFromTo_lz_lh (_lh_enumFromTo_lz_arg1_0 + 1)) _lh_enumFromTo_lz_arg2_0)))
  else
    (`LH_N)));;
let rec min_lh _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec minm_lh _lh_minm_arg1_0 _lh_minm_arg2_0 =
  (match _lh_minm_arg1_0 with
    | `Nothing -> 
      _lh_minm_arg2_0
    | `Just(_lh_minm_Just_0_0) -> 
      ((min_lh _lh_minm_Just_0_0) _lh_minm_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec max_lh _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec maxm_lh _lh_maxm_arg1_0 _lh_maxm_arg2_0 =
  (match _lh_maxm_arg1_0 with
    | `Nothing -> 
      _lh_maxm_arg2_0
    | `Just(_lh_maxm_Just_0_0) -> 
      ((max_lh _lh_maxm_Just_0_0) _lh_maxm_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec numberofkeys_lh =
  (length_lh keys_lh);;
let rec hinsert_lh _lh_hinsert_arg1_0 _lh_hinsert_arg2_0 =
  (match _lh_hinsert_arg2_0 with
    | `H(_lh_hinsert_H_0_0, _lh_hinsert_H_1_0, _lh_hinsert_H_2_0) -> 
      (let rec lo'_0 = ((minm_lh _lh_hinsert_H_0_0) _lh_hinsert_arg1_0) in
        (let rec hi'_0 = ((maxm_lh _lh_hinsert_H_1_0) _lh_hinsert_arg1_0) in
          (if (((member_lh _lh_hinsert_arg1_0) _lh_hinsert_H_2_0) || (((1 + hi'_0) - lo'_0) > numberofkeys_lh)) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_0)), (`Just(hi'_0)), (`LH_C(_lh_hinsert_arg1_0, _lh_hinsert_H_2_0)))))))))
    | _ -> 
      (failwith "error"));;
let rec findhash'_lh _lh_findhash'_arg1_0 _lh_findhash'_arg2_0 _lh_findhash'_arg3_0 =
  (match _lh_findhash'_arg3_0 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_0))
    | `LH_C(_lh_findhash'_LH_C_0_0, _lh_findhash'_LH_C_1_0) -> 
      (match _lh_findhash'_LH_C_0_0 with
        | `K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0) -> 
          (let rec try_0 = (fun newAssocs_0 -> 
            (let rec newCharAssocs_0 = ((mappend_lh newAssocs_0) _lh_findhash'_arg2_0) in
              (let rec _lh_matchIdent_0 = ((hinsert_lh ((hash_lh newCharAssocs_0) (`K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0)))) _lh_findhash'_arg1_0) in
                (match _lh_matchIdent_0 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_0) -> 
                    (((findhash'_lh _lh_findhash'_Just_0_0) newCharAssocs_0) _lh_findhash'_LH_C_1_0)
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_matchIdent_1 = (`LH_P2(((assocm_lh _lh_findhash'_K_1_0) _lh_findhash'_arg2_0), ((assocm_lh _lh_findhash'_K_2_0) _lh_findhash'_arg2_0))) in
              (match _lh_matchIdent_1 with
                | `LH_P2(_lh_findhash'_LH_P2_0_0, _lh_findhash'_LH_P2_1_0) -> 
                  (match _lh_findhash'_LH_P2_0_0 with
                    | `Nothing -> 
                      (match _lh_findhash'_LH_P2_1_0 with
                        | `Nothing -> 
                          (if (_lh_findhash'_K_1_0 = _lh_findhash'_K_2_0) then
                            ((firstSuccess_lh (fun m_0 -> 
                              (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_0, m_0)), (`LH_N)))))) ((enumFromTo_lz_lh 0) maxval_lh))
                          else
                            ((firstSuccess_lh (fun mn_0 -> 
                              (let rec _lh_matchIdent_2 = mn_0 in
                                (match _lh_matchIdent_2 with
                                  | `LH_P2(_lh_findhash'_LH_P2_0_1, _lh_findhash'_LH_P2_1_1) -> 
                                    (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_0, _lh_findhash'_LH_P2_0_1)), (`LH_C((`LH_P2(_lh_findhash'_K_2_0, _lh_findhash'_LH_P2_1_1)), (`LH_N))))))
                                  | _ -> 
                                    (failwith "error"))))) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                              (match (Lazy.force _lh_listcomp_fun_para_1) with
                                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                                  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                                    (match (Lazy.force _lh_listcomp_fun_para_2) with
                                      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                                        (lazy (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))) in
                                    (_lh_listcomp_fun_2 ((enumFromTo_lz_lh 0) maxval_lh)))
                                | `LH_N -> 
                                  (lazy (`LH_N)))) in
                              (_lh_listcomp_fun_1 ((enumFromTo_lz_lh 0) maxval_lh)))))
                        | `Just(_lh_findhash'_Just_0_1) -> 
                          ((firstSuccess_lh (fun m_1 -> 
                            (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_0, m_1)), (`LH_N)))))) ((enumFromTo_lz_lh 0) maxval_lh))
                        | _ -> 
                          (failwith "error"))
                    | `Just(_lh_findhash'_Just_0_2) -> 
                      (match _lh_findhash'_LH_P2_1_0 with
                        | `Nothing -> 
                          ((firstSuccess_lh (fun n_1 -> 
                            (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_2_0, n_1)), (`LH_N)))))) ((enumFromTo_lz_lh 0) maxval_lh))
                        | `Just(_lh_findhash'_Just_0_3) -> 
                          (try_0 (`LH_N))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec findhash_lh _lh_findhash_arg1_0 =
  (((findhash'_lh (`H((`Nothing), (`Nothing), (`LH_N)))) (`LH_N)) _lh_findhash_arg1_0);;
let rec take_lh n_0 ls_4 =
  (if (n_0 > 0) then
    (match ls_4 with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lh (n_0 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec cichelli_lh _lh_cichelli_arg1_0 =
  (let rec attribkeys'_0 = (attribkeys_lh ((mappend_lh keys_lh) ((take_lh (_lh_cichelli_arg1_0 mod 2)) keys_lh))) in
    (let rec hashkeys_0 = ((fun _lh_funcomp_x_0 -> 
      (blocked_lh (freqsorted_lh _lh_funcomp_x_0))) attribkeys'_0) in
      (findhash_lh hashkeys_0)));;
let rec prog_lh _lh_prog_arg1_0 =
  (cichelli_lh _lh_prog_arg1_0);;
let rec testCichelli_nofib_lh _lh_testCichelli_nofib_arg1_0 =
  (prog_lh _lh_testCichelli_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testCichelli_nofib_lh 6)));
end;;

