package ocaml;
@:native("Buffer.t")
extern class Buffer_T{}

@:native("Buffer")
extern class Buffer{
// Parser type::type t
// Parser val::val create : int -> t
public static function create (a0:Int):Buffer_T;
// Parser val::val contents : t -> string
public static function contents (a0:Buffer_T):String;
// Parser val::val to_bytes : t -> bytes
public static function to_bytes (a0:Buffer_T):Dynamic;
// Parser val::val sub : t -> int -> int -> string
public static function sub (a0:Buffer_T,a1:Int,a2:Int):String;
// Parser val::val blit : t -> int -> bytes -> int -> int -> unit
public static function blit (a0:Buffer_T,a1:Int,a2:Dynamic,a3:Int,a4:Int):Void;
// Parser val::val nth : t -> int -> char
public static function nth (a0:Buffer_T,a1:Int):Char;
// Parser val::val length : t -> int
public static function length (a0:Buffer_T):Int;
// Parser val::val clear : t -> unit
public static function clear (a0:Buffer_T):Void;
// Parser val::val reset : t -> unit
public static function reset (a0:Buffer_T):Void;
// Parser val::val add_char : t -> char -> unit
public static function add_char (a0:Buffer_T,a1:Char):Void;
// Parser val::val add_utf_8_uchar : t -> Uchar.t -> unit
public static function add_utf_8_uchar (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_utf_16le_uchar : t -> Uchar.t -> unit
public static function add_utf_16le_uchar (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_utf_16be_uchar : t -> Uchar.t -> unit
public static function add_utf_16be_uchar (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_string : t -> string -> unit
public static function add_string (a0:Buffer_T,a1:String):Void;
// Parser val::val add_bytes : t -> bytes -> unit
public static function add_bytes (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_substring : t -> string -> int -> int -> unit
public static function add_substring (a0:Buffer_T,a1:String,a2:Int,a3:Int):Void;
// Parser val::val add_subbytes : t -> bytes -> int -> int -> unit
public static function add_subbytes (a0:Buffer_T,a1:Dynamic,a2:Int,a3:Int):Void;
// Parser val::val add_substitute : t -> (string -> string) -> string -> unit
public static function add_substitute (a0:Buffer_T,a1:Dynamic,a2:Dynamic,a3:String):Void;
// Parser val::val add_buffer : t -> t -> unit
public static function add_buffer (a0:Buffer_T,a1:Buffer_T):Void;
// Parser val::val add_channel : t -> in_channel -> int -> unit
public static function add_channel (a0:Buffer_T,a1:Dynamic,a2:Int):Void;
// Parser val::val output_buffer : out_channel -> t -> unit
public static function output_buffer (a0:Dynamic,a1:Buffer_T):Void;
// Parser val::val truncate : t -> int -> unit
public static function truncate (a0:Buffer_T,a1:Int):Void;
// Parser val::val to_seq : t -> char Seq.t
public static function to_seq (a0:Buffer_T):Dynamic;
// Parser val::val to_seqi : t -> (int * char) Seq.t
public static function to_seqi (a0:Buffer_T):Dynamic;
// Parser val::val add_seq : t -> char Seq.t -> unit
public static function add_seq (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val of_seq : char Seq.t -> t
public static function of_seq (a0:Dynamic):Buffer_T;
// Parser val::val add_uint8 : t -> int -> unit
public static function add_uint8 (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_int8 : t -> int -> unit
public static function add_int8 (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_uint16_ne : t -> int -> unit
public static function add_uint16_ne (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_uint16_be : t -> int -> unit
public static function add_uint16_be (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_uint16_le : t -> int -> unit
public static function add_uint16_le (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_int16_ne : t -> int -> unit
public static function add_int16_ne (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_int16_be : t -> int -> unit
public static function add_int16_be (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_int16_le : t -> int -> unit
public static function add_int16_le (a0:Buffer_T,a1:Int):Void;
// Parser val::val add_int32_ne : t -> int32 -> unit
public static function add_int32_ne (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_int32_be : t -> int32 -> unit
public static function add_int32_be (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_int32_le : t -> int32 -> unit
public static function add_int32_le (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_int64_ne  : t -> int64 -> unit
public static function add_int64_ne  (a0:Buffer_T,a1:Dynamic):Void;
// Parser val::val add_int64_be : t -> int64 -> unit
public static function add_int64_be (a0:Buffer_T,a1:Dynamic):Void;
}