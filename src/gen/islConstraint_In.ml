open IslConstraint_Core

module Make (Ctx: IslCtx.SIG): IslConstraint_sigs.S with module Types := Types = struct
    module Types = Types

    let cmp_last_non_zero = cmp_last_non_zero Ctx.ctx
    let dim = dim Ctx.ctx
    let plain_cmp = plain_cmp Ctx.ctx
    let dump = dump Ctx.ctx
    let get_dim_name = get_dim_name Ctx.ctx
    let negate = negate Ctx.ctx
    let is_div_constraint = is_div_constraint Ctx.ctx
    let is_equal = is_equal Ctx.ctx
    let get_space = get_space Ctx.ctx
    let get_coefficient_val = get_coefficient_val Ctx.ctx
    let get_constant_val = get_constant_val Ctx.ctx
    let get_aff = get_aff Ctx.ctx
    let get_bound = get_bound Ctx.ctx
    let get_div = get_div Ctx.ctx
    let get_local_space = get_local_space Ctx.ctx
    let alloc_equality = alloc_equality Ctx.ctx
    let alloc_inequality = alloc_inequality Ctx.ctx
    let set_coefficient_si = set_coefficient_si Ctx.ctx
    let set_coefficient_val = set_coefficient_val Ctx.ctx
    let set_constant_si = set_constant_si Ctx.ctx
    let set_constant_val = set_constant_val Ctx.ctx
    let equality_alloc = equality_alloc Ctx.ctx
    let equality_from_aff = equality_from_aff Ctx.ctx
    let inequality_alloc = inequality_alloc Ctx.ctx
    let inequality_from_aff = inequality_from_aff Ctx.ctx
end
