type token =
    Kwd of string
  | Ident of string
  | Int of int
  | Float of float
  | String of string
  | Char of char
val initial_buffer : bytes
val buffer : bytes ref
val bufpos : int ref
val reset_buffer : unit -> unit
val store : char -> unit
val get_string : unit -> string
val make_lexer : string list -> char Stream.t -> token Stream.t
