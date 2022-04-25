external length : bytes -> int = "%bytes_length"
external string_length : string -> int = "%string_length"
external get : bytes -> int -> char = "%bytes_safe_get"
external set : bytes -> int -> char -> unit = "%bytes_safe_set"
external create : int -> bytes = "caml_create_bytes"
external unsafe_get : bytes -> int -> char = "%bytes_unsafe_get"
external unsafe_set : bytes -> int -> char -> unit = "%bytes_unsafe_set"
external unsafe_fill : bytes -> int -> int -> char -> unit
  = "caml_fill_bytes" [@@noalloc]
external unsafe_to_string : bytes -> string = "%bytes_to_string"
external unsafe_of_string : string -> bytes = "%bytes_of_string"
external unsafe_blit : bytes -> int -> bytes -> int -> int -> unit
  = "caml_blit_bytes" [@@noalloc]
external unsafe_blit_string : string -> int -> bytes -> int -> int -> unit
  = "caml_blit_string" [@@noalloc]
val make : int -> char -> bytes
val init : int -> (int -> char) -> bytes
val empty : bytes
val copy : bytes -> bytes
val to_string : bytes -> string
val of_string : string -> bytes
val sub : bytes -> int -> int -> bytes
val sub_string : bytes -> int -> int -> string
val ( ++ ) : int -> int -> int
val extend : bytes -> int -> int -> bytes
val fill : bytes -> int -> int -> char -> unit
val blit : bytes -> int -> bytes -> int -> int -> unit
val blit_string : string -> int -> bytes -> int -> int -> unit
val iter : (char -> 'a) -> bytes -> unit
val iteri : (int -> char -> 'a) -> bytes -> unit
val ensure_ge : int -> int -> int
val sum_lengths : int -> int -> bytes list -> int
val unsafe_blits : bytes -> int -> bytes -> int -> bytes list -> bytes
val concat : bytes -> bytes list -> bytes
val cat : bytes -> bytes -> bytes
external char_code : char -> int = "%identity"
external char_chr : int -> char = "%identity"
val is_space : char -> bool
val trim : bytes -> bytes
val escaped : bytes -> bytes
val map : (char -> char) -> bytes -> bytes
val mapi : (int -> char -> char) -> bytes -> bytes
val uppercase_ascii : bytes -> bytes
val lowercase_ascii : bytes -> bytes
val apply1 : (char -> char) -> bytes -> bytes
val capitalize_ascii : bytes -> bytes
val uncapitalize_ascii : bytes -> bytes
val index_rec : bytes -> int -> int -> char -> int
val index : bytes -> char -> int
val index_rec_opt : bytes -> int -> int -> char -> int option
val index_opt : bytes -> char -> int option
val index_from : bytes -> int -> char -> int
val index_from_opt : bytes -> int -> char -> int option
val rindex_rec : bytes -> int -> char -> int
val rindex : bytes -> char -> int
val rindex_from : bytes -> int -> char -> int
val rindex_rec_opt : bytes -> int -> char -> int option
val rindex_opt : bytes -> char -> int option
val rindex_from_opt : bytes -> int -> char -> int option
val contains_from : bytes -> int -> char -> bool
val contains : bytes -> char -> bool
val rcontains_from : bytes -> int -> char -> bool
type t = bytes
val compare : t -> t -> int
external equal : t -> t -> bool = "caml_bytes_equal" [@@noalloc]
val uppercase : bytes -> bytes
val lowercase : bytes -> bytes
val capitalize : bytes -> bytes
val uncapitalize : bytes -> bytes
val to_seq : bytes -> char Seq.t
val to_seqi : bytes -> (int * char) Seq.t
val of_seq : char Seq.t -> bytes
external get_uint8 : bytes -> int -> int = "%bytes_safe_get"
external get_uint16_ne : bytes -> int -> int = "%caml_bytes_get16"
external get_int32_ne : bytes -> int -> int32 = "%caml_bytes_get32"
external get_int64_ne : bytes -> int -> int64 = "%caml_bytes_get64"
external set_int8 : bytes -> int -> int -> unit = "%bytes_safe_set"
external set_int16_ne : bytes -> int -> int -> unit = "%caml_bytes_set16"
external set_int32_ne : bytes -> int -> int32 -> unit = "%caml_bytes_set32"
external set_int64_ne : bytes -> int -> int64 -> unit = "%caml_bytes_set64"
external swap16 : int -> int = "%bswap16"
external swap32 : int32 -> int32 = "%bswap_int32"
external swap64 : int64 -> int64 = "%bswap_int64"
val get_int8 : bytes -> int -> int
val get_uint16_le : bytes -> int -> int
val get_uint16_be : bytes -> int -> int
val get_int16_ne : bytes -> int -> int
val get_int16_le : bytes -> int -> int
val get_int16_be : bytes -> int -> int
val get_int32_le : bytes -> int -> int32
val get_int32_be : bytes -> int -> int32
val get_int64_le : bytes -> int -> int64
val get_int64_be : bytes -> int -> int64
val set_int16_le : bytes -> int -> int -> unit
val set_int16_be : bytes -> int -> int -> unit
val set_int32_le : bytes -> int -> int32 -> unit
val set_int32_be : bytes -> int -> int32 -> unit
val set_int64_le : bytes -> int -> int64 -> unit
val set_int64_be : bytes -> int -> int64 -> unit
val set_uint8 : bytes -> int -> int -> unit
val set_uint16_ne : bytes -> int -> int -> unit
val set_uint16_be : bytes -> int -> int -> unit
val set_uint16_le : bytes -> int -> int -> unit
