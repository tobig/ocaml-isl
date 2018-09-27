open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val dump : Types.value -> unit
    val two_exp : Types.value -> Types.value
    val get_den_val : Types.value -> Types.value
    val to_string : Types.value -> string
    val sgn : Types.value -> int
    val abs : Types.value -> Types.value
    val add : Types.value -> Types.value -> Types.value
    val ceil : Types.value -> Types.value
    val div : Types.value -> Types.value -> Types.value
    val floor : Types.value -> Types.value
    val gcd : Types.value -> Types.value -> Types.value
    val infty : Types.value
    val inv : Types.value -> Types.value
    val max : Types.value -> Types.value -> Types.value
    val min : Types.value -> Types.value -> Types.value
    val modulo : Types.value -> Types.value -> Types.value
    val mul : Types.value -> Types.value -> Types.value
    val nan : Types.value
    val neg : Types.value -> Types.value
    val neginfty : Types.value
    val negone : Types.value
    val one : Types.value
    val sub : Types.value -> Types.value -> Types.value
    val trunc : Types.value -> Types.value
    val zero : Types.value
    val of_string : string -> Types.value
end
