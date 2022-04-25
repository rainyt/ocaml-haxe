val generic_quote : string -> string -> string
val generic_basename : (string -> int -> bool) -> string -> string -> string
val generic_dirname : (string -> int -> bool) -> string -> string -> string
module type SYSDEPS =
  sig
    val null : string
    val current_dir_name : string
    val parent_dir_name : string
    val dir_sep : string
    val is_dir_sep : string -> int -> bool
    val is_relative : string -> bool
    val is_implicit : string -> bool
    val check_suffix : string -> string -> bool
    val chop_suffix_opt : suffix:string -> string -> string option
    val temp_dir_name : string
    val quote : string -> string
    val quote_command :
      string ->
      ?stdin:string ->
      ?stdout:string -> ?stderr:string -> string list -> string
    val basename : string -> string
    val dirname : string -> string
  end
module Unix : SYSDEPS
module Win32 : SYSDEPS
module Cygwin : SYSDEPS
module Sysdeps : SYSDEPS
val null : string
val current_dir_name : string
val parent_dir_name : string
val dir_sep : string
val is_dir_sep : string -> int -> bool
val is_relative : string -> bool
val is_implicit : string -> bool
val check_suffix : string -> string -> bool
val chop_suffix_opt : suffix:string -> string -> string option
val temp_dir_name : string
val quote : string -> string
val quote_command :
  string ->
  ?stdin:string -> ?stdout:string -> ?stderr:string -> string list -> string
val basename : string -> string
val dirname : string -> string
val concat : string -> string -> string
val chop_suffix : string -> string -> string
val extension_len : string -> int
val extension : string -> string
val chop_extension : string -> string
val remove_extension : string -> string
external open_desc : string -> open_flag list -> int -> int = "caml_sys_open"
external close_desc : int -> unit = "caml_sys_close"
val prng : Random.State.t lazy_t
val temp_file_name : string -> string -> string -> string
val current_temp_dir_name : string ref
val set_temp_dir_name : string -> unit
val get_temp_dir_name : unit -> string
val temp_file : ?temp_dir:string -> string -> string -> string
val open_temp_file :
  ?mode:open_flag list ->
  ?perms:int -> ?temp_dir:string -> string -> string -> string * out_channel
