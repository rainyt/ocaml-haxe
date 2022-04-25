type key = string
type doc = string
type usage_msg = string
type anon_fun = string -> unit
type spec =
    Unit of (unit -> unit)
  | Bool of (bool -> unit)
  | Set of bool ref
  | Clear of bool ref
  | String of (string -> unit)
  | Set_string of string ref
  | Int of (int -> unit)
  | Set_int of int ref
  | Float of (float -> unit)
  | Set_float of float ref
  | Tuple of spec list
  | Symbol of string list * (string -> unit)
  | Rest of (string -> unit)
  | Rest_all of (string list -> unit)
  | Expand of (string -> string array)
exception Bad of string
exception Help of string
type error =
    Unknown of string
  | Wrong of string * string * string
  | Missing of string
  | Message of string
exception Stop of error
val assoc3 : 'a -> ('a * 'b * 'c) list -> 'b
val split : string -> string * string
val make_symlist : string -> string -> string -> string list -> string
val print_spec : Buffer.t -> string * spec * string -> unit
val help_action : unit -> 'a
val add_help : (string * spec * string) list -> (string * spec * string) list
val usage_b : Buffer.t -> (string * spec * string) list -> string -> unit
val usage_string : (string * spec * string) list -> string -> string
val usage : (string * spec * string) list -> string -> unit
val current : int ref
val bool_of_string_opt : string -> bool option
val int_of_string_opt : string -> int option
val float_of_string_opt : string -> float option
val parse_and_expand_argv_dynamic_aux :
  bool ->
  int ref ->
  string array ref ->
  (string * spec * string) list ref -> (string -> unit) -> string -> unit
val parse_and_expand_argv_dynamic :
  int ref ->
  string array ref ->
  (string * spec * string) list ref -> (string -> unit) -> string -> unit
val parse_argv_dynamic :
  ?current:int ref ->
  string array ->
  (string * spec * string) list ref -> (string -> unit) -> string -> unit
val parse_argv :
  ?current:int ref ->
  string array ->
  (string * spec * string) list -> (string -> unit) -> string -> unit
val parse :
  (string * spec * string) list -> (string -> unit) -> string -> unit
val parse_dynamic :
  (string * spec * string) list ref -> (string -> unit) -> string -> unit
val parse_expand :
  (string * spec * string) list -> (string -> unit) -> string -> unit
val second_word : string -> int
val max_arg_len : int -> string * spec * string -> int
val replace_leading_tab : string -> string
val add_padding : int -> string * spec * string -> string * spec * string
val align :
  ?limit:int ->
  (string * spec * string) list -> (string * spec * string) list
val trim_cr : string -> string
val read_aux : bool -> char -> string -> string array
val read_arg : string -> string array
val read_arg0 : string -> string array
val write_aux : char -> string -> string array -> unit
val write_arg : string -> string array -> unit
val write_arg0 : string -> string array -> unit
