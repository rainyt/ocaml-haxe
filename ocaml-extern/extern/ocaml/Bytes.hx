package ocaml;
enum Bytes_Bytes {

}

@:native("Bytes")
extern class Bytes{
// Parser external::external length : bytes -> int = "%bytes_length"
public static function length (a0:Bytes):Int;// Parser external::external get : bytes -> int -> char = "%bytes_safe_get"
public static function get (a0:Bytes,a1:Int):Char;// Parser external::external set : bytes -> int -> char -> unit = "%bytes_safe_set"
public static function set (a0:Bytes,a1:Int,a2:Char):Void;// Parser external::external create : int -> bytes = "caml_create_bytes"
public static function create (a0:Int):Bytes;// Parser val::val make : int -> char -> bytes
public static function make (a0:Int,a1:Char):Bytes;
// Parser val::val init : int -> (int -> char) -> bytes
public static function init (a0:Int,a1:Dynamic,a2:Dynamic):Bytes;
// Parser val::val empty : bytes
public static var empty :Bytes;
// Parser val::val copy : bytes -> bytes
public static function copy (a0:Bytes):Bytes;
// Parser val::val of_string : string -> bytes
public static function of_string (a0:String):Bytes;
// Parser val::val to_string : bytes -> string
public static function to_string (a0:Bytes):String;
// Parser val::val sub : bytes -> int -> int -> bytes
public static function sub (a0:Bytes,a1:Int,a2:Int):Bytes;
// Parser val::val sub_string : bytes -> int -> int -> string
public static function sub_string (a0:Bytes,a1:Int,a2:Int):String;
// Parser val::val extend : bytes -> int -> int -> bytes
public static function extend (a0:Bytes,a1:Int,a2:Int):Bytes;
// Parser val::val fill : bytes -> int -> int -> char -> unit
public static function fill (a0:Bytes,a1:Int,a2:Int,a3:Char):Void;
// Parser val::val blit :  bytes -> int -> bytes -> int -> int  -> unit
public static function blit (a0:Bytes,a1:Int,a2:Bytes,a3:Int,a4:Int):Void;
// Parser val::val blit_string :  string -> int -> bytes -> int -> int  -> unit
public static function blit_string (a0:String,a1:Int,a2:Bytes,a3:Int,a4:Int):Void;
// Parser val::val concat : bytes -> bytes list -> bytes
public static function concat (a0:Bytes,a1:Array<Bytes>):Bytes;
// Parser val::val cat : bytes -> bytes -> bytes
public static function cat (a0:Bytes,a1:Bytes):Bytes;
// Parser val::val iter : (char -> unit) -> bytes -> unit
public static function iter (a0:Dynamic,a1:Dynamic,a2:Bytes):Void;
// Parser val::val iteri : (int -> char -> unit) -> bytes -> unit
public static function iteri (a0:Dynamic,a1:Char,a2:Dynamic,a3:Bytes):Void;
// Parser val::val map : (char -> char) -> bytes -> bytes
public static function map (a0:Dynamic,a1:Dynamic,a2:Bytes):Bytes;
// Parser val::val mapi : (int -> char -> char) -> bytes -> bytes
public static function mapi (a0:Dynamic,a1:Char,a2:Dynamic,a3:Bytes):Bytes;
// Parser val::val trim : bytes -> bytes
public static function trim (a0:Bytes):Bytes;
// Parser val::val escaped : bytes -> bytes
public static function escaped (a0:Bytes):Bytes;
// Parser val::val index : bytes -> char -> int
public static function index (a0:Bytes,a1:Char):Int;
// Parser val::val index_opt: bytes -> char -> int option
public static function index_opt(a0:Bytes,a1:Char):Dynamic;
// Parser val::val rindex : bytes -> char -> int
public static function rindex (a0:Bytes,a1:Char):Int;
// Parser val::val rindex_opt: bytes -> char -> int option
public static function rindex_opt(a0:Bytes,a1:Char):Dynamic;
// Parser val::val index_from : bytes -> int -> char -> int
public static function index_from (a0:Bytes,a1:Int,a2:Char):Int;
// Parser val::val index_from_opt: bytes -> int -> char -> int option
public static function index_from_opt(a0:Bytes,a1:Int,a2:Char):Dynamic;
// Parser val::val rindex_from : bytes -> int -> char -> int
public static function rindex_from (a0:Bytes,a1:Int,a2:Char):Int;
// Parser val::val rindex_from_opt: bytes -> int -> char -> int option
public static function rindex_from_opt(a0:Bytes,a1:Int,a2:Char):Dynamic;
// Parser val::val contains : bytes -> char -> bool
public static function contains (a0:Bytes,a1:Char):Bool;
// Parser val::val contains_from : bytes -> int -> char -> bool
public static function contains_from (a0:Bytes,a1:Int,a2:Char):Bool;
// Parser val::val rcontains_from : bytes -> int -> char -> bool
public static function rcontains_from (a0:Bytes,a1:Int,a2:Char):Bool;
// Parser val::val uppercase : bytes -> bytes  [@@ocaml.deprecated    "Use Bytes.uppercase_ascii/BytesLabels.uppercase_ascii instead."]
// Parser val::val lowercase : bytes -> bytes  [@@ocaml.deprecated    "Use Bytes.lowercase_ascii/BytesLabels.lowercase_ascii instead."]
// Parser val::val capitalize : bytes -> bytes  [@@ocaml.deprecated    "Use Bytes.capitalize_ascii/BytesLabels.capitalize_ascii instead."]
// Parser val::val uncapitalize : bytes -> bytes  [@@ocaml.deprecated    "Use Bytes.uncapitalize_ascii/BytesLabels.uncapitalize_ascii instead."]
// Parser val::val uppercase_ascii : bytes -> bytes
public static function uppercase_ascii (a0:Bytes):Bytes;
// Parser val::val lowercase_ascii : bytes -> bytes
public static function lowercase_ascii (a0:Bytes):Bytes;
// Parser val::val capitalize_ascii : bytes -> bytes
public static function capitalize_ascii (a0:Bytes):Bytes;
// Parser val::val uncapitalize_ascii : bytes -> bytes
public static function uncapitalize_ascii (a0:Bytes):Bytes;
// Parser type::type t = bytes
// Parser val::val compare: t -> t -> int
public static function compare(a0:Dynamic,a1:Dynamic):Int;
// Parser val::val equal: t -> t -> bool
public static function equal(a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val unsafe_to_string : bytes -> string
public static function unsafe_to_string (a0:Bytes):String;
// Parser val::val unsafe_of_string : string -> bytes
public static function unsafe_of_string (a0:String):Bytes;
// Parser val::val to_seq : t -> char Seq.t
public static function to_seq (a0:Dynamic):Dynamic;
// Parser val::val to_seqi : t -> (int * char) Seq.t
public static function to_seqi (a0:Dynamic):Dynamic;
// Parser val::val of_seq : char Seq.t -> t
public static function of_seq (a0:Dynamic):Dynamic;
// Parser val::val get_uint8 : bytes -> int -> int
public static function get_uint8 (a0:Bytes,a1:Int):Int;
// Parser val::val get_int8 : bytes -> int -> int
public static function get_int8 (a0:Bytes,a1:Int):Int;
// Parser val::val get_uint16_ne : bytes -> int -> int
public static function get_uint16_ne (a0:Bytes,a1:Int):Int;
// Parser val::val get_uint16_be : bytes -> int -> int
public static function get_uint16_be (a0:Bytes,a1:Int):Int;
// Parser val::val get_uint16_le : bytes -> int -> int
public static function get_uint16_le (a0:Bytes,a1:Int):Int;
// Parser val::val get_int16_ne : bytes -> int -> int
public static function get_int16_ne (a0:Bytes,a1:Int):Int;
// Parser val::val get_int16_be : bytes -> int -> int
public static function get_int16_be (a0:Bytes,a1:Int):Int;
// Parser val::val get_int16_le : bytes -> int -> int
public static function get_int16_le (a0:Bytes,a1:Int):Int;
// Parser val::val get_int32_ne : bytes -> int -> int32
public static function get_int32_ne (a0:Bytes,a1:Int):Dynamic;
// Parser val::val get_int32_be : bytes -> int -> int32
public static function get_int32_be (a0:Bytes,a1:Int):Dynamic;
// Parser val::val get_int32_le : bytes -> int -> int32
public static function get_int32_le (a0:Bytes,a1:Int):Dynamic;
// Parser val::val get_int64_ne : bytes -> int -> int64
public static function get_int64_ne (a0:Bytes,a1:Int):Dynamic;
// Parser val::val get_int64_be : bytes -> int -> int64
public static function get_int64_be (a0:Bytes,a1:Int):Dynamic;
// Parser val::val get_int64_le : bytes -> int -> int64
public static function get_int64_le (a0:Bytes,a1:Int):Dynamic;
// Parser val::val set_uint8 : bytes -> int -> int -> unit
public static function set_uint8 (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_int8 : bytes -> int -> int -> unit
public static function set_int8 (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_uint16_ne : bytes -> int -> int -> unit
public static function set_uint16_ne (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_uint16_be : bytes -> int -> int -> unit
public static function set_uint16_be (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_uint16_le : bytes -> int -> int -> unit
public static function set_uint16_le (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_int16_ne : bytes -> int -> int -> unit
public static function set_int16_ne (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_int16_be : bytes -> int -> int -> unit
public static function set_int16_be (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_int16_le : bytes -> int -> int -> unit
public static function set_int16_le (a0:Bytes,a1:Int,a2:Int):Void;
// Parser val::val set_int32_ne : bytes -> int -> int32 -> unit
public static function set_int32_ne (a0:Bytes,a1:Int,a2:Dynamic):Void;
// Parser val::val set_int32_be : bytes -> int -> int32 -> unit
public static function set_int32_be (a0:Bytes,a1:Int,a2:Dynamic):Void;
// Parser val::val set_int32_le : bytes -> int -> int32 -> unit
public static function set_int32_le (a0:Bytes,a1:Int,a2:Dynamic):Void;
// Parser val::val set_int64_ne : bytes -> int -> int64 -> unit
public static function set_int64_ne (a0:Bytes,a1:Int,a2:Dynamic):Void;
// Parser val::val set_int64_be : bytes -> int -> int64 -> unit
public static function set_int64_be (a0:Bytes,a1:Int,a2:Dynamic):Void;
// Parser val::val set_int64_le : bytes -> int -> int64 -> unit
public static function set_int64_le (a0:Bytes,a1:Int,a2:Dynamic):Void;
// Parser external::external unsafe_get : bytes -> int -> char = "%bytes_unsafe_get"
public static function unsafe_get (a0:Bytes,a1:Int):Char;// Parser external::external unsafe_set : bytes -> int -> char -> unit = "%bytes_unsafe_set"
public static function unsafe_set (a0:Bytes,a1:Int,a2:Char):Void;// Parser external::external unsafe_blit :  bytes -> int -> bytes -> int -> int ->    unit = "caml_blit_bytes" [@@noalloc]
public static function unsafe_blit (a0:Bytes,a1:Int,a2:Bytes,a3:Int,a4:Int):Void;// Parser external::external unsafe_blit_string :  string -> int -> bytes -> int -> int -> unit  = "caml_blit_string" [@@noalloc]
public static function unsafe_blit_string (a0:String,a1:Int,a2:Bytes,a3:Int,a4:Int):Void;}