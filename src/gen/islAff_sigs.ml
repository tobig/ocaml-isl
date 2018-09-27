open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val coefficient_sgn : Types.aff -> dim_type -> int -> int
    val dim : Types.aff -> dim_type -> int
    val find_dim_by_name : Types.aff -> dim_type -> string -> int
    val dump : Types.aff -> unit
    val get_dim_name : Types.aff -> dim_type -> int -> string
    val get_domain_space : Types.aff -> Types.space
    val get_space : Types.aff -> Types.space
    val eq_basic_set : Types.aff -> Types.aff -> Types.basic_set
    val ge_basic_set : Types.aff -> Types.aff -> Types.basic_set
    val gt_basic_set : Types.aff -> Types.aff -> Types.basic_set
    val le_basic_set : Types.aff -> Types.aff -> Types.basic_set
    val lt_basic_set : Types.aff -> Types.aff -> Types.basic_set
    val neg_basic_set : Types.aff -> Types.basic_set
    val zero_basic_set : Types.aff -> Types.basic_set
    val get_coefficient_val : Types.aff -> dim_type -> int -> Types.value
    val get_constant_val : Types.aff -> Types.value
    val get_denominator_val : Types.aff -> Types.value
    val add_coefficient_si : Types.aff -> dim_type -> int -> int -> Types.aff
    val add_coefficient_val : Types.aff -> dim_type -> int -> Types.value -> Types.aff
    val add_constant_num_si : Types.aff -> int -> Types.aff
    val add_constant_si : Types.aff -> int -> Types.aff
    val add_constant_val : Types.aff -> Types.value -> Types.aff
    val add_dims : Types.aff -> dim_type -> int -> Types.aff
    val align_params : Types.aff -> Types.space -> Types.aff
    val drop_dims : Types.aff -> dim_type -> int -> int -> Types.aff
    val from_range : Types.aff -> Types.aff
    val get_div : Types.aff -> int -> Types.aff
    val gist : Types.aff -> Types.set -> Types.aff
    val gist_params : Types.aff -> Types.set -> Types.aff
    val insert_dims : Types.aff -> dim_type -> int -> int -> Types.aff
    val mod_val : Types.aff -> Types.value -> Types.aff
    val move_dims : Types.aff -> dim_type -> int -> dim_type -> int -> int -> Types.aff
    val nan_on_domain : Types.local_space -> Types.aff
    val param_on_domain_space_id : Types.space -> Types.id -> Types.aff
    val project_domain_on_params : Types.aff -> Types.aff
    val pullback_aff : Types.aff -> Types.aff -> Types.aff
    val scale_down_ui : Types.aff -> int -> Types.aff
    val scale_down_val : Types.aff -> Types.value -> Types.aff
    val scale_val : Types.aff -> Types.value -> Types.aff
    val set_coefficient_si : Types.aff -> dim_type -> int -> int -> Types.aff
    val set_coefficient_val : Types.aff -> dim_type -> int -> Types.value -> Types.aff
    val set_constant_si : Types.aff -> int -> Types.aff
    val set_constant_val : Types.aff -> Types.value -> Types.aff
    val set_dim_id : Types.aff -> dim_type -> int -> Types.id -> Types.aff
    val set_dim_name : Types.aff -> dim_type -> int -> string -> Types.aff
    val set_tuple_id : Types.aff -> dim_type -> Types.id -> Types.aff
    val val_on_domain : Types.local_space -> Types.value -> Types.aff
    val var_on_domain : Types.local_space -> dim_type -> int -> Types.aff
    val zero_on_domain : Types.local_space -> Types.aff
    val to_string : Types.aff -> string
    val get_domain_local_space : Types.aff -> Types.local_space
    val get_local_space : Types.aff -> Types.local_space
    val eq_set : Types.aff -> Types.aff -> Types.set
    val ge_set : Types.aff -> Types.aff -> Types.set
    val gt_set : Types.aff -> Types.aff -> Types.set
    val le_set : Types.aff -> Types.aff -> Types.set
    val lt_set : Types.aff -> Types.aff -> Types.set
    val ne_set : Types.aff -> Types.aff -> Types.set
    val add : Types.aff -> Types.aff -> Types.aff
    val ceil : Types.aff -> Types.aff
    val div : Types.aff -> Types.aff -> Types.aff
    val floor : Types.aff -> Types.aff
    val mul : Types.aff -> Types.aff -> Types.aff
    val neg : Types.aff -> Types.aff
    val sub : Types.aff -> Types.aff -> Types.aff
    val of_string : string -> Types.aff
end
