open IslValue_Core

module Make (Ctx: IslCtx.SIG): IslValue_sigs.S with module Types := Types = struct
    module Types = Types

    let dump = dump Ctx.ctx
    let two_exp = two_exp Ctx.ctx
    let get_den_val = get_den_val Ctx.ctx
    let to_string = to_string Ctx.ctx
    let sgn = sgn Ctx.ctx
    let abs = abs Ctx.ctx
    let add = add Ctx.ctx
    let ceil = ceil Ctx.ctx
    let div = div Ctx.ctx
    let floor = floor Ctx.ctx
    let gcd = gcd Ctx.ctx
    let infty = infty Ctx.ctx
    let inv = inv Ctx.ctx
    let max = max Ctx.ctx
    let min = min Ctx.ctx
    let modulo = modulo Ctx.ctx
    let mul = mul Ctx.ctx
    let nan = nan Ctx.ctx
    let neg = neg Ctx.ctx
    let neginfty = neginfty Ctx.ctx
    let negone = negone Ctx.ctx
    let one = one Ctx.ctx
    let sub = sub Ctx.ctx
    let trunc = trunc Ctx.ctx
    let zero = zero Ctx.ctx
    let of_string = of_string Ctx.ctx
end
