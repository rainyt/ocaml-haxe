package ocaml;
enum Stdlib_Format {

}
enum Stdlib_Format4 {

}
enum Stdlib_Format6 {
CamlinternalFormatBasics;
}
enum Stdlib_Result {
Ok;
Error;
}
@:native("Stdlib.ref")
extern class Stdlib_Ref{
}
enum Stdlib_Open_flag {
Open_rdonly;
Open_wronly;
Open_append;
Open_creat;
Open_trunc;
Open_excl;
Open_binary;
Open_text;
Open_nonblock;
}
@:native("Stdlib.out_channel")
extern class Stdlib_Out_channel{}
@:native("Stdlib.in_channel")
extern class Stdlib_In_channel{}
enum Stdlib_Fpclass {
FP_normal;
FP_subnormal;
FP_zero;
FP_infinite;
FP_nan;
}
@:exceptions("exception Exit")
@:exceptions("exception Match_failure of (string * int * int)  [@ocaml.warn_on_literal_pattern]")
@:exceptions("exception Assert_failure of (string * int * int)  [@ocaml.warn_on_literal_pattern]")
@:exceptions("exception Invalid_argument of string  [@ocaml.warn_on_literal_pattern]")
@:exceptions("exception Failure of string  [@ocaml.warn_on_literal_pattern]")
@:exceptions("exception Not_found")
@:exceptions("exception Out_of_memory")
@:exceptions("exception Stack_overflow")
@:exceptions("exception Sys_error of string  [@ocaml.warn_on_literal_pattern]")
@:exceptions("exception End_of_file")
@:exceptions("exception Division_by_zero")
@:exceptions("exception Sys_blocked_io")
@:exceptions("exception Undefined_recursive_module of (string * int * int)")
@:native("Stdlib")
extern class Stdlib{
// Parser external::external raise : exn -> 'a = "%raise"
public static function raise (a0:Dynamic):Dynamic;// Parser external::external raise_notrace : exn -> 'a = "%raise_notrace"
public static function raise_notrace (a0:Dynamic):Dynamic;// Parser val::val invalid_arg : string -> 'a
public static function invalid_arg (a0:String):Dynamic;
// Parser val::val failwith : string -> 'a
public static function failwith (a0:String):Dynamic;
// Parser exception::exception Exit
// Parser exception::exception Match_failure of (string * int * int)  [@ocaml.warn_on_literal_pattern]
// Parser exception::exception Assert_failure of (string * int * int)  [@ocaml.warn_on_literal_pattern]
// Parser exception::exception Invalid_argument of string  [@ocaml.warn_on_literal_pattern]
// Parser exception::exception Failure of string  [@ocaml.warn_on_literal_pattern]
// Parser exception::exception Not_found
// Parser exception::exception Out_of_memory
// Parser exception::exception Stack_overflow
// Parser exception::exception Sys_error of string  [@ocaml.warn_on_literal_pattern]
// Parser exception::exception End_of_file
// Parser exception::exception Division_by_zero
// Parser exception::exception Sys_blocked_io
// Parser exception::exception Undefined_recursive_module of (string * int * int)
// Parser external::external ( = ) : 'a -> 'a -> bool = "%equal"
// Parser external::external ( <> ) : 'a -> 'a -> bool = "%notequal"
// Parser external::external ( < ) : 'a -> 'a -> bool = "%lessthan"
// Parser external::external ( > ) : 'a -> 'a -> bool = "%greaterthan"
// Parser external::external ( <= ) : 'a -> 'a -> bool = "%lessequal"
// Parser external::external ( >= ) : 'a -> 'a -> bool = "%greaterequal"
// Parser external::external compare : 'a -> 'a -> int = "%compare"
public static function compare (a0:Dynamic,a1:Dynamic):Int;// Parser val::val min : 'a -> 'a -> 'a
public static function min (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val max : 'a -> 'a -> 'a
public static function max (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser external::external ( == ) : 'a -> 'a -> bool = "%eq"
// Parser external::external ( != ) : 'a -> 'a -> bool = "%noteq"
// Parser external::external not : bool -> bool = "%boolnot"
public static function not (a0:Bool):Bool;// Parser external::external ( && ) : bool -> bool -> bool = "%sequand"
// Parser external::external ( & ) : bool -> bool -> bool = "%sequand"  [@@ocaml.deprecated "Use (&&) instead."]
// Parser external::external ( || ) : bool -> bool -> bool = "%sequor"
// Parser external::external ( or ) : bool -> bool -> bool = "%sequor"  [@@ocaml.deprecated "Use (||) instead."]
// Parser external::external __LOC__ : string = "%loc_LOC"
public static var __LOC__ :String;// Parser external::external __FILE__ : string = "%loc_FILE"
public static var __FILE__ :String;// Parser external::external __LINE__ : int = "%loc_LINE"
public static var __LINE__ :Int;// Parser external::external __MODULE__ : string = "%loc_MODULE"
public static var __MODULE__ :String;// Parser external::external __POS__ : string * int * int * int = "%loc_POS"
public static var __POS__ :Dynamic;// Parser external::external __FUNCTION__ : string = "%loc_FUNCTION"
public static var __FUNCTION__ :String;// Parser external::external __LOC_OF__ : 'a -> string * 'a = "%loc_LOC"
public static function __LOC_OF__ (a0:Dynamic):Dynamic;// Parser external::external __LINE_OF__ : 'a -> int * 'a = "%loc_LINE"
public static function __LINE_OF__ (a0:Dynamic):Dynamic;// Parser external::external __POS_OF__ : 'a -> (string * int * int * int) * 'a = "%loc_POS"
public static function __POS_OF__ (a0:Dynamic):Dynamic;// Parser external::external ( |> ) : 'a -> ('a -> 'b) -> 'b = "%revapply"
// Parser external::external ( @@ ) : ('a -> 'b) -> 'a -> 'b = "%apply"
// Parser external::external ( ~- ) : int -> int = "%negint"
// Parser external::external ( ~+ ) : int -> int = "%identity"
// Parser external::external succ : int -> int = "%succint"
public static function succ (a0:Int):Int;// Parser external::external pred : int -> int = "%predint"
public static function pred (a0:Int):Int;// Parser external::external ( + ) : int -> int -> int = "%addint"
// Parser external::external ( - ) : int -> int -> int = "%subint"
// Parser external::external ( * ) : int -> int -> int = "%mulint"
// Parser external::external ( / ) : int -> int -> int = "%divint"
// Parser external::external ( mod ) : int -> int -> int = "%modint"
// Parser val::val abs : int -> int
public static function abs (a0:Int):Int;
// Parser val::val max_int : int
public static var max_int :Int;
// Parser val::val min_int : int
public static var min_int :Int;
// Parser external::external ( land ) : int -> int -> int = "%andint"
// Parser external::external ( lor ) : int -> int -> int = "%orint"
// Parser external::external ( lxor ) : int -> int -> int = "%xorint"
// Parser val::val lnot : int -> int
public static function lnot (a0:Int):Int;
// Parser external::external ( lsl ) : int -> int -> int = "%lslint"
// Parser external::external ( lsr ) : int -> int -> int = "%lsrint"
// Parser external::external ( asr ) : int -> int -> int = "%asrint"
// Parser external::external ( ~-. ) : float -> float = "%negfloat"
// Parser external::external ( ~+. ) : float -> float = "%identity"
// Parser external::external ( +. ) : float -> float -> float = "%addfloat"
// Parser external::external ( -. ) : float -> float -> float = "%subfloat"
// Parser external::external ( *. ) : float -> float -> float = "%mulfloat"
// Parser external::external ( /. ) : float -> float -> float = "%divfloat"
// Parser external::external ( ** ) : float -> float -> float = "caml_power_float" "pow"  [@@unboxed] [@@noalloc]
// Parser external::external sqrt : float -> float = "caml_sqrt_float" "sqrt"  [@@unboxed] [@@noalloc]
public static function sqrt (a0:Float):Float;// Parser external::external exp : float -> float = "caml_exp_float" "exp" [@@unboxed] [@@noalloc]
public static function exp (a0:Float):Float;// Parser external::external log : float -> float = "caml_log_float" "log" [@@unboxed] [@@noalloc]
public static function log (a0:Float):Float;// Parser external::external log10 : float -> float = "caml_log10_float" "log10"  [@@unboxed] [@@noalloc]
public static function log10 (a0:Float):Float;// Parser external::external expm1 : float -> float = "caml_expm1_float" "caml_expm1"  [@@unboxed] [@@noalloc]
public static function expm1 (a0:Float):Float;// Parser external::external log1p : float -> float = "caml_log1p_float" "caml_log1p"  [@@unboxed] [@@noalloc]
public static function log1p (a0:Float):Float;// Parser external::external cos : float -> float = "caml_cos_float" "cos" [@@unboxed] [@@noalloc]
public static function cos (a0:Float):Float;// Parser external::external sin : float -> float = "caml_sin_float" "sin" [@@unboxed] [@@noalloc]
public static function sin (a0:Float):Float;// Parser external::external tan : float -> float = "caml_tan_float" "tan" [@@unboxed] [@@noalloc]
public static function tan (a0:Float):Float;// Parser external::external acos : float -> float = "caml_acos_float" "acos"  [@@unboxed] [@@noalloc]
public static function acos (a0:Float):Float;// Parser external::external asin : float -> float = "caml_asin_float" "asin"  [@@unboxed] [@@noalloc]
public static function asin (a0:Float):Float;// Parser external::external atan : float -> float = "caml_atan_float" "atan"  [@@unboxed] [@@noalloc]
public static function atan (a0:Float):Float;// Parser external::external atan2 : float -> float -> float = "caml_atan2_float" "atan2"  [@@unboxed] [@@noalloc]
public static function atan2 (a0:Float,a1:Float):Float;// Parser external::external hypot : float -> float -> float = "caml_hypot_float" "caml_hypot"  [@@unboxed] [@@noalloc]
public static function hypot (a0:Float,a1:Float):Float;// Parser external::external cosh : float -> float = "caml_cosh_float" "cosh"  [@@unboxed] [@@noalloc]
public static function cosh (a0:Float):Float;// Parser external::external sinh : float -> float = "caml_sinh_float" "sinh"  [@@unboxed] [@@noalloc]
public static function sinh (a0:Float):Float;// Parser external::external tanh : float -> float = "caml_tanh_float" "tanh"  [@@unboxed] [@@noalloc]
public static function tanh (a0:Float):Float;// Parser external::external ceil : float -> float = "caml_ceil_float" "ceil"  [@@unboxed] [@@noalloc]
public static function ceil (a0:Float):Float;// Parser external::external floor : float -> float = "caml_floor_float" "floor"  [@@unboxed] [@@noalloc]
public static function floor (a0:Float):Float;// Parser external::external abs_float : float -> float = "%absfloat"
public static function abs_float (a0:Float):Float;// Parser external::external copysign : float -> float -> float                  = "caml_copysign_float" "caml_copysign"                  [@@unboxed] [@@noalloc]
public static function copysign (a0:Float,a1:Float):Float;// Parser external::external mod_float : float -> float -> float = "caml_fmod_float" "fmod"  [@@unboxed] [@@noalloc]
public static function mod_float (a0:Float,a1:Float):Float;// Parser external::external frexp : float -> float * int = "caml_frexp_float"
public static function frexp (a0:Float):Dynamic;// Parser external::external ldexp : (float [@unboxed]) -> (int [@untagged]) -> (float [@unboxed]) =  "caml_ldexp_float" "caml_ldexp_float_unboxed" [@@noalloc]
public static function ldexp (a0:Dynamic,a1:Dynamic):Dynamic;// Parser external::external modf : float -> float * float = "caml_modf_float"
public static function modf (a0:Float):Dynamic;// Parser external::external float : int -> float = "%floatofint"
public static function float (a0:Int):Float;// Parser external::external float_of_int : int -> float = "%floatofint"
public static function float_of_int (a0:Int):Float;// Parser external::external truncate : float -> int = "%intoffloat"
public static function truncate (a0:Float):Int;// Parser external::external int_of_float : float -> int = "%intoffloat"
public static function int_of_float (a0:Float):Int;// Parser val::val infinity : float
public static var infinity :Float;
// Parser val::val neg_infinity : float
public static var neg_infinity :Float;
// Parser val::val nan : float
public static var nan :Float;
// Parser val::val max_float : float
public static var max_float :Float;
// Parser val::val min_float : float
public static var min_float :Float;
// Parser val::val epsilon_float : float
public static var epsilon_float :Float;
// Parser type::type fpclass =    FP_normal             | FP_subnormal          | FP_zero               | FP_infinite           | FP_nan              
// Parser external::external classify_float : (float [@unboxed]) -> fpclass =  "caml_classify_float" "caml_classify_float_unboxed" [@@noalloc]
public static function classify_float (a0:Dynamic):Stdlib_Fpclass;// Parser val::val ( ^ ) : string -> string -> string
// Parser external::external int_of_char : char -> int = "%identity"
public static function int_of_char (a0:Char):Int;// Parser val::val char_of_int : int -> char
public static function char_of_int (a0:Int):Char;
// Parser external::external ignore : 'a -> unit = "%ignore"
public static function ignore (a0:Dynamic):Void;// Parser val::val string_of_bool : bool -> string
public static function string_of_bool (a0:Bool):String;
// Parser val::val bool_of_string_opt: string -> bool option
public static function bool_of_string_opt(a0:String):Dynamic;
// Parser val::val bool_of_string : string -> bool
public static function bool_of_string (a0:String):Bool;
// Parser val::val string_of_int : int -> string
public static function string_of_int (a0:Int):String;
// Parser val::val int_of_string_opt: string -> int option
public static function int_of_string_opt(a0:String):Dynamic;
// Parser external::external int_of_string : string -> int = "caml_int_of_string"
public static function int_of_string (a0:String):Int;// Parser val::val string_of_float : float -> string
public static function string_of_float (a0:Float):String;
// Parser val::val float_of_string_opt: string -> float option
public static function float_of_string_opt(a0:String):Dynamic;
// Parser external::external float_of_string : string -> float = "caml_float_of_string"
public static function float_of_string (a0:String):Float;// Parser external::external fst : 'a * 'b -> 'a = "%field0"
public static function fst (a0:Dynamic):Dynamic;// Parser external::external snd : 'a * 'b -> 'b = "%field1"
public static function snd (a0:Dynamic):Dynamic;// Parser val::val ( @ ) : 'a list -> 'a list -> 'a list
// Parser type::type in_channel
// Parser type::type out_channel
// Parser val::val stdin : in_channel
public static var stdin :Stdlib_In_channel;
// Parser val::val stdout : out_channel
public static var stdout :Stdlib_Out_channel;
// Parser val::val stderr : out_channel
public static var stderr :Stdlib_Out_channel;
// Parser val::val print_char : char -> unit
public static function print_char (a0:Char):Void;
// Parser val::val print_string : string -> unit
public static function print_string (a0:String):Void;
// Parser val::val print_bytes : bytes -> unit
public static function print_bytes (a0:Bytes):Void;
// Parser val::val print_int : int -> unit
public static function print_int (a0:Int):Void;
// Parser val::val print_float : float -> unit
public static function print_float (a0:Float):Void;
// Parser val::val print_endline : string -> unit
public static function print_endline (a0:String):Void;
// Parser val::val print_newline : unit -> unit
public static function print_newline (a0:Void):Void;
// Parser val::val prerr_char : char -> unit
public static function prerr_char (a0:Char):Void;
// Parser val::val prerr_string : string -> unit
public static function prerr_string (a0:String):Void;
// Parser val::val prerr_bytes : bytes -> unit
public static function prerr_bytes (a0:Bytes):Void;
// Parser val::val prerr_int : int -> unit
public static function prerr_int (a0:Int):Void;
// Parser val::val prerr_float : float -> unit
public static function prerr_float (a0:Float):Void;
// Parser val::val prerr_endline : string -> unit
public static function prerr_endline (a0:String):Void;
// Parser val::val prerr_newline : unit -> unit
public static function prerr_newline (a0:Void):Void;
// Parser val::val read_line : unit -> string
public static function read_line (a0:Void):String;
// Parser val::val read_int_opt: unit -> int option
public static function read_int_opt(a0:Void):Dynamic;
// Parser val::val read_int : unit -> int
public static function read_int (a0:Void):Int;
// Parser val::val read_float_opt: unit -> float option
public static function read_float_opt(a0:Void):Dynamic;
// Parser val::val read_float : unit -> float
public static function read_float (a0:Void):Float;
// Parser type::type open_flag =    Open_rdonly        | Open_wronly        | Open_append        | Open_creat         | Open_trunc         | Open_excl          | Open_binary        | Open_text          | Open_nonblock    
// Parser val::val open_out : string -> out_channel
public static function open_out (a0:String):Stdlib_Out_channel;
// Parser val::val open_out_bin : string -> out_channel
public static function open_out_bin (a0:String):Stdlib_Out_channel;
// Parser val::val open_out_gen : open_flag list -> int -> string -> out_channel
public static function open_out_gen (a0:Array<Stdlib_Open_flag>,a1:Int,a2:String):Stdlib_Out_channel;
// Parser val::val flush : out_channel -> unit
public static function flush (a0:Stdlib_Out_channel):Void;
// Parser val::val flush_all : unit -> unit
public static function flush_all (a0:Void):Void;
// Parser val::val output_char : out_channel -> char -> unit
public static function output_char (a0:Stdlib_Out_channel,a1:Char):Void;
// Parser val::val output_string : out_channel -> string -> unit
public static function output_string (a0:Stdlib_Out_channel,a1:String):Void;
// Parser val::val output_bytes : out_channel -> bytes -> unit
public static function output_bytes (a0:Stdlib_Out_channel,a1:Bytes):Void;
// Parser val::val output : out_channel -> bytes -> int -> int -> unit
public static function output (a0:Stdlib_Out_channel,a1:Bytes,a2:Int,a3:Int):Void;
// Parser val::val output_substring : out_channel -> string -> int -> int -> unit
public static function output_substring (a0:Stdlib_Out_channel,a1:String,a2:Int,a3:Int):Void;
// Parser val::val output_byte : out_channel -> int -> unit
public static function output_byte (a0:Stdlib_Out_channel,a1:Int):Void;
// Parser val::val output_binary_int : out_channel -> int -> unit
public static function output_binary_int (a0:Stdlib_Out_channel,a1:Int):Void;
// Parser val::val output_value : out_channel -> 'a -> unit
public static function output_value (a0:Stdlib_Out_channel,a1:Dynamic):Void;
// Parser val::val seek_out : out_channel -> int -> unit
public static function seek_out (a0:Stdlib_Out_channel,a1:Int):Void;
// Parser val::val pos_out : out_channel -> int
public static function pos_out (a0:Stdlib_Out_channel):Int;
// Parser val::val out_channel_length : out_channel -> int
public static function out_channel_length (a0:Stdlib_Out_channel):Int;
// Parser val::val close_out : out_channel -> unit
public static function close_out (a0:Stdlib_Out_channel):Void;
// Parser val::val close_out_noerr : out_channel -> unit
public static function close_out_noerr (a0:Stdlib_Out_channel):Void;
// Parser val::val set_binary_mode_out : out_channel -> bool -> unit
public static function set_binary_mode_out (a0:Stdlib_Out_channel,a1:Bool):Void;
// Parser val::val open_in : string -> in_channel
public static function open_in (a0:String):Stdlib_In_channel;
// Parser val::val open_in_bin : string -> in_channel
public static function open_in_bin (a0:String):Stdlib_In_channel;
// Parser val::val open_in_gen : open_flag list -> int -> string -> in_channel
public static function open_in_gen (a0:Array<Stdlib_Open_flag>,a1:Int,a2:String):Stdlib_In_channel;
// Parser val::val input_char : in_channel -> char
public static function input_char (a0:Stdlib_In_channel):Char;
// Parser val::val input_line : in_channel -> string
public static function input_line (a0:Stdlib_In_channel):String;
// Parser val::val input : in_channel -> bytes -> int -> int -> int
public static function input (a0:Stdlib_In_channel,a1:Bytes,a2:Int,a3:Int):Int;
// Parser val::val really_input : in_channel -> bytes -> int -> int -> unit
public static function really_input (a0:Stdlib_In_channel,a1:Bytes,a2:Int,a3:Int):Void;
// Parser val::val really_input_string : in_channel -> int -> string
public static function really_input_string (a0:Stdlib_In_channel,a1:Int):String;
// Parser val::val input_byte : in_channel -> int
public static function input_byte (a0:Stdlib_In_channel):Int;
// Parser val::val input_binary_int : in_channel -> int
public static function input_binary_int (a0:Stdlib_In_channel):Int;
// Parser val::val input_value : in_channel -> 'a
public static function input_value (a0:Stdlib_In_channel):Dynamic;
// Parser val::val seek_in : in_channel -> int -> unit
public static function seek_in (a0:Stdlib_In_channel,a1:Int):Void;
// Parser val::val pos_in : in_channel -> int
public static function pos_in (a0:Stdlib_In_channel):Int;
// Parser val::val in_channel_length : in_channel -> int
public static function in_channel_length (a0:Stdlib_In_channel):Int;
// Parser val::val close_in : in_channel -> unit
public static function close_in (a0:Stdlib_In_channel):Void;
// Parser val::val close_in_noerr : in_channel -> unit
public static function close_in_noerr (a0:Stdlib_In_channel):Void;
// Parser val::val set_binary_mode_in : in_channel -> bool -> unit
public static function set_binary_mode_in (a0:Stdlib_In_channel,a1:Bool):Void;
// Parser module::module LargeFile :  end
// Parser type::type 'a ref = { mutable contents : 'a }
// Parser external::external ref : 'a -> 'a ref = "%makemutable"
public static function ref (a0:Dynamic):Dynamic;// Parser external::external ( ! ) : 'a ref -> 'a = "%field0"
// Parser external::external ( := ) : 'a ref -> 'a -> unit = "%setfield0"
// Parser external::external incr : int ref -> unit = "%incr"
public static function incr (a0:Dynamic):Void;// Parser external::external decr : int ref -> unit = "%decr"
public static function decr (a0:Dynamic):Void;// Parser type::type ('a,'b) result = Ok of 'a | Error of 'b
// Parser type::type ('a, 'b, 'c, 'd, 'e, 'f) format6 =  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.format6
// Parser type::type ('a, 'b, 'c, 'd) format4 = ('a, 'b, 'c, 'c, 'c, 'd) format6
// Parser type::type ('a, 'b, 'c) format = ('a, 'b, 'c, 'c) format4
// Parser val::val string_of_format : ('a, 'b, 'c, 'd, 'e, 'f) format6 -> string
public static function string_of_format (a0:Dynamic):String;
// Parser external::external format_of_string :  ('a, 'b, 'c, 'd, 'e, 'f) format6 ->  ('a, 'b, 'c, 'd, 'e, 'f) format6 = "%identity"
public static function format_of_string (a0:Dynamic):Dynamic;// Parser val::val ( ^^ ) :  ('a, 'b, 'c, 'd, 'e, 'f) format6 ->  ('f, 'b, 'c, 'e, 'g, 'h) format6 ->  ('a, 'b, 'c, 'd, 'g, 'h) format6
// Parser val::val exit : int -> 'a
public static function exit (a0:Int):Dynamic;
// Parser val::val at_exit : (unit -> unit) -> unit
public static function at_exit (a0:Dynamic,a1:Dynamic):Void;
// Parser val::val valid_float_lexem : string -> string
public static function valid_float_lexem (a0:String):String;
// Parser val::val unsafe_really_input : in_channel -> bytes -> int -> int -> unit
public static function unsafe_really_input (a0:Stdlib_In_channel,a1:Bytes,a2:Int,a3:Int):Void;
// Parser val::val do_at_exit : unit -> unit
public static function do_at_exit (a0:Void):Void;
// Parser module::module Arg          = Arg
// Parser module::module Array        = Array
// Parser module::module ArrayLabels  = ArrayLabels
// Parser module::module Atomic       = Atomic
// Parser module::module Bigarray     = Bigarray
// Parser module::module Bool         = Bool
// Parser module::module Buffer       = Buffer
// Parser module::module Bytes        = Bytes
// Parser module::module BytesLabels  = BytesLabels
// Parser module::module Callback     = Callback
// Parser module::module Char         = Char
// Parser module::module Complex      = Complex
// Parser module::module Digest       = Digest
// Parser module::module Either       = Either
// Parser module::module Ephemeron    = Ephemeron
// Parser module::module Filename     = Filename
// Parser module::module Float        = Float
// Parser module::module Format       = Format
// Parser module::module Fun          = Fun
// Parser module::module Gc           = Gc
// Parser module::module Genlex       = Genlex
// Parser module::module Hashtbl      = Hashtbl
// Parser module::module Int          = Int
// Parser module::module Int32        = Int32
// Parser module::module Int64        = Int64
// Parser module::module Lazy         = Lazy
// Parser module::module Lexing       = Lexing
// Parser module::module List         = List
// Parser module::module ListLabels   = ListLabels
// Parser module::module Map          = Map
// Parser module::module Marshal      = Marshal
// Parser module::module MoreLabels   = MoreLabels
// Parser module::module Nativeint    = Nativeint
// Parser module::module Obj          = Obj
// Parser module::module Oo           = Oo
// Parser module::module Option       = Option
// Parser module::module Parsing      = Parsing
// Parser module::module Pervasives   = Pervasives
// Parser module::module Printexc     = Printexc
// Parser module::module Printf       = Printf
// Parser module::module Queue        = Queue
// Parser module::module Random       = Random
// Parser module::module Result       = Result
// Parser module::module Scanf        = Scanf
// Parser module::module Seq          = Seq
// Parser module::module Set          = Set
// Parser module::module Stack        = Stack
// Parser module::module StdLabels    = StdLabels
// Parser module::module Stream       = Stream
// Parser module::module String       = String
// Parser module::module StringLabels = StringLabels
// Parser module::module Sys          = Sys
// Parser module::module Uchar        = Uchar
// Parser module::module Unit         = Unit
}