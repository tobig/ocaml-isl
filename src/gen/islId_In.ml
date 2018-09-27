open IslId_Core

module Make (Ctx: IslCtx.SIG): IslId_sigs.S with module Types := Types = struct
    module Types = Types

    let dump = dump Ctx.ctx
    let to_string = to_string Ctx.ctx
    let get_name = get_name Ctx.ctx
end
