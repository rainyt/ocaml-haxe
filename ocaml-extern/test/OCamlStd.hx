external register_named_value : string -> 'a -> unit
  = "caml_register_named_value"
external raise : exn -> 'a = "%raise"
external raise_notrace : exn -> 'a = "%raise_notrace"
val failwith : string -> 'a
val invalid_arg : string -> 'a
exception Exit
exception Match_failure of (string * int * int)
exception Assert_failure of (string * int * int)
exception Invalid_argument of string
exception Failure of string
exception Not_found
exception Out_of_memory
exception Stack_overflow
exception Sys_error of string
exception End_of_file
exception Division_by_zero
exception Sys_blocked_io
exception Undefined_recursive_module of (string * int * int)
external ( |> ) : 'a -> ('a -> 'b) -> 'b = "%revapply"
external ( @@ ) : ('a -> 'b) -> 'a -> 'b = "%apply"
external __LOC__ : string = "%loc_LOC"
external __FILE__ : string = "%loc_FILE"
external __LINE__ : int = "%loc_LINE"
external __MODULE__ : string = "%loc_MODULE"
external __POS__ : string * int * int * int = "%loc_POS"
external __FUNCTION__ : string = "%loc_FUNCTION"
external __LOC_OF__ : 'a -> string * 'a = "%loc_LOC"
external __LINE_OF__ : 'a -> int * 'a = "%loc_LINE"
external __POS_OF__ : 'a -> (string * int * int * int) * 'a = "%loc_POS"
external ( = ) : 'a -> 'a -> bool = "%equal"
external ( <> ) : 'a -> 'a -> bool = "%notequal"
external ( < ) : 'a -> 'a -> bool = "%lessthan"
external ( > ) : 'a -> 'a -> bool = "%greaterthan"
external ( <= ) : 'a -> 'a -> bool = "%lessequal"
external ( >= ) : 'a -> 'a -> bool = "%greaterequal"
external compare : 'a -> 'a -> int = "%compare"
val min : 'a -> 'a -> 'a
val max : 'a -> 'a -> 'a
external ( == ) : 'a -> 'a -> bool = "%eq"
external ( != ) : 'a -> 'a -> bool = "%noteq"
external not : bool -> bool = "%boolnot"
external ( & ) : bool -> bool -> bool = "%sequand"
external ( && ) : bool -> bool -> bool = "%sequand"
external ( or ) : bool -> bool -> bool = "%sequor"
external ( || ) : bool -> bool -> bool = "%sequor"
external ( ~- ) : int -> int = "%negint"
external ( ~+ ) : int -> int = "%identity"
external succ : int -> int = "%succint"
external pred : int -> int = "%predint"
external ( + ) : int -> int -> int = "%addint"
external ( - ) : int -> int -> int = "%subint"
external ( * ) : int -> int -> int = "%mulint"
external ( / ) : int -> int -> int = "%divint"
external ( mod ) : int -> int -> int = "%modint"
val abs : int -> int
external ( land ) : int -> int -> int = "%andint"
external ( lor ) : int -> int -> int = "%orint"
external ( lxor ) : int -> int -> int = "%xorint"
val lnot : int -> int
external ( lsl ) : int -> int -> int = "%lslint"
external ( lsr ) : int -> int -> int = "%lsrint"
external ( asr ) : int -> int -> int = "%asrint"
val max_int : int
val min_int : int
external ( ~-. ) : float -> float = "%negfloat"
external ( ~+. ) : float -> float = "%identity"
external ( +. ) : float -> float -> float = "%addfloat"
external ( -. ) : float -> float -> float = "%subfloat"
external ( *. ) : float -> float -> float = "%mulfloat"
external ( /. ) : float -> float -> float = "%divfloat"
external ( ** ) : float -> float -> float = "caml_power_float" "pow"
  [@@unboxed] [@@noalloc]
external exp : float -> float = "caml_exp_float" "exp" [@@unboxed]
  [@@noalloc]
external expm1 : float -> float = "caml_expm1_float" "caml_expm1" [@@unboxed]
  [@@noalloc]
external acos : float -> float = "caml_acos_float" "acos" [@@unboxed]
  [@@noalloc]
external asin : float -> float = "caml_asin_float" "asin" [@@unboxed]
  [@@noalloc]
external atan : float -> float = "caml_atan_float" "atan" [@@unboxed]
  [@@noalloc]
external atan2 : float -> float -> float = "caml_atan2_float" "atan2"
  [@@unboxed] [@@noalloc]
external hypot : float -> float -> float = "caml_hypot_float" "caml_hypot"
  [@@unboxed] [@@noalloc]
external cos : float -> float = "caml_cos_float" "cos" [@@unboxed]
  [@@noalloc]
external cosh : float -> float = "caml_cosh_float" "cosh" [@@unboxed]
  [@@noalloc]
external log : float -> float = "caml_log_float" "log" [@@unboxed]
  [@@noalloc]
external log10 : float -> float = "caml_log10_float" "log10" [@@unboxed]
  [@@noalloc]
external log1p : float -> float = "caml_log1p_float" "caml_log1p" [@@unboxed]
  [@@noalloc]
external sin : float -> float = "caml_sin_float" "sin" [@@unboxed]
  [@@noalloc]
external sinh : float -> float = "caml_sinh_float" "sinh" [@@unboxed]
  [@@noalloc]
external sqrt : float -> float = "caml_sqrt_float" "sqrt" [@@unboxed]
  [@@noalloc]
external tan : float -> float = "caml_tan_float" "tan" [@@unboxed]
  [@@noalloc]
external tanh : float -> float = "caml_tanh_float" "tanh" [@@unboxed]
  [@@noalloc]
external ceil : float -> float = "caml_ceil_float" "ceil" [@@unboxed]
  [@@noalloc]
external floor : float -> float = "caml_floor_float" "floor" [@@unboxed]
  [@@noalloc]
external abs_float : float -> float = "%absfloat"
external copysign : float -> float -> float = "caml_copysign_float"
  "caml_copysign" [@@unboxed] [@@noalloc]
external mod_float : float -> float -> float = "caml_fmod_float" "fmod"
  [@@unboxed] [@@noalloc]
external frexp : float -> float * int = "caml_frexp_float"
external ldexp :
  (float [@unboxed]) -> (int [@untagged]) -> (float [@unboxed])
  = "caml_ldexp_float" "caml_ldexp_float_unboxed" [@@noalloc]
external modf : float -> float * float = "caml_modf_float"
external float : int -> float = "%floatofint"
external float_of_int : int -> float = "%floatofint"
external truncate : float -> int = "%intoffloat"
external int_of_float : float -> int = "%intoffloat"
external float_of_bits : int64 -> float = "caml_int64_float_of_bits"
  "caml_int64_float_of_bits_unboxed" [@@unboxed] [@@noalloc]
val infinity : float
val neg_infinity : float
val nan : float
val max_float : float
val min_float : float
val epsilon_float : float
type fpclass = FP_normal | FP_subnormal | FP_zero | FP_infinite | FP_nan
external classify_float : (float [@unboxed]) -> fpclass
  = "caml_classify_float" "caml_classify_float_unboxed" [@@noalloc]
external string_length : string -> int = "%string_length"
external bytes_length : bytes -> int = "%bytes_length"
external bytes_create : int -> bytes = "caml_create_bytes"
external string_blit : string -> int -> bytes -> int -> int -> unit
  = "caml_blit_string" [@@noalloc]
external bytes_blit : bytes -> int -> bytes -> int -> int -> unit
  = "caml_blit_bytes" [@@noalloc]
external bytes_unsafe_to_string : bytes -> string = "%bytes_to_string"
val ( ^ ) : string -> string -> string
external int_of_char : char -> int = "%identity"
external unsafe_char_of_int : int -> char = "%identity"
val char_of_int : int -> char
external ignore : 'a -> unit = "%ignore"
external fst : 'a * 'b -> 'a = "%field0"
external snd : 'a * 'b -> 'b = "%field1"
type 'a ref = { mutable contents : 'a; }
external ref : 'a -> 'a ref = "%makemutable"
external ( ! ) : 'a ref -> 'a = "%field0"
external ( := ) : 'a ref -> 'a -> unit = "%setfield0"
external incr : int ref -> unit = "%incr"
external decr : int ref -> unit = "%decr"
type ('a, 'b) result = Ok of 'a | Error of 'b
external format_int : string -> int -> string = "caml_format_int"
external format_float : string -> float -> string = "caml_format_float"
val string_of_bool : bool -> string
val bool_of_string : string -> bool
val bool_of_string_opt : string -> bool option
val string_of_int : int -> string
external int_of_string : string -> int = "caml_int_of_string"
val int_of_string_opt : string -> int option
external string_get : string -> int -> char = "%string_safe_get"
val valid_float_lexem : string -> string
val string_of_float : float -> string
external float_of_string : string -> float = "caml_float_of_string"
val float_of_string_opt : string -> float option
val ( @ ) : 'a list -> 'a list -> 'a list
type in_channel
type out_channel
external open_descriptor_out : int -> out_channel
  = "caml_ml_open_descriptor_out"
external open_descriptor_in : int -> in_channel
  = "caml_ml_open_descriptor_in"
val stdin : in_channel
val stdout : out_channel
val stderr : out_channel
type open_flag =
    Open_rdonly
  | Open_wronly
  | Open_append
  | Open_creat
  | Open_trunc
  | Open_excl
  | Open_binary
  | Open_text
  | Open_nonblock
external open_desc : string -> open_flag list -> int -> int = "caml_sys_open"
external set_out_channel_name : out_channel -> string -> unit
  = "caml_ml_set_channel_name"
val open_out_gen : open_flag list -> int -> string -> out_channel
val open_out : string -> out_channel
val open_out_bin : string -> out_channel
external flush : out_channel -> unit = "caml_ml_flush"
external out_channels_list : unit -> out_channel list
  = "caml_ml_out_channels_list"
val flush_all : unit -> unit
external unsafe_output : out_channel -> bytes -> int -> int -> unit
  = "caml_ml_output_bytes"
external unsafe_output_string : out_channel -> string -> int -> int -> unit
  = "caml_ml_output"
external output_char : out_channel -> char -> unit = "caml_ml_output_char"
val output_bytes : out_channel -> bytes -> unit
val output_string : out_channel -> string -> unit
val output : out_channel -> bytes -> int -> int -> unit
val output_substring : out_channel -> string -> int -> int -> unit
external output_byte : out_channel -> int -> unit = "caml_ml_output_char"
external output_binary_int : out_channel -> int -> unit
  = "caml_ml_output_int"
external marshal_to_channel : out_channel -> 'a -> unit list -> unit
  = "caml_output_value"
val output_value : out_channel -> 'a -> unit
external seek_out : out_channel -> int -> unit = "caml_ml_seek_out"
external pos_out : out_channel -> int = "caml_ml_pos_out"
external out_channel_length : out_channel -> int = "caml_ml_channel_size"
external close_out_channel : out_channel -> unit = "caml_ml_close_channel"
val close_out : out_channel -> unit
val close_out_noerr : out_channel -> unit
external set_binary_mode_out : out_channel -> bool -> unit
  = "caml_ml_set_binary_mode"
external set_in_channel_name : in_channel -> string -> unit
  = "caml_ml_set_channel_name"
val open_in_gen : open_flag list -> int -> string -> in_channel
val open_in : string -> in_channel
val open_in_bin : string -> in_channel
external input_char : in_channel -> char = "caml_ml_input_char"
external unsafe_input : in_channel -> bytes -> int -> int -> int
  = "caml_ml_input"
val input : in_channel -> bytes -> int -> int -> int
val unsafe_really_input : in_channel -> bytes -> int -> int -> unit
val really_input : in_channel -> bytes -> int -> int -> unit
val really_input_string : in_channel -> int -> string
external input_scan_line : in_channel -> int = "caml_ml_input_scan_line"
val input_line : in_channel -> string
external input_byte : in_channel -> int = "caml_ml_input_char"
external input_binary_int : in_channel -> int = "caml_ml_input_int"
external input_value : in_channel -> 'a = "caml_input_value"
external seek_in : in_channel -> int -> unit = "caml_ml_seek_in"
external pos_in : in_channel -> int = "caml_ml_pos_in"
external in_channel_length : in_channel -> int = "caml_ml_channel_size"
external close_in : in_channel -> unit = "caml_ml_close_channel"
val close_in_noerr : in_channel -> unit
external set_binary_mode_in : in_channel -> bool -> unit
  = "caml_ml_set_binary_mode"
val print_char : char -> unit
val print_string : string -> unit
val print_bytes : bytes -> unit
val print_int : int -> unit
val print_float : float -> unit
val print_endline : string -> unit
val print_newline : unit -> unit
val prerr_char : char -> unit
val prerr_string : string -> unit
val prerr_bytes : bytes -> unit
val prerr_int : int -> unit
val prerr_float : float -> unit
val prerr_endline : string -> unit
val prerr_newline : unit -> unit
val read_line : unit -> string
val read_int : unit -> int
val read_int_opt : unit -> int option
val read_float : unit -> float
val read_float_opt : unit -> float option
module LargeFile :
  sig
    external seek_out : out_channel -> int64 -> unit = "caml_ml_seek_out_64"
    external pos_out : out_channel -> int64 = "caml_ml_pos_out_64"
    external out_channel_length : out_channel -> int64
      = "caml_ml_channel_size_64"
    external seek_in : in_channel -> int64 -> unit = "caml_ml_seek_in_64"
    external pos_in : in_channel -> int64 = "caml_ml_pos_in_64"
    external in_channel_length : in_channel -> int64
      = "caml_ml_channel_size_64"
  end
type ('a, 'b, 'c, 'd, 'e, 'f) format6 =
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.format6 =
    Format of ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt * string
type ('a, 'b, 'c, 'd) format4 = ('a, 'b, 'c, 'c, 'c, 'd) format6
type ('a, 'b, 'c) format = ('a, 'b, 'c, 'c) format4
val string_of_format : ('a, 'b, 'c, 'd, 'e, 'f) format6 -> string
external format_of_string :
  ('a, 'b, 'c, 'd, 'e, 'f) format6 -> ('a, 'b, 'c, 'd, 'e, 'f) format6
  = "%identity"
val ( ^^ ) :
  ('a, 'b, 'c, 'd, 'e, 'f) format6 ->
  ('f, 'b, 'c, 'e, 'g, 'h) format6 -> ('a, 'b, 'c, 'd, 'g, 'h) format6
external sys_exit : int -> 'a = "caml_sys_exit"
val exit_function : (unit -> unit) CamlinternalAtomic.t
val at_exit : (unit -> unit) -> unit
val do_at_exit : unit -> unit
val exit : int -> 'a
external major : unit -> unit = "caml_gc_major"
external naked_pointers_checked : unit -> bool
  = "caml_sys_const_naked_pointers_checked"
module Arg = Arg
module Array = Array
module ArrayLabels = ArrayLabels
module Atomic = Atomic
module Bigarray = Bigarray
module Bool = Bool
module Buffer = Buffer
module Bytes = Bytes
module BytesLabels = BytesLabels
module Callback = Callback
module Char = Char
module Complex = Complex
module Digest = Digest
module Either = Either
module Ephemeron = Ephemeron
module Filename = Filename
module Float = Float
module Format = Format
module Fun = Fun
module Gc = Gc
module Genlex = Genlex
module Hashtbl = Hashtbl
module Int = Int
module Int32 = Int32
module Int64 = Int64
module Lazy = Lazy
module Lexing = Lexing
module List = List
module ListLabels = ListLabels
module Map = Map
module Marshal = Marshal
module MoreLabels = MoreLabels
module Nativeint = Nativeint
module Obj = Obj
module Oo = Oo
module Option = Option
module Parsing = Parsing
module Pervasives = Pervasives
module Printexc = Printexc
module Printf = Printf
module Queue = Queue
module Random = Random
module Result = Result
module Scanf = Scanf
module Seq = Seq
module Set = Set
module Stack = Stack
module StdLabels = StdLabels
module Stream = Stream
module String = String
module StringLabels = StringLabels
module Sys = Sys
module Uchar = Uchar
module Unit = Unit
module Weak = Weak
