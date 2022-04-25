external format_int : string -> int -> string = "caml_format_int"
val err_no_pred : string
val err_no_succ : string
val err_not_sv : int -> string
val err_not_latin1 : int -> string
type t = int
val min : int
val max : int
val lo_bound : int
val hi_bound : int
val bom : int
val rep : int
val succ : int -> int
val pred : int -> int
val is_valid : int -> bool
val of_int : int -> int
external unsafe_of_int : int -> t = "%identity"
external to_int : t -> int = "%identity"
val is_char : int -> bool
val of_char : char -> int
val to_char : int -> char
val unsafe_to_char : int -> char
val equal : int -> int -> bool
val compare : int -> int -> int
val hash : t -> int
