open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors
open Unsigned

let isl_union_set_n_set = foreign "isl_union_set_n_set" (Types.union_set @-> returning int)
let n_set ctx uset = 
    let ret = isl_union_set_n_set uset in
    check_for_errors ctx;
    ret

let isl_union_set_dim = foreign "isl_union_set_dim" (Types.union_set @-> dim_type @-> returning unsigned_int)
let dim ctx uset typ = 
    let ret = isl_union_set_dim uset typ in
    check_for_errors ctx;
    ret

let isl_union_set_dump = foreign "isl_union_set_dump" (Types.union_set @-> returning void)
let dump ctx uset = 
    let ret = isl_union_set_dump uset in
    check_for_errors ctx;
    ret

let isl_union_set_extract_set = foreign "isl_union_set_extract_set" (Types.union_set @-> Types.space @-> returning Types.set)
let extract_set ctx uset dim = 
    let dim = space_copy dim in
    let ret = isl_union_set_extract_set uset dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_union_set_params = foreign "isl_union_set_params" (Types.union_set @-> returning Types.set)
let params ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_params uset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_union_set_get_space = foreign "isl_union_set_get_space" (Types.union_set @-> returning Types.space)
let get_space ctx uset = 
    let ret = isl_union_set_get_space uset in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_union_set_lex_ge_union_set = foreign "isl_union_set_lex_ge_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map)
let lex_ge_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_lex_ge_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_set_lex_gt_union_set = foreign "isl_union_set_lex_gt_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map)
let lex_gt_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_lex_gt_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_set_lex_le_union_set = foreign "isl_union_set_lex_le_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map)
let lex_le_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_lex_le_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_set_lex_lt_union_set = foreign "isl_union_set_lex_lt_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map)
let lex_lt_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_lex_lt_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_set_wrapped_domain_map = foreign "isl_union_set_wrapped_domain_map" (Types.union_set @-> returning Types.union_map)
let wrapped_domain_map ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_wrapped_domain_map uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_set_sample = foreign "isl_union_set_sample" (Types.union_set @-> returning Types.basic_set)
let sample ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_sample uset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_union_set_add_set = foreign "isl_union_set_add_set" (Types.union_set @-> Types.set @-> returning Types.union_set)
let add_set ctx uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let ret = isl_union_set_add_set uset set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_align_params = foreign "isl_union_set_align_params" (Types.union_set @-> Types.space @-> returning Types.union_set)
let align_params ctx uset model = 
    let uset = union_set_copy uset in
    let model = space_copy model in
    let ret = isl_union_set_align_params uset model in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_coefficients = foreign "isl_union_set_coefficients" (Types.union_set @-> returning Types.union_set)
let coefficients ctx bset = 
    let bset = union_set_copy bset in
    let ret = isl_union_set_coefficients bset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_empty = foreign "isl_union_set_empty" (Types.space @-> returning Types.union_set)
let empty ctx space = 
    let space = space_copy space in
    let ret = isl_union_set_empty space in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_lift = foreign "isl_union_set_lift" (Types.union_set @-> returning Types.union_set)
let lift ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_lift uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_product = foreign "isl_union_set_product" (Types.union_set @-> Types.union_set @-> returning Types.union_set)
let product ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_product uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_project_out = foreign "isl_union_set_project_out" (Types.union_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.union_set)
let project_out ctx uset typ first n = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_project_out uset typ first n in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_remove_divs = foreign "isl_union_set_remove_divs" (Types.union_set @-> returning Types.union_set)
let remove_divs ctx bset = 
    let bset = union_set_copy bset in
    let ret = isl_union_set_remove_divs bset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_remove_redundancies = foreign "isl_union_set_remove_redundancies" (Types.union_set @-> returning Types.union_set)
let remove_redundancies ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_remove_redundancies uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_reset_user = foreign "isl_union_set_reset_user" (Types.union_set @-> returning Types.union_set)
let reset_user ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_reset_user uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_simple_hull = foreign "isl_union_set_simple_hull" (Types.union_set @-> returning Types.union_set)
let simple_hull ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_simple_hull uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_solutions = foreign "isl_union_set_solutions" (Types.union_set @-> returning Types.union_set)
let solutions ctx bset = 
    let bset = union_set_copy bset in
    let ret = isl_union_set_solutions bset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_universe = foreign "isl_union_set_universe" (Types.union_set @-> returning Types.union_set)
let universe ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_universe uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_to_str = foreign "isl_union_set_to_str" (Types.union_set @-> returning string)
let to_string ctx uset = 
    let ret = isl_union_set_to_str uset in
    check_for_errors ctx;
    Gc.finalise (fun _ -> ()) ret;
    ret

let isl_union_set_identity = foreign "isl_union_set_identity" (Types.union_set @-> returning Types.union_map)
let identity ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_identity uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_set_unwrap = foreign "isl_union_set_unwrap" (Types.union_set @-> returning Types.union_map)
let unwrap ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_unwrap uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_set_affine_hull = foreign "isl_union_set_affine_hull" (Types.union_set @-> returning Types.union_set)
let affine_hull ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_affine_hull uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_apply = foreign "isl_union_set_apply" (Types.union_set @-> Types.union_map @-> returning Types.union_set)
let apply ctx uset umap = 
    let uset = union_set_copy uset in
    let umap = union_map_copy umap in
    let ret = isl_union_set_apply uset umap in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_coalesce = foreign "isl_union_set_coalesce" (Types.union_set @-> returning Types.union_set)
let coalesce ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_coalesce uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_compute_divs = foreign "isl_union_set_compute_divs" (Types.union_set @-> returning Types.union_set)
let compute_divs ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_compute_divs uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_detect_equalities = foreign "isl_union_set_detect_equalities" (Types.union_set @-> returning Types.union_set)
let detect_equalities ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_detect_equalities uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_gist = foreign "isl_union_set_gist" (Types.union_set @-> Types.union_set @-> returning Types.union_set)
let gist ctx uset context = 
    let uset = union_set_copy uset in
    let context = union_set_copy context in
    let ret = isl_union_set_gist uset context in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_gist_params = foreign "isl_union_set_gist_params" (Types.union_set @-> Types.set @-> returning Types.union_set)
let gist_params ctx uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let ret = isl_union_set_gist_params uset set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_intersect = foreign "isl_union_set_intersect" (Types.union_set @-> Types.union_set @-> returning Types.union_set)
let intersect ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_intersect uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_intersect_params = foreign "isl_union_set_intersect_params" (Types.union_set @-> Types.set @-> returning Types.union_set)
let intersect_params ctx uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let ret = isl_union_set_intersect_params uset set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_lexmax = foreign "isl_union_set_lexmax" (Types.union_set @-> returning Types.union_set)
let lexmax ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_lexmax uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_lexmin = foreign "isl_union_set_lexmin" (Types.union_set @-> returning Types.union_set)
let lexmin ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_lexmin uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_polyhedral_hull = foreign "isl_union_set_polyhedral_hull" (Types.union_set @-> returning Types.union_set)
let polyhedral_hull ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_set_polyhedral_hull uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_subtract = foreign "isl_union_set_subtract" (Types.union_set @-> Types.union_set @-> returning Types.union_set)
let subtract ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_subtract uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_union = foreign "isl_union_set_union" (Types.union_set @-> Types.union_set @-> returning Types.union_set)
let union ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let ret = isl_union_set_union uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_from_basic_set = foreign "isl_union_set_from_basic_set" (Types.basic_set @-> returning Types.union_set)
let from_basic_set ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_union_set_from_basic_set bset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_from_set = foreign "isl_union_set_from_set" (Types.set @-> returning Types.union_set)
let from_set ctx set = 
    let set = set_copy set in
    let ret = isl_union_set_from_set set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_set_read_from_str = foreign "isl_union_set_read_from_str" (Types.ctx @-> string @-> returning Types.union_set)
let of_string ctx str = 
    let ret = isl_union_set_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

