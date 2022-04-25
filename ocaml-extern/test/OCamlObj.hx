type t
type raw_data = nativeint
external repr : 'a -> t = "%identity"
external obj : t -> 'a = "%identity"
external magic : 'a -> 'b = "%identity"
external is_int : t -> bool = "%obj_is_int"
val is_block : t -> bool
external tag : t -> int = "caml_obj_tag" [@@noalloc]
external set_tag : t -> int -> unit = "caml_obj_set_tag"
external size : t -> int = "%obj_size"
external reachable_words : t -> int = "caml_obj_reachable_words"
external field : t -> int -> t = "%obj_field"
external set_field : t -> int -> t -> unit = "%obj_set_field"
external floatarray_get : floatarray -> int -> float = "caml_floatarray_get"
external floatarray_set : floatarray -> int -> float -> unit
  = "caml_floatarray_set"
val double_field : t -> int -> float
val set_double_field : t -> int -> float -> unit
external raw_field : t -> int -> raw_data = "caml_obj_raw_field"
external set_raw_field : t -> int -> raw_data -> unit
  = "caml_obj_set_raw_field"
external new_block : int -> int -> t = "caml_obj_block"
external dup : t -> t = "caml_obj_dup"
external truncate : t -> int -> unit = "caml_obj_truncate"
external add_offset : t -> Int32.t -> t = "caml_obj_add_offset"
external with_tag : int -> t -> t = "caml_obj_with_tag"
val marshal : t -> bytes
val unmarshal : bytes -> int -> 'a * int
val first_non_constant_constructor_tag : int
val last_non_constant_constructor_tag : int
val lazy_tag : int
val closure_tag : int
val object_tag : int
val infix_tag : int
val forward_tag : int
val no_scan_tag : int
val abstract_tag : int
val string_tag : int
val double_tag : int
val double_array_tag : int
val custom_tag : int
val final_tag : int
val int_tag : int
val out_of_heap_tag : int
val unaligned_tag : int
module Closure :
  sig
    type info = { arity : int; start_env : int; }
    val info_of_raw : nativeint -> info
    val info : t -> info
  end
module Extension_constructor :
  sig
    type t = extension_constructor
    val of_val : 'a -> t
    val name : t -> string
    val id : t -> int
  end
val extension_constructor : 'a -> Extension_constructor.t
val extension_name : Extension_constructor.t -> string
val extension_id : Extension_constructor.t -> int
module Ephemeron :
  sig
    type obj_t = t
    type t
    val additional_values : int
    val max_ephe_length : int
    val create : int -> t
    val length : 'a -> int
    val raise_if_invalid_offset : 'a -> int -> string -> unit
    val get_key : t -> int -> obj_t option
    val get_key_copy : t -> int -> obj_t option
    val set_key : t -> int -> obj_t -> unit
    val unset_key : t -> int -> unit
    val check_key : t -> int -> bool
    val blit_key : t -> int -> t -> int -> int -> unit
    external get_data : t -> obj_t option = "caml_ephe_get_data"
    external get_data_copy : t -> obj_t option = "caml_ephe_get_data_copy"
    external set_data : t -> obj_t -> unit = "caml_ephe_set_data"
    external unset_data : t -> unit = "caml_ephe_unset_data"
    external check_data : t -> bool = "caml_ephe_check_data"
    external blit_data : t -> t -> unit = "caml_ephe_blit_data"
  end
