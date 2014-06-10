open IslUnionMap_Core

module Make (Ctx: IslCtx.SIG): IslUnionMap_sigs.S with module Types := Types = struct
    module Types = Types

    let n_map = n_map Ctx.ctx
    let dim = dim Ctx.ctx
    let dump = dump Ctx.ctx
    let plain_is_injective = plain_is_injective Ctx.ctx
    let params = params Ctx.ctx
    let get_space = get_space Ctx.ctx
    let extract_map = extract_map Ctx.ctx
    let sample = sample Ctx.ctx
    let add_map = add_map Ctx.ctx
    let align_params = align_params Ctx.ctx
    let compute_divs = compute_divs Ctx.ctx
    let curry = curry Ctx.ctx
    let deltas_map = deltas_map Ctx.ctx
    let domain_map = domain_map Ctx.ctx
    let domain_product = domain_product Ctx.ctx
    let empty = empty Ctx.ctx
    let fixed_power_val = fixed_power_val Ctx.ctx
    let flat_range_product = flat_range_product Ctx.ctx
    let from_domain = from_domain Ctx.ctx
    let from_domain_and_range = from_domain_and_range Ctx.ctx
    let from_range = from_range Ctx.ctx
    let lex_ge_union_map = lex_ge_union_map Ctx.ctx
    let lex_gt_union_map = lex_gt_union_map Ctx.ctx
    let lex_le_union_map = lex_le_union_map Ctx.ctx
    let lex_lt_union_map = lex_lt_union_map Ctx.ctx
    let product = product Ctx.ctx
    let project_out = project_out Ctx.ctx
    let range_map = range_map Ctx.ctx
    let range_product = range_product Ctx.ctx
    let reset_user = reset_user Ctx.ctx
    let simple_hull = simple_hull Ctx.ctx
    let uncurry = uncurry Ctx.ctx
    let universe = universe Ctx.ctx
    let zip = zip Ctx.ctx
    let domain = domain Ctx.ctx
    let range = range Ctx.ctx
    let wrap = wrap Ctx.ctx
    let get_dim_id = get_dim_id Ctx.ctx
    let is_bijective = is_bijective Ctx.ctx
    let is_empty = is_empty Ctx.ctx
    let is_equal = is_equal Ctx.ctx
    let is_injective = is_injective Ctx.ctx
    let is_single_valued = is_single_valued Ctx.ctx
    let is_strict_subset = is_strict_subset Ctx.ctx
    let is_subset = is_subset Ctx.ctx
    let affine_hull = affine_hull Ctx.ctx
    let apply_domain = apply_domain Ctx.ctx
    let apply_range = apply_range Ctx.ctx
    let coalesce = coalesce Ctx.ctx
    let detect_equalities = detect_equalities Ctx.ctx
    let gist = gist Ctx.ctx
    let gist_domain = gist_domain Ctx.ctx
    let gist_params = gist_params Ctx.ctx
    let gist_range = gist_range Ctx.ctx
    let intersect = intersect Ctx.ctx
    let intersect_domain = intersect_domain Ctx.ctx
    let intersect_params = intersect_params Ctx.ctx
    let intersect_range = intersect_range Ctx.ctx
    let lexmax = lexmax Ctx.ctx
    let lexmin = lexmin Ctx.ctx
    let polyhedral_hull = polyhedral_hull Ctx.ctx
    let reverse = reverse Ctx.ctx
    let subtract = subtract Ctx.ctx
    let subtract_domain = subtract_domain Ctx.ctx
    let subtract_range = subtract_range Ctx.ctx
    let union = union Ctx.ctx
    let deltas = deltas Ctx.ctx
    let from_basic_map = from_basic_map Ctx.ctx
    let from_map = from_map Ctx.ctx
    let of_string = of_string Ctx.ctx
end
