type t = string
val compare : String.t -> String.t -> int
val equal : String.t -> String.t -> bool
external unsafe_string : string -> int -> int -> t = "caml_md5_string"
external channel : in_channel -> int -> t = "caml_md5_chan"
val string : string -> t
val bytes : bytes -> t
val substring : string -> int -> int -> t
val subbytes : bytes -> int -> int -> t
val file : string -> t
val output : out_channel -> string -> unit
val input : in_channel -> string
val char_hex : int -> char
val to_hex : string -> string
val from_hex : string -> string
