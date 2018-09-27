open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val compare_at : Types.basic_set -> Types.basic_set -> int -> int
    val n_constraint : Types.basic_set -> int
    val dim : Types.basic_set -> dim_type -> int
    val n_dim : Types.basic_set -> int
    val n_param : Types.basic_set -> int
    val dump : Types.basic_set -> unit
    val get_dim_name : Types.basic_set -> dim_type -> int -> string
    val get_tuple_name : Types.basic_set -> string
    val is_rational : Types.basic_set -> bool
    val compute_divs : Types.basic_set -> Types.set
    val get_space : Types.basic_set -> Types.space
    val unwrap : Types.basic_set -> Types.basic_map
    val add_constraint : Types.basic_set -> Types.constrnt -> Types.basic_set
    val add_dims : Types.basic_set -> dim_type -> int -> Types.basic_set
    val align_params : Types.basic_set -> Types.space -> Types.basic_set
    val coefficients : Types.basic_set -> Types.basic_set
    val drop_constraints_involving_dims : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val drop_constraints_not_involving_dims : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val drop_unused_params : Types.basic_set -> Types.basic_set
    val eliminate : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val empty : Types.space -> Types.basic_set
    val fix_si : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val fix_val : Types.basic_set -> dim_type -> int -> Types.value -> Types.basic_set
    val flat_product : Types.basic_set -> Types.basic_set -> Types.basic_set
    val from_constraint : Types.constrnt -> Types.basic_set
    val from_params : Types.basic_set -> Types.basic_set
    val insert_dims : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val lift : Types.basic_set -> Types.basic_set
    val lower_bound_val : Types.basic_set -> dim_type -> int -> Types.value -> Types.basic_set
    val move_dims : Types.basic_set -> dim_type -> int -> dim_type -> int -> int -> Types.basic_set
    val nat_universe : Types.space -> Types.basic_set
    val neg : Types.basic_set -> Types.basic_set
    val params : Types.basic_set -> Types.basic_set
    val positive_orthant : Types.space -> Types.basic_set
    val project_out : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val remove_dims : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val remove_divs : Types.basic_set -> Types.basic_set
    val remove_divs_involving_dims : Types.basic_set -> dim_type -> int -> int -> Types.basic_set
    val remove_redundancies : Types.basic_set -> Types.basic_set
    val remove_unknown_divs : Types.basic_set -> Types.basic_set
    val set_dim_name : Types.basic_set -> dim_type -> int -> string -> Types.basic_set
    val set_tuple_id : Types.basic_set -> Types.id -> Types.basic_set
    val set_tuple_name : Types.basic_set -> string -> Types.basic_set
    val solutions : Types.basic_set -> Types.basic_set
    val universe : Types.space -> Types.basic_set
    val upper_bound_val : Types.basic_set -> dim_type -> int -> Types.value -> Types.basic_set
    val max_val : Types.basic_set -> Types.aff -> Types.value
    val get_div : Types.basic_set -> int -> Types.aff
    val get_dim_id : Types.basic_set -> dim_type -> int -> Types.id
    val to_string : Types.basic_set -> string
    val get_local_space : Types.basic_set -> Types.local_space
    val lexmax : Types.basic_set -> Types.set
    val lexmin : Types.basic_set -> Types.set
    val union : Types.basic_set -> Types.basic_set -> Types.set
    val affine_hull : Types.basic_set -> Types.basic_set
    val apply : Types.basic_set -> Types.basic_map -> Types.basic_set
    val detect_equalities : Types.basic_set -> Types.basic_set
    val flatten : Types.basic_set -> Types.basic_set
    val gist : Types.basic_set -> Types.basic_set -> Types.basic_set
    val intersect : Types.basic_set -> Types.basic_set -> Types.basic_set
    val intersect_params : Types.basic_set -> Types.basic_set -> Types.basic_set
    val sample : Types.basic_set -> Types.basic_set
    val dim_max_val : Types.basic_set -> int -> Types.value
    val of_string : string -> Types.basic_set
end
