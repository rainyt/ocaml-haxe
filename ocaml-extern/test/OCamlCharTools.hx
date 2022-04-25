external code : char -> int = "%identity"
external unsafe_chr : int -> char = "%identity"
val chr : int -> char
external bytes_create : int -> bytes = "caml_create_bytes"
external bytes_unsafe_set : bytes -> int -> char -> unit
  = "%bytes_unsafe_set"
external unsafe_to_string : bytes -> string = "%bytes_to_string"
val escaped : char -> string
val lowercase : char -> char
val uppercase : char -> char
val lowercase_ascii : char -> char
val uppercase_ascii : char -> char
type t = char
val compare : char -> char -> int
val equal : t -> t -> bool
