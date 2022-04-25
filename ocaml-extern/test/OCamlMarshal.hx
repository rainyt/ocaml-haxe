type extern_flags = No_sharing | Closures | Compat_32
external to_channel : out_channel -> 'a -> extern_flags list -> unit
  = "caml_output_value"
external to_bytes : 'a -> extern_flags list -> bytes
  = "caml_output_value_to_bytes"
external to_string : 'a -> extern_flags list -> string
  = "caml_output_value_to_string"
external to_buffer_unsafe :
  bytes -> int -> int -> 'a -> extern_flags list -> int
  = "caml_output_value_to_buffer"
val to_buffer : bytes -> int -> int -> 'a -> extern_flags list -> int
external from_channel : in_channel -> 'a = "caml_input_value"
external from_bytes_unsafe : bytes -> int -> 'a
  = "caml_input_value_from_bytes"
external data_size_unsafe : bytes -> int -> int = "caml_marshal_data_size"
val header_size : int
val data_size : bytes -> int -> int
val total_size : bytes -> int -> int
val from_bytes : bytes -> int -> 'a
val from_string : string -> int -> 'a
