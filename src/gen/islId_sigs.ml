open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val dump : Types.id -> unit
    val to_string : Types.id -> string
    val get_name : Types.id -> string
end
