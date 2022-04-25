external neg : nativeint -> nativeint = "%nativeint_neg"
external add : nativeint -> nativeint -> nativeint = "%nativeint_add"
external sub : nativeint -> nativeint -> nativeint = "%nativeint_sub"
external mul : nativeint -> nativeint -> nativeint = "%nativeint_mul"
external div : nativeint -> nativeint -> nativeint = "%nativeint_div"
external rem : nativeint -> nativeint -> nativeint = "%nativeint_mod"
external logand : nativeint -> nativeint -> nativeint = "%nativeint_and"
external logor : nativeint -> nativeint -> nativeint = "%nativeint_or"
external logxor : nativeint -> nativeint -> nativeint = "%nativeint_xor"
external shift_left : nativeint -> int -> nativeint = "%nativeint_lsl"
external shift_right : nativeint -> int -> nativeint = "%nativeint_asr"
external shift_right_logical : nativeint -> int -> nativeint
  = "%nativeint_lsr"
external of_int : int -> nativeint = "%nativeint_of_int"
external to_int : nativeint -> int = "%nativeint_to_int"
external of_float : float -> nativeint = "caml_nativeint_of_float"
  "caml_nativeint_of_float_unboxed" [@@unboxed] [@@noalloc]
external to_float : nativeint -> float = "caml_nativeint_to_float"
  "caml_nativeint_to_float_unboxed" [@@unboxed] [@@noalloc]
external of_int32 : int32 -> nativeint = "%nativeint_of_int32"
external to_int32 : nativeint -> int32 = "%nativeint_to_int32"
val zero : nativeint
val one : nativeint
val minus_one : nativeint
val succ : nativeint -> nativeint
val pred : nativeint -> nativeint
val abs : nativeint -> nativeint
val size : int
val min_int : nativeint
val max_int : nativeint
val lognot : nativeint -> nativeint
val unsigned_to_int : nativeint -> int option
external format : string -> nativeint -> string = "caml_nativeint_format"
val to_string : nativeint -> string
external of_string : string -> nativeint = "caml_nativeint_of_string"
val of_string_opt : string -> nativeint option
type t = nativeint
val compare : t -> t -> int
val equal : t -> t -> bool
val unsigned_compare : nativeint -> nativeint -> int
val unsigned_div : nativeint -> nativeint -> nativeint
val unsigned_rem : nativeint -> nativeint -> nativeint
