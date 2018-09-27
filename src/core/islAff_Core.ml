open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors
open Unsigned

let isl_aff_coefficient_sgn = foreign "isl_aff_coefficient_sgn" (Types.aff @-> dim_type @-> int @-> returning int)
let coefficient_sgn ctx aff typ pos = 
    let ret = isl_aff_coefficient_sgn aff typ pos in
    check_for_errors ctx;
    ret

let isl_aff_dim = foreign "isl_aff_dim" (Types.aff @-> dim_type @-> returning int)
let dim ctx aff typ = 
    let ret = isl_aff_dim aff typ in
    check_for_errors ctx;
    ret

let isl_aff_find_dim_by_name = foreign "isl_aff_find_dim_by_name" (Types.aff @-> dim_type @-> string @-> returning int)
let find_dim_by_name ctx aff typ name = 
    let ret = isl_aff_find_dim_by_name aff typ name in
    check_for_errors ctx;
    ret

let isl_aff_dump = foreign "isl_aff_dump" (Types.aff @-> returning void)
let dump ctx aff = 
    let ret = isl_aff_dump aff in
    check_for_errors ctx;
    ret

let isl_aff_get_dim_name = foreign "isl_aff_get_dim_name" (Types.aff @-> dim_type @-> unsigned_int @-> returning string)
let get_dim_name ctx aff typ pos = 
    let ret = isl_aff_get_dim_name aff typ pos in
    check_for_errors ctx;
    ret

let isl_aff_get_domain_space = foreign "isl_aff_get_domain_space" (Types.aff @-> returning Types.space)
let get_domain_space ctx aff = 
    let ret = isl_aff_get_domain_space aff in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_aff_get_space = foreign "isl_aff_get_space" (Types.aff @-> returning Types.space)
let get_space ctx aff = 
    let ret = isl_aff_get_space aff in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_aff_eq_basic_set = foreign "isl_aff_eq_basic_set" (Types.aff @-> Types.aff @-> returning Types.basic_set)
let eq_basic_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_eq_basic_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_aff_ge_basic_set = foreign "isl_aff_ge_basic_set" (Types.aff @-> Types.aff @-> returning Types.basic_set)
let ge_basic_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_ge_basic_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_aff_gt_basic_set = foreign "isl_aff_gt_basic_set" (Types.aff @-> Types.aff @-> returning Types.basic_set)
let gt_basic_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_gt_basic_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_aff_le_basic_set = foreign "isl_aff_le_basic_set" (Types.aff @-> Types.aff @-> returning Types.basic_set)
let le_basic_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_le_basic_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_aff_lt_basic_set = foreign "isl_aff_lt_basic_set" (Types.aff @-> Types.aff @-> returning Types.basic_set)
let lt_basic_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_lt_basic_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_aff_neg_basic_set = foreign "isl_aff_neg_basic_set" (Types.aff @-> returning Types.basic_set)
let neg_basic_set ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_aff_neg_basic_set aff in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_aff_zero_basic_set = foreign "isl_aff_zero_basic_set" (Types.aff @-> returning Types.basic_set)
let zero_basic_set ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_aff_zero_basic_set aff in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_aff_get_coefficient_val = foreign "isl_aff_get_coefficient_val" (Types.aff @-> dim_type @-> int @-> returning Types.value)
let get_coefficient_val ctx aff typ pos = 
    let ret = isl_aff_get_coefficient_val aff typ pos in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_aff_get_constant_val = foreign "isl_aff_get_constant_val" (Types.aff @-> returning Types.value)
let get_constant_val ctx aff = 
    let ret = isl_aff_get_constant_val aff in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_aff_get_denominator_val = foreign "isl_aff_get_denominator_val" (Types.aff @-> returning Types.value)
let get_denominator_val ctx aff = 
    let ret = isl_aff_get_denominator_val aff in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_aff_add_coefficient_si = foreign "isl_aff_add_coefficient_si" (Types.aff @-> dim_type @-> int @-> int @-> returning Types.aff)
let add_coefficient_si ctx aff typ pos v = 
    let aff = aff_copy aff in
    let ret = isl_aff_add_coefficient_si aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_add_coefficient_val = foreign "isl_aff_add_coefficient_val" (Types.aff @-> dim_type @-> int @-> Types.value @-> returning Types.aff)
let add_coefficient_val ctx aff typ pos v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let ret = isl_aff_add_coefficient_val aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_add_constant_num_si = foreign "isl_aff_add_constant_num_si" (Types.aff @-> int @-> returning Types.aff)
let add_constant_num_si ctx aff v = 
    let aff = aff_copy aff in
    let ret = isl_aff_add_constant_num_si aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_add_constant_si = foreign "isl_aff_add_constant_si" (Types.aff @-> int @-> returning Types.aff)
let add_constant_si ctx aff v = 
    let aff = aff_copy aff in
    let ret = isl_aff_add_constant_si aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_add_constant_val = foreign "isl_aff_add_constant_val" (Types.aff @-> Types.value @-> returning Types.aff)
let add_constant_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let ret = isl_aff_add_constant_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_add_dims = foreign "isl_aff_add_dims" (Types.aff @-> dim_type @-> unsigned_int @-> returning Types.aff)
let add_dims ctx aff typ n = 
    let aff = aff_copy aff in
    let ret = isl_aff_add_dims aff typ n in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_align_params = foreign "isl_aff_align_params" (Types.aff @-> Types.space @-> returning Types.aff)
let align_params ctx aff model = 
    let aff = aff_copy aff in
    let model = space_copy model in
    let ret = isl_aff_align_params aff model in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_drop_dims = foreign "isl_aff_drop_dims" (Types.aff @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.aff)
let drop_dims ctx aff typ first n = 
    let aff = aff_copy aff in
    let ret = isl_aff_drop_dims aff typ first n in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_from_range = foreign "isl_aff_from_range" (Types.aff @-> returning Types.aff)
let from_range ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_aff_from_range aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_get_div = foreign "isl_aff_get_div" (Types.aff @-> int @-> returning Types.aff)
let get_div ctx aff pos = 
    let ret = isl_aff_get_div aff pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_gist = foreign "isl_aff_gist" (Types.aff @-> Types.set @-> returning Types.aff)
let gist ctx aff context = 
    let aff = aff_copy aff in
    let context = set_copy context in
    let ret = isl_aff_gist aff context in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_gist_params = foreign "isl_aff_gist_params" (Types.aff @-> Types.set @-> returning Types.aff)
let gist_params ctx aff context = 
    let aff = aff_copy aff in
    let context = set_copy context in
    let ret = isl_aff_gist_params aff context in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_insert_dims = foreign "isl_aff_insert_dims" (Types.aff @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.aff)
let insert_dims ctx aff typ first n = 
    let aff = aff_copy aff in
    let ret = isl_aff_insert_dims aff typ first n in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_mod_val = foreign "isl_aff_mod_val" (Types.aff @-> Types.value @-> returning Types.aff)
let mod_val ctx aff modulo = 
    let aff = aff_copy aff in
    let ret = isl_aff_mod_val aff modulo in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_move_dims = foreign "isl_aff_move_dims" (Types.aff @-> dim_type @-> unsigned_int @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.aff)
let move_dims ctx aff dst_type dst_pos src_type src_pos n = 
    let aff = aff_copy aff in
    let ret = isl_aff_move_dims aff dst_type dst_pos src_type src_pos n in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_nan_on_domain = foreign "isl_aff_nan_on_domain" (Types.local_space @-> returning Types.aff)
let nan_on_domain ctx ls = 
    let ls = local_space_copy ls in
    let ret = isl_aff_nan_on_domain ls in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_param_on_domain_space_id = foreign "isl_aff_param_on_domain_space_id" (Types.space @-> Types.id @-> returning Types.aff)
let param_on_domain_space_id ctx space id = 
    let space = space_copy space in
    let id = id_copy id in
    let ret = isl_aff_param_on_domain_space_id space id in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_project_domain_on_params = foreign "isl_aff_project_domain_on_params" (Types.aff @-> returning Types.aff)
let project_domain_on_params ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_aff_project_domain_on_params aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_pullback_aff = foreign "isl_aff_pullback_aff" (Types.aff @-> Types.aff @-> returning Types.aff)
let pullback_aff ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_pullback_aff aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_scale_down_ui = foreign "isl_aff_scale_down_ui" (Types.aff @-> unsigned_int @-> returning Types.aff)
let scale_down_ui ctx aff f = 
    let aff = aff_copy aff in
    let ret = isl_aff_scale_down_ui aff f in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_scale_down_val = foreign "isl_aff_scale_down_val" (Types.aff @-> Types.value @-> returning Types.aff)
let scale_down_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let ret = isl_aff_scale_down_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_scale_val = foreign "isl_aff_scale_val" (Types.aff @-> Types.value @-> returning Types.aff)
let scale_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let ret = isl_aff_scale_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_set_coefficient_si = foreign "isl_aff_set_coefficient_si" (Types.aff @-> dim_type @-> int @-> int @-> returning Types.aff)
let set_coefficient_si ctx aff typ pos v = 
    let aff = aff_copy aff in
    let ret = isl_aff_set_coefficient_si aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_set_coefficient_val = foreign "isl_aff_set_coefficient_val" (Types.aff @-> dim_type @-> int @-> Types.value @-> returning Types.aff)
let set_coefficient_val ctx aff typ pos v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let ret = isl_aff_set_coefficient_val aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_set_constant_si = foreign "isl_aff_set_constant_si" (Types.aff @-> int @-> returning Types.aff)
let set_constant_si ctx aff v = 
    let aff = aff_copy aff in
    let ret = isl_aff_set_constant_si aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_set_constant_val = foreign "isl_aff_set_constant_val" (Types.aff @-> Types.value @-> returning Types.aff)
let set_constant_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let ret = isl_aff_set_constant_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_set_dim_id = foreign "isl_aff_set_dim_id" (Types.aff @-> dim_type @-> unsigned_int @-> Types.id @-> returning Types.aff)
let set_dim_id ctx aff typ pos id = 
    let aff = aff_copy aff in
    let id = id_copy id in
    let ret = isl_aff_set_dim_id aff typ pos id in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_set_dim_name = foreign "isl_aff_set_dim_name" (Types.aff @-> dim_type @-> unsigned_int @-> string @-> returning Types.aff)
let set_dim_name ctx aff typ pos s = 
    let aff = aff_copy aff in
    let ret = isl_aff_set_dim_name aff typ pos s in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_set_tuple_id = foreign "isl_aff_set_tuple_id" (Types.aff @-> dim_type @-> Types.id @-> returning Types.aff)
let set_tuple_id ctx aff typ id = 
    let aff = aff_copy aff in
    let id = id_copy id in
    let ret = isl_aff_set_tuple_id aff typ id in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_val_on_domain = foreign "isl_aff_val_on_domain" (Types.local_space @-> Types.value @-> returning Types.aff)
let val_on_domain ctx ls value = 
    let ls = local_space_copy ls in
    let ret = isl_aff_val_on_domain ls value in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_var_on_domain = foreign "isl_aff_var_on_domain" (Types.local_space @-> dim_type @-> unsigned_int @-> returning Types.aff)
let var_on_domain ctx ls typ pos = 
    let ls = local_space_copy ls in
    let ret = isl_aff_var_on_domain ls typ pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_zero_on_domain = foreign "isl_aff_zero_on_domain" (Types.local_space @-> returning Types.aff)
let zero_on_domain ctx ls = 
    let ls = local_space_copy ls in
    let ret = isl_aff_zero_on_domain ls in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_to_str = foreign "isl_aff_to_str" (Types.aff @-> returning string)
let to_string ctx aff = 
    let ret = isl_aff_to_str aff in
    check_for_errors ctx;
    Gc.finalise (fun _ -> ()) ret;
    ret

let isl_aff_get_domain_local_space = foreign "isl_aff_get_domain_local_space" (Types.aff @-> returning Types.local_space)
let get_domain_local_space ctx aff = 
    let ret = isl_aff_get_domain_local_space aff in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let isl_aff_get_local_space = foreign "isl_aff_get_local_space" (Types.aff @-> returning Types.local_space)
let get_local_space ctx aff = 
    let ret = isl_aff_get_local_space aff in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let isl_aff_eq_set = foreign "isl_aff_eq_set" (Types.aff @-> Types.aff @-> returning Types.set)
let eq_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_eq_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_aff_ge_set = foreign "isl_aff_ge_set" (Types.aff @-> Types.aff @-> returning Types.set)
let ge_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_ge_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_aff_gt_set = foreign "isl_aff_gt_set" (Types.aff @-> Types.aff @-> returning Types.set)
let gt_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_gt_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_aff_le_set = foreign "isl_aff_le_set" (Types.aff @-> Types.aff @-> returning Types.set)
let le_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_le_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_aff_lt_set = foreign "isl_aff_lt_set" (Types.aff @-> Types.aff @-> returning Types.set)
let lt_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_lt_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_aff_ne_set = foreign "isl_aff_ne_set" (Types.aff @-> Types.aff @-> returning Types.set)
let ne_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_ne_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_aff_add = foreign "isl_aff_add" (Types.aff @-> Types.aff @-> returning Types.aff)
let add ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_add aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_ceil = foreign "isl_aff_ceil" (Types.aff @-> returning Types.aff)
let ceil ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_aff_ceil aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_div = foreign "isl_aff_div" (Types.aff @-> Types.aff @-> returning Types.aff)
let div ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_div aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_floor = foreign "isl_aff_floor" (Types.aff @-> returning Types.aff)
let floor ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_aff_floor aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_mul = foreign "isl_aff_mul" (Types.aff @-> Types.aff @-> returning Types.aff)
let mul ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_mul aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_neg = foreign "isl_aff_neg" (Types.aff @-> returning Types.aff)
let neg ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_aff_neg aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_sub = foreign "isl_aff_sub" (Types.aff @-> Types.aff @-> returning Types.aff)
let sub ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let ret = isl_aff_sub aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_aff_read_from_str = foreign "isl_aff_read_from_str" (Types.ctx @-> string @-> returning Types.aff)
let of_string ctx str = 
    let ret = isl_aff_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

