typedef T = = haxe.io.Bytes;

@:native("Bytes")
extern class OCamlBytes {
public static function length(a0:haxe.io.Bytes):Int;
public static function string_length(a0:String):Int;
public static function get(a0:haxe.io.Bytes,a1:Int):OCamlChar;
public static function set(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Void;
public static function create(a0:Int):haxe.io.Bytes;
public static function unsafe_get(a0:haxe.io.Bytes,a1:Int):OCamlChar;
public static function unsafe_set(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Void;
public static function unsafe_fill(a0:haxe.io.Bytes,a1:Int,a2:Int,a3:OCamlChar):Void;
public static function unsafe_to_string(a0:haxe.io.Bytes):String;
public static function unsafe_of_string(a0:String):haxe.io.Bytes;
public static function unsafe_blit(a0:haxe.io.Bytes,a1:Int,a2:haxe.io.Bytes,a3:Int,a4:Int):Void;
public static function unsafe_blit_string(a0:String,a1:Int,a2:haxe.io.Bytes,a3:Int,a4:Int):Void;
public static function make(a0:Int,a1:OCamlChar):haxe.io.Bytes;
public static function init(a0:Int,a1:Int->OCamlChar):haxe.io.Bytes;
public static var empty:haxe.io.Bytes;
public static function copy(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function to_string(a0:haxe.io.Bytes):String;
public static function of_string(a0:String):haxe.io.Bytes;
public static function sub(a0:haxe.io.Bytes,a1:Int,a2:Int):haxe.io.Bytes;
public static function sub_string(a0:haxe.io.Bytes,a1:Int,a2:Int):String;
public static function extend(a0:haxe.io.Bytes,a1:Int,a2:Int):haxe.io.Bytes;
public static function fill(a0:haxe.io.Bytes,a1:Int,a2:Int,a3:OCamlChar):Void;
public static function blit(a0:haxe.io.Bytes,a1:Int,a2:haxe.io.Bytes,a3:Int,a4:Int):Void;
public static function blit_string(a0:String,a1:Int,a2:haxe.io.Bytes,a3:Int,a4:Int):Void;
public static function iter(a0:OCamlChar->Dynamic,a1:haxe.io.Bytes):Void;
public static function iteri(a0:Int->OCamlChar->Dynamic,a1:haxe.io.Bytes):Void;
public static function ensure_ge(a0:Int,a1:Int):Int;
public static function sum_lengths(a0:Int,a1:Int,a2:Dynamic):Int;
public static function unsafe_blits(a0:haxe.io.Bytes,a1:Int,a2:haxe.io.Bytes,a3:Int,a4:Dynamic):haxe.io.Bytes;
public static function concat(a0:haxe.io.Bytes,a1:Dynamic):haxe.io.Bytes;
public static function cat(a0:haxe.io.Bytes,a1:haxe.io.Bytes):haxe.io.Bytes;
public static function char_code(a0:OCamlChar):Int;
public static function char_chr(a0:Int):OCamlChar;
public static function is_space(a0:OCamlChar):Bool;
public static function trim(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function escaped(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function map(a0:OCamlChar->OCamlChar,a1:haxe.io.Bytes):haxe.io.Bytes;
public static function mapi(a0:Int->OCamlChar->OCamlChar,a1:haxe.io.Bytes):haxe.io.Bytes;
public static function uppercase_ascii(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function lowercase_ascii(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function apply1(a0:OCamlChar->OCamlChar,a1:haxe.io.Bytes):haxe.io.Bytes;
public static function capitalize_ascii(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function uncapitalize_ascii(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function index_rec(a0:haxe.io.Bytes,a1:Int,a2:Int,a3:OCamlChar):Int;
public static function index(a0:haxe.io.Bytes,a1:OCamlChar):Int;
public static function index_rec_opt(a0:haxe.io.Bytes,a1:Int,a2:Int,a3:OCamlChar):Dynamic;
public static function index_opt(a0:haxe.io.Bytes,a1:OCamlChar):Dynamic;
public static function index_from(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Int;
public static function index_from_opt(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Dynamic;
public static function rindex_rec(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Int;
public static function rindex(a0:haxe.io.Bytes,a1:OCamlChar):Int;
public static function rindex_from(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Int;
public static function rindex_rec_opt(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Dynamic;
public static function rindex_opt(a0:haxe.io.Bytes,a1:OCamlChar):Dynamic;
public static function rindex_from_opt(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Dynamic;
public static function contains_from(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Bool;
public static function contains(a0:haxe.io.Bytes,a1:OCamlChar):Bool;
public static function rcontains_from(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Bool;
public static function compare(a0:Dynamic,a1:Dynamic):Int;
public static function equal(a0:Dynamic,a1:Dynamic):Bool;
public static function uppercase(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function lowercase(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function capitalize(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function uncapitalize(a0:haxe.io.Bytes):haxe.io.Bytes;
public static function to_seq(a0:haxe.io.Bytes):OCamlcharSeq.T;
public static function to_seqi(a0:haxe.io.Bytes):OCamlfunSeq.T;
public static function of_seq(a0:OCamlcharSeq.T):haxe.io.Bytes;
public static function get_uint8(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_uint16_ne(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_int32_ne(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function get_int64_ne(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function set_int8(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function set_int16_ne(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function set_int32_ne(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function set_int64_ne(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function swap16(a0:Int):Int;
public static function swap32(a0:Dynamic):Dynamic;
public static function swap64(a0:Dynamic):Dynamic;
public static function get_int8(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_uint16_le(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_uint16_be(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_int16_ne(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_int16_le(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_int16_be(a0:haxe.io.Bytes,a1:Int):Int;
public static function get_int32_le(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function get_int32_be(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function get_int64_le(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function get_int64_be(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function set_int16_le(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function set_int16_be(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function set_int32_le(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function set_int32_be(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function set_int64_le(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function set_int64_be(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function set_uint8(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function set_uint16_ne(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function set_uint16_be(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function set_uint16_le(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
}