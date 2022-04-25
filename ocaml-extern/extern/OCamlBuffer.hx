typedef BufferT = {
buffer :haxe.io.Bytes,
position :Int,
length :Int,
initial_buffer :haxe.io.Bytes,
}

@:native("Buffer")
extern class OCamlBuffer {
public static function create(a0:Int):Dynamic;
public static function contents(a0:Dynamic):String;
public static function to_bytes(a0:Dynamic):haxe.io.Bytes;
public static function sub(a0:Dynamic,a1:Int,a2:Int):String;
public static function blit(a0:Dynamic,a1:Int,a2:haxe.io.Bytes,a3:Int,a4:Int):Void;
public static function nth(a0:Dynamic,a1:Int):OCamlChar;
public static function length(a0:Dynamic):Int;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function resize(a0:Dynamic,a1:Int):Void;
public static function add_char(a0:Dynamic,a1:OCamlChar):Void;
public static function add_utf_8_uchar(a0:Dynamic,a1:OCamlUchar.UcharT):Void;
public static function add_utf_16be_uchar(a0:Dynamic,a1:OCamlUchar.UcharT):Void;
public static function add_utf_16le_uchar(a0:Dynamic,a1:OCamlUchar.UcharT):Void;
public static function add_substring(a0:Dynamic,a1:String,a2:Int,a3:Int):Void;
public static function add_subbytes(a0:Dynamic,a1:haxe.io.Bytes,a2:Int,a3:Int):Void;
public static function add_string(a0:Dynamic,a1:String):Void;
public static function add_bytes(a0:Dynamic,a1:haxe.io.Bytes):Void;
public static function add_buffer(a0:Dynamic,a1:Dynamic):Void;
public static function really_input_up_to(a0:Dynamic,a1:haxe.io.Bytes,a2:Int,a3:Int):Int;
public static function unsafe_add_channel_up_to(a0:Dynamic,a1:Dynamic,a2:Int):Int;
public static function add_channel(a0:Dynamic,a1:Dynamic,a2:Int):Void;
public static function output_buffer(a0:Dynamic,a1:Dynamic):Void;
public static function closing(a0:OCamlChar):OCamlChar;
public static function advance_to_closing(a0:OCamlChar,a1:OCamlChar,a2:Int,a3:String,a4:Int):Int;
public static function advance_to_non_alpha(a0:String,a1:Int):Int;
public static function find_ident(a0:String,a1:Int,a2:Int):Dynamic;
public static function add_substitute(a0:Dynamic,a1:String->String,a2:String):Void;
public static function truncate(a0:Dynamic,a1:Int):Void;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seqi(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function unsafe_set_int8(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function unsafe_set_int16(a0:haxe.io.Bytes,a1:Int,a2:Int):Void;
public static function unsafe_set_int32(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function unsafe_set_int64(a0:haxe.io.Bytes,a1:Int,a2:Dynamic):Void;
public static function swap16(a0:Int):Int;
public static function swap32(a0:Dynamic):Dynamic;
public static function swap64(a0:Dynamic):Dynamic;
public static function add_int8(a0:Dynamic,a1:Int):Void;
public static function add_int16_ne(a0:Dynamic,a1:Int):Void;
public static function add_int32_ne(a0:Dynamic,a1:Dynamic):Void;
public static function add_int64_ne(a0:Dynamic,a1:Dynamic):Void;
public static function add_int16_le(a0:Dynamic,a1:Int):Void;
public static function add_int16_be(a0:Dynamic,a1:Int):Void;
public static function add_int32_le(a0:Dynamic,a1:Dynamic):Void;
public static function add_int32_be(a0:Dynamic,a1:Dynamic):Void;
public static function add_int64_le(a0:Dynamic,a1:Dynamic):Void;
public static function add_int64_be(a0:Dynamic,a1:Dynamic):Void;
public static function add_uint8(a0:Dynamic,a1:Int):Void;
public static function add_uint16_ne(a0:Dynamic,a1:Int):Void;
public static function add_uint16_le(a0:Dynamic,a1:Int):Void;
public static function add_uint16_be(a0:Dynamic,a1:Int):Void;
}