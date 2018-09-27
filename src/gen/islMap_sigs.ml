open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val find_dim_by_id : Types.map -> dim_type -> Types.id -> int
    val find_dim_by_name : Types.map -> dim_type -> string -> int
    val n_basic_map : Types.map -> int
    val dim : Types.map -> dim_type -> int
    val fix_input_si : Types.map -> int -> int -> Types.map
    val remove_inputs : Types.map -> int -> int -> Types.map
    val dump : Types.map -> unit
    val get_dim_name : Types.map -> dim_type -> int -> string
    val get_tuple_name : Types.map -> dim_type -> string
    val is_translation : Types.map -> bool
    val domain : Types.map -> Types.set
    val params : Types.map -> Types.set
    val range : Types.map -> Types.set
    val wrap : Types.map -> Types.set
    val get_space : Types.map -> Types.space
    val add_constraint : Types.map -> Types.constrnt -> Types.map
    val add_dims : Types.map -> dim_type -> int -> Types.map
    val align_params : Types.map -> Types.space -> Types.map
    val compute_divs : Types.map -> Types.map
    val curry : Types.map -> Types.map
    val deltas_map : Types.map -> Types.map
    val domain_factor_domain : Types.map -> Types.map
    val domain_factor_range : Types.map -> Types.map
    val domain_map : Types.map -> Types.map
    val domain_product : Types.map -> Types.map -> Types.map
    val drop_constraints_involving_dims : Types.map -> dim_type -> int -> int -> Types.map
    val drop_constraints_not_involving_dims : Types.map -> dim_type -> int -> int -> Types.map
    val drop_unused_params : Types.map -> Types.map
    val eliminate : Types.map -> dim_type -> int -> int -> Types.map
    val empty : Types.space -> Types.map
    val equate : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val factor_domain : Types.map -> Types.map
    val factor_range : Types.map -> Types.map
    val fix_si : Types.map -> dim_type -> int -> int -> Types.map
    val fix_val : Types.map -> dim_type -> int -> Types.value -> Types.map
    val fixed_power_val : Types.map -> Types.value -> Types.map
    val flat_domain_product : Types.map -> Types.map -> Types.map
    val flat_product : Types.map -> Types.map -> Types.map
    val flat_range_product : Types.map -> Types.map -> Types.map
    val floordiv_val : Types.map -> Types.value -> Types.map
    val from_aff : Types.aff -> Types.map
    val from_domain : Types.set -> Types.map
    val from_domain_and_range : Types.set -> Types.set -> Types.map
    val from_range : Types.set -> Types.map
    val from_union_map : Types.union_map -> Types.map
    val gist_basic_map : Types.map -> Types.basic_map -> Types.map
    val gist_params : Types.map -> Types.set -> Types.map
    val gist_range : Types.map -> Types.set -> Types.map
    val identity : Types.space -> Types.map
    val insert_dims : Types.map -> dim_type -> int -> int -> Types.map
    val intersect_domain_factor_range : Types.map -> Types.map -> Types.map
    val intersect_range_factor_range : Types.map -> Types.map -> Types.map
    val lex_ge : Types.space -> Types.map
    val lex_ge_first : Types.space -> int -> Types.map
    val lex_ge_map : Types.map -> Types.map -> Types.map
    val lex_gt : Types.space -> Types.map
    val lex_gt_first : Types.space -> int -> Types.map
    val lex_gt_map : Types.map -> Types.map -> Types.map
    val lex_le : Types.space -> Types.map
    val lex_le_first : Types.space -> int -> Types.map
    val lex_le_map : Types.map -> Types.map -> Types.map
    val lex_lt : Types.space -> Types.map
    val lex_lt_first : Types.space -> int -> Types.map
    val lex_lt_map : Types.map -> Types.map -> Types.map
    val lower_bound_si : Types.map -> dim_type -> int -> int -> Types.map
    val make_disjoint : Types.map -> Types.map
    val move_dims : Types.map -> dim_type -> int -> dim_type -> int -> int -> Types.map
    val nat_universe : Types.space -> Types.map
    val neg : Types.map -> Types.map
    val oppose : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_ge : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_gt : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_le : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_lt : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val product : Types.map -> Types.map -> Types.map
    val project_out : Types.map -> dim_type -> int -> int -> Types.map
    val range_curry : Types.map -> Types.map
    val range_factor_domain : Types.map -> Types.map
    val range_factor_range : Types.map -> Types.map
    val range_map : Types.map -> Types.map
    val range_product : Types.map -> Types.map -> Types.map
    val remove_dims : Types.map -> dim_type -> int -> int -> Types.map
    val remove_divs : Types.map -> Types.map
    val remove_divs_involving_dims : Types.map -> dim_type -> int -> int -> Types.map
    val remove_redundancies : Types.map -> Types.map
    val remove_unknown_divs : Types.map -> Types.map
    val reset_tuple_id : Types.map -> dim_type -> Types.map
    val reset_user : Types.map -> Types.map
    val set_dim_id : Types.map -> dim_type -> int -> Types.id -> Types.map
    val set_dim_name : Types.map -> dim_type -> int -> string -> Types.map
    val set_tuple_id : Types.map -> dim_type -> Types.id -> Types.map
    val set_tuple_name : Types.map -> dim_type -> string -> Types.map
    val subtract_domain : Types.map -> Types.set -> Types.map
    val subtract_range : Types.map -> Types.set -> Types.map
    val sum : Types.map -> Types.map -> Types.map
    val uncurry : Types.map -> Types.map
    val union_disjoint : Types.map -> Types.map -> Types.map
    val universe : Types.space -> Types.map
    val upper_bound_si : Types.map -> dim_type -> int -> int -> Types.map
    val zip : Types.map -> Types.map
    val convex_hull : Types.map -> Types.basic_map
    val plain_unshifted_simple_hull : Types.map -> Types.basic_map
    val simple_hull : Types.map -> Types.basic_map
    val plain_get_val_if_fixed : Types.map -> dim_type -> int -> Types.value
    val get_dim_id : Types.map -> dim_type -> int -> Types.id
    val get_tuple_id : Types.map -> dim_type -> Types.id
    val to_string : Types.map -> string
    val deltas : Types.map -> Types.set
    val apply_domain : Types.map -> Types.map -> Types.map
    val apply_range : Types.map -> Types.map -> Types.map
    val coalesce : Types.map -> Types.map
    val complement : Types.map -> Types.map
    val detect_equalities : Types.map -> Types.map
    val flatten : Types.map -> Types.map
    val flatten_domain : Types.map -> Types.map
    val flatten_range : Types.map -> Types.map
    val gist : Types.map -> Types.map -> Types.map
    val gist_domain : Types.map -> Types.set -> Types.map
    val intersect : Types.map -> Types.map -> Types.map
    val intersect_domain : Types.map -> Types.set -> Types.map
    val intersect_params : Types.map -> Types.set -> Types.map
    val intersect_range : Types.map -> Types.set -> Types.map
    val lexmax : Types.map -> Types.map
    val lexmin : Types.map -> Types.map
    val reverse : Types.map -> Types.map
    val subtract : Types.map -> Types.map -> Types.map
    val union : Types.map -> Types.map -> Types.map
    val affine_hull : Types.map -> Types.basic_map
    val polyhedral_hull : Types.map -> Types.basic_map
    val sample : Types.map -> Types.basic_map
    val unshifted_simple_hull : Types.map -> Types.basic_map
    val from_basic_map : Types.basic_map -> Types.map
    val of_string : string -> Types.map
end
