open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val find_dim_by_id : Types.set -> dim_type -> Types.id -> int
    val find_dim_by_name : Types.set -> dim_type -> string -> int
    val follows_at : Types.set -> Types.set -> int -> int
    val n_basic_set : Types.set -> int
    val plain_cmp : Types.set -> Types.set -> int
    val size : Types.set -> int
    val dim : Types.set -> dim_type -> int
    val n_dim : Types.set -> int
    val n_param : Types.set -> int
    val fix_dim_si : Types.set -> int -> int -> Types.set
    val dump : Types.set -> unit
    val get_dim_name : Types.set -> dim_type -> int -> string
    val get_tuple_name : Types.set -> string
    val add_constraint : Types.set -> Types.constrnt -> Types.set
    val add_dims : Types.set -> dim_type -> int -> Types.set
    val align_params : Types.set -> Types.space -> Types.set
    val compute_divs : Types.set -> Types.set
    val drop_constraints_involving_dims : Types.set -> dim_type -> int -> int -> Types.set
    val drop_constraints_not_involving_dims : Types.set -> dim_type -> int -> int -> Types.set
    val drop_unused_params : Types.set -> Types.set
    val eliminate : Types.set -> dim_type -> int -> int -> Types.set
    val eliminate_dims : Types.set -> int -> int -> Types.set
    val empty : Types.space -> Types.set
    val equate : Types.set -> dim_type -> int -> dim_type -> int -> Types.set
    val fix_si : Types.set -> dim_type -> int -> int -> Types.set
    val fix_val : Types.set -> dim_type -> int -> Types.value -> Types.set
    val flat_product : Types.set -> Types.set -> Types.set
    val from_params : Types.set -> Types.set
    val from_union_set : Types.union_set -> Types.set
    val gist_basic_set : Types.set -> Types.basic_set -> Types.set
    val gist_params : Types.set -> Types.set -> Types.set
    val insert_dims : Types.set -> dim_type -> int -> int -> Types.set
    val lift : Types.set -> Types.set
    val lower_bound_si : Types.set -> dim_type -> int -> int -> Types.set
    val lower_bound_val : Types.set -> dim_type -> int -> Types.value -> Types.set
    val make_disjoint : Types.set -> Types.set
    val move_dims : Types.set -> dim_type -> int -> dim_type -> int -> int -> Types.set
    val nat_universe : Types.space -> Types.set
    val neg : Types.set -> Types.set
    val params : Types.set -> Types.set
    val product : Types.set -> Types.set -> Types.set
    val project_out : Types.set -> dim_type -> int -> int -> Types.set
    val remove_dims : Types.set -> dim_type -> int -> int -> Types.set
    val remove_divs : Types.set -> Types.set
    val remove_divs_involving_dims : Types.set -> dim_type -> int -> int -> Types.set
    val remove_redundancies : Types.set -> Types.set
    val remove_unknown_divs : Types.set -> Types.set
    val reset_space : Types.set -> Types.space -> Types.set
    val reset_tuple_id : Types.set -> Types.set
    val reset_user : Types.set -> Types.set
    val set_dim_id : Types.set -> dim_type -> int -> Types.id -> Types.set
    val set_dim_name : Types.set -> dim_type -> int -> string -> Types.set
    val set_tuple_id : Types.set -> Types.id -> Types.set
    val set_tuple_name : Types.set -> string -> Types.set
    val split_dims : Types.set -> dim_type -> int -> int -> Types.set
    val sum : Types.set -> Types.set -> Types.set
    val union_disjoint : Types.set -> Types.set -> Types.set
    val universe : Types.space -> Types.set
    val upper_bound_si : Types.set -> dim_type -> int -> int -> Types.set
    val upper_bound_val : Types.set -> dim_type -> int -> Types.value -> Types.set
    val get_space : Types.set -> Types.space
    val flatten_map : Types.set -> Types.map
    val lex_ge_set : Types.set -> Types.set -> Types.map
    val lex_gt_set : Types.set -> Types.set -> Types.map
    val lex_le_set : Types.set -> Types.set -> Types.map
    val lex_lt_set : Types.set -> Types.set -> Types.map
    val project_onto_map : Types.set -> dim_type -> int -> int -> Types.map
    val unwrap : Types.set -> Types.map
    val wrapped_domain_map : Types.set -> Types.map
    val bounded_simple_hull : Types.set -> Types.basic_set
    val coefficients : Types.set -> Types.basic_set
    val convex_hull : Types.set -> Types.basic_set
    val plain_unshifted_simple_hull : Types.set -> Types.basic_set
    val simple_hull : Types.set -> Types.basic_set
    val solutions : Types.set -> Types.basic_set
    val count_val : Types.set -> Types.value
    val plain_get_val_if_fixed : Types.set -> dim_type -> int -> Types.value
    val get_dim_id : Types.set -> dim_type -> int -> Types.id
    val get_tuple_id : Types.set -> Types.id
    val to_string : Types.set -> string
    val apply : Types.set -> Types.map -> Types.set
    val coalesce : Types.set -> Types.set
    val complement : Types.set -> Types.set
    val detect_equalities : Types.set -> Types.set
    val flatten : Types.set -> Types.set
    val gist : Types.set -> Types.set -> Types.set
    val intersect : Types.set -> Types.set -> Types.set
    val intersect_params : Types.set -> Types.set -> Types.set
    val lexmax : Types.set -> Types.set
    val lexmin : Types.set -> Types.set
    val subtract : Types.set -> Types.set -> Types.set
    val union : Types.set -> Types.set -> Types.set
    val identity : Types.set -> Types.map
    val affine_hull : Types.set -> Types.basic_set
    val polyhedral_hull : Types.set -> Types.basic_set
    val sample : Types.set -> Types.basic_set
    val unshifted_simple_hull : Types.set -> Types.basic_set
    val get_stride : Types.set -> int -> Types.value
    val max_val : Types.set -> Types.aff -> Types.value
    val min_val : Types.set -> Types.aff -> Types.value
    val from_basic_set : Types.basic_set -> Types.set
    val of_string : string -> Types.set
end
