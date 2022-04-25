type t = {
  mutable buffer : bytes;
  mutable position : int;
  mutable length : int;
  initial_buffer : bytes;
}
val create : int -> t
val contents : t -> string
val to_bytes : t -> bytes
val sub : t -> int -> int -> string
val blit : t -> int -> bytes -> int -> int -> unit
val nth : t -> int -> char
val length : t -> int
val clear : t -> unit
val reset : t -> unit
val resize : t -> int -> unit
val add_char : t -> char -> unit
val add_utf_8_uchar : t -> Uchar.t -> unit
val add_utf_16be_uchar : t -> Uchar.t -> unit
val add_utf_16le_uchar : t -> Uchar.t -> unit
val add_substring : t -> string -> int -> int -> unit
val add_subbytes : t -> bytes -> int -> int -> unit
val add_string : t -> string -> unit
val add_bytes : t -> bytes -> unit
val add_buffer : t -> t -> unit
val really_input_up_to : in_channel -> bytes -> int -> int -> int
val unsafe_add_channel_up_to : t -> in_channel -> int -> int
val add_channel : t -> in_channel -> int -> unit
val output_buffer : out_channel -> t -> unit
val closing : char -> char
val advance_to_closing : char -> char -> int -> string -> int -> int
val advance_to_non_alpha : string -> int -> int
val find_ident : string -> int -> int -> string * int
val add_substitute : t -> (string -> string) -> string -> unit
val truncate : t -> int -> unit
val to_seq : t -> char Seq.t
val to_seqi : t -> (int * char) Seq.t
val add_seq : t -> char Seq.t -> unit
val of_seq : char Seq.t -> t
external unsafe_set_int8 : bytes -> int -> int -> unit = "%bytes_unsafe_set"
external unsafe_set_int16 : bytes -> int -> int -> unit
  = "%caml_bytes_set16u"
external unsafe_set_int32 : bytes -> int -> int32 -> unit
  = "%caml_bytes_set32u"
external unsafe_set_int64 : bytes -> int -> int64 -> unit
  = "%caml_bytes_set64u"
external swap16 : int -> int = "%bswap16"
external swap32 : int32 -> int32 = "%bswap_int32"
external swap64 : int64 -> int64 = "%bswap_int64"
val add_int8 : t -> int -> unit
val add_int16_ne : t -> int -> unit
val add_int32_ne : t -> int32 -> unit
val add_int64_ne : t -> int64 -> unit
val add_int16_le : t -> int -> unit
val add_int16_be : t -> int -> unit
val add_int32_le : t -> int32 -> unit
val add_int32_be : t -> int32 -> unit
val add_int64_le : t -> int64 -> unit
val add_int64_be : t -> int64 -> unit
val add_uint8 : t -> int -> unit
val add_uint16_ne : t -> int -> unit
val add_uint16_le : t -> int -> unit
val add_uint16_be : t -> int -> unit
