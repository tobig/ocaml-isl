open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val cmp_last_non_zero : Types.constrnt -> Types.constrnt -> int
    val dim : Types.constrnt -> dim_type -> int
    val plain_cmp : Types.constrnt -> Types.constrnt -> int
    val dump : Types.constrnt -> unit
    val get_dim_name : Types.constrnt -> dim_type -> int -> string
    val negate : Types.constrnt -> Types.constrnt
    val is_div_constraint : Types.constrnt -> bool
    val is_equal : Types.constrnt -> Types.constrnt -> bool
    val get_space : Types.constrnt -> Types.space
    val get_coefficient_val : Types.constrnt -> dim_type -> int -> Types.value
    val get_constant_val : Types.constrnt -> Types.value
    val get_aff : Types.constrnt -> Types.aff
    val get_bound : Types.constrnt -> dim_type -> int -> Types.aff
    val get_div : Types.constrnt -> int -> Types.aff
    val get_local_space : Types.constrnt -> Types.local_space
    val alloc_equality : Types.local_space -> Types.constrnt
    val alloc_inequality : Types.local_space -> Types.constrnt
    val set_coefficient_si : Types.constrnt -> dim_type -> int -> int -> Types.constrnt
    val set_coefficient_val : Types.constrnt -> dim_type -> int -> Types.value -> Types.constrnt
    val set_constant_si : Types.constrnt -> int -> Types.constrnt
    val set_constant_val : Types.constrnt -> Types.value -> Types.constrnt
    val equality_alloc : Types.local_space -> Types.constrnt
    val equality_from_aff : Types.aff -> Types.constrnt
    val inequality_alloc : Types.local_space -> Types.constrnt
    val inequality_from_aff : Types.aff -> Types.constrnt
end
