open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors
open Unsigned

let isl_val_dump = foreign "isl_val_dump" (Types.value @-> returning void)
let dump ctx v = 
    let ret = isl_val_dump v in
    check_for_errors ctx;
    ret

let isl_val_2exp = foreign "isl_val_2exp" (Types.value @-> returning Types.value)
let two_exp ctx v = 
    let v = val_copy v in
    let ret = isl_val_2exp v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_get_den_val = foreign "isl_val_get_den_val" (Types.value @-> returning Types.value)
let get_den_val ctx v = 
    let ret = isl_val_get_den_val v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_to_str = foreign "isl_val_to_str" (Types.value @-> returning string)
let to_string ctx v = 
    let ret = isl_val_to_str v in
    check_for_errors ctx;
    Gc.finalise (fun _ -> ()) ret;
    ret

let isl_val_sgn = foreign "isl_val_sgn" (Types.value @-> returning int)
let sgn ctx v = 
    let ret = isl_val_sgn v in
    check_for_errors ctx;
    ret

let isl_val_abs = foreign "isl_val_abs" (Types.value @-> returning Types.value)
let abs ctx v = 
    let v = val_copy v in
    let ret = isl_val_abs v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_add = foreign "isl_val_add" (Types.value @-> Types.value @-> returning Types.value)
let add ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_add v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_ceil = foreign "isl_val_ceil" (Types.value @-> returning Types.value)
let ceil ctx v = 
    let v = val_copy v in
    let ret = isl_val_ceil v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_div = foreign "isl_val_div" (Types.value @-> Types.value @-> returning Types.value)
let div ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_div v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_floor = foreign "isl_val_floor" (Types.value @-> returning Types.value)
let floor ctx v = 
    let v = val_copy v in
    let ret = isl_val_floor v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_gcd = foreign "isl_val_gcd" (Types.value @-> Types.value @-> returning Types.value)
let gcd ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_gcd v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_infty = foreign "isl_val_infty" (Types.ctx @-> returning Types.value)
let infty ctx = 
    let ret = isl_val_infty ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_inv = foreign "isl_val_inv" (Types.value @-> returning Types.value)
let inv ctx v = 
    let v = val_copy v in
    let ret = isl_val_inv v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_max = foreign "isl_val_max" (Types.value @-> Types.value @-> returning Types.value)
let max ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_max v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_min = foreign "isl_val_min" (Types.value @-> Types.value @-> returning Types.value)
let min ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_min v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_mod = foreign "isl_val_mod" (Types.value @-> Types.value @-> returning Types.value)
let modulo ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_mod v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_mul = foreign "isl_val_mul" (Types.value @-> Types.value @-> returning Types.value)
let mul ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_mul v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_nan = foreign "isl_val_nan" (Types.ctx @-> returning Types.value)
let nan ctx = 
    let ret = isl_val_nan ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_neg = foreign "isl_val_neg" (Types.value @-> returning Types.value)
let neg ctx v = 
    let v = val_copy v in
    let ret = isl_val_neg v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_neginfty = foreign "isl_val_neginfty" (Types.ctx @-> returning Types.value)
let neginfty ctx = 
    let ret = isl_val_neginfty ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_negone = foreign "isl_val_negone" (Types.ctx @-> returning Types.value)
let negone ctx = 
    let ret = isl_val_negone ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_one = foreign "isl_val_one" (Types.ctx @-> returning Types.value)
let one ctx = 
    let ret = isl_val_one ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_sub = foreign "isl_val_sub" (Types.value @-> Types.value @-> returning Types.value)
let sub ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let ret = isl_val_sub v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_trunc = foreign "isl_val_trunc" (Types.value @-> returning Types.value)
let trunc ctx v = 
    let v = val_copy v in
    let ret = isl_val_trunc v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_zero = foreign "isl_val_zero" (Types.ctx @-> returning Types.value)
let zero ctx = 
    let ret = isl_val_zero ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_val_read_from_str = foreign "isl_val_read_from_str" (Types.ctx @-> string @-> returning Types.value)
let of_string ctx str = 
    let ret = isl_val_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

