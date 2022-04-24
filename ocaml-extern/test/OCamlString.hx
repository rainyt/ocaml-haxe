external length : string -> int = "%string_length"
external get : string -> int -> char = "%string_safe_get"
external set : bytes -> int -> char -> unit = "%string_safe_set"
external create : int -> bytes = "caml_create_string"
external unsafe_get : string -> int -> char = "%string_unsafe_get"
external unsafe_set : bytes -> int -> char -> unit = "%string_unsafe_set"
external unsafe_blit : string -> int -> bytes -> int -> int -> unit
  = "caml_blit_string" [@@noalloc]
external unsafe_fill : bytes -> int -> int -> char -> unit
  = "caml_fill_string" [@@noalloc]
module B = Bytes
val bts : bytes -> string
val bos : string -> bytes
val make : int -> char -> string
val init : int -> (int -> char) -> string
val copy : string -> string
val sub : string -> int -> int -> string
val fill : bytes -> int -> int -> char -> unit
val blit : string -> int -> bytes -> int -> int -> unit
val ensure_ge : int -> int -> int
val sum_lengths : int -> int -> string list -> int
val unsafe_blits : bytes -> int -> string -> int -> string list -> bytes
val concat : string -> string list -> string
val iter : (char -> 'a) -> string -> unit
val iteri : (int -> char -> 'a) -> string -> unit
val map : (char -> char) -> string -> string
val mapi : (int -> char -> char) -> string -> string
val is_space : char -> bool
val trim : string -> string
val escaped : string -> string
val index_rec : string -> int -> int -> char -> int
val index : string -> char -> int
val index_rec_opt : string -> int -> int -> char -> int option
val index_opt : string -> char -> int option
val index_from : string -> int -> char -> int
val index_from_opt : string -> int -> char -> int option
val rindex_rec : string -> int -> char -> int
val rindex : string -> char -> int
val rindex_from : string -> int -> char -> int
val rindex_rec_opt : string -> int -> char -> int option
val rindex_opt : string -> char -> int option
val rindex_from_opt : string -> int -> char -> int option
val contains_from : string -> int -> char -> bool
val contains : string -> char -> bool
val rcontains_from : string -> int -> char -> bool
val uppercase_ascii : string -> string
val lowercase_ascii : string -> string
val capitalize_ascii : string -> string
val uncapitalize_ascii : string -> string
val split_on_char : char -> string -> string list
val uppercase : string -> string
val lowercase : string -> string
val capitalize : string -> string
val uncapitalize : string -> string
type t = string
val compare : t -> t -> int
external equal : string -> string -> bool = "caml_string_equal" [@@noalloc]
val to_seq : string -> char Seq.t
val to_seqi : string -> (int * char) Seq.t
val of_seq : char Seq.t -> string
