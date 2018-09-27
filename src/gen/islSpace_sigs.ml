open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val find_dim_by_id : Types.space -> dim_type -> Types.id -> int
    val find_dim_by_name : Types.space -> dim_type -> string -> int
    val dim : Types.space -> dim_type -> int
    val dump : Types.space -> unit
    val add_dims : Types.space -> dim_type -> int -> Types.space
    val add_param_id : Types.space -> Types.id -> Types.space
    val align_params : Types.space -> Types.space -> Types.space
    val alloc : int -> int -> int -> Types.space
    val curry : Types.space -> Types.space
    val domain : Types.space -> Types.space
    val domain_factor_domain : Types.space -> Types.space
    val domain_factor_range : Types.space -> Types.space
    val domain_map : Types.space -> Types.space
    val domain_product : Types.space -> Types.space -> Types.space
    val drop_dims : Types.space -> dim_type -> int -> int -> Types.space
    val factor_domain : Types.space -> Types.space
    val factor_range : Types.space -> Types.space
    val flatten_domain : Types.space -> Types.space
    val flatten_range : Types.space -> Types.space
    val from_domain : Types.space -> Types.space
    val from_range : Types.space -> Types.space
    val insert_dims : Types.space -> dim_type -> int -> int -> Types.space
    val join : Types.space -> Types.space -> Types.space
    val map_from_domain_and_range : Types.space -> Types.space -> Types.space
    val map_from_set : Types.space -> Types.space
    val move_dims : Types.space -> dim_type -> int -> dim_type -> int -> int -> Types.space
    val params : Types.space -> Types.space
    val params_alloc : int -> Types.space
    val product : Types.space -> Types.space -> Types.space
    val range : Types.space -> Types.space
    val range_curry : Types.space -> Types.space
    val range_factor_domain : Types.space -> Types.space
    val range_factor_range : Types.space -> Types.space
    val range_map : Types.space -> Types.space
    val range_product : Types.space -> Types.space -> Types.space
    val reset_tuple_id : Types.space -> dim_type -> Types.space
    val reset_user : Types.space -> Types.space
    val reverse : Types.space -> Types.space
    val set_alloc : int -> int -> Types.space
    val set_dim_id : Types.space -> dim_type -> int -> Types.id -> Types.space
    val set_dim_name : Types.space -> dim_type -> int -> string -> Types.space
    val set_from_params : Types.space -> Types.space
    val set_tuple_id : Types.space -> dim_type -> Types.id -> Types.space
    val set_tuple_name : Types.space -> dim_type -> string -> Types.space
    val uncurry : Types.space -> Types.space
    val unwrap : Types.space -> Types.space
    val wrap : Types.space -> Types.space
    val zip : Types.space -> Types.space
    val get_dim_id : Types.space -> dim_type -> int -> Types.id
    val get_tuple_id : Types.space -> dim_type -> Types.id
    val to_string : Types.space -> string
    val get_dim_name : Types.space -> dim_type -> int -> string
    val get_tuple_name : Types.space -> dim_type -> string
end
