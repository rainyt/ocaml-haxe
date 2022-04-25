@:native("Char")
extern class OCamlCharTools {
public static function code(a0:OCamlChar):Int;
public static function unsafe_chr(a0:Int):OCamlChar;
public static function chr(a0:Int):OCamlChar;
public static function bytes_create(a0:Int):haxe.io.Bytes;
public static function bytes_unsafe_set(a0:haxe.io.Bytes,a1:Int,a2:OCamlChar):Void;
public static function unsafe_to_string(a0:haxe.io.Bytes):String;
public static function escaped(a0:OCamlChar):String;
public static function lowercase(a0:OCamlChar):OCamlChar;
public static function uppercase(a0:OCamlChar):OCamlChar;
public static function lowercase_ascii(a0:OCamlChar):OCamlChar;
public static function uppercase_ascii(a0:OCamlChar):OCamlChar;
public static function compare(a0:OCamlChar,a1:OCamlChar):Int;
public static function equal(a0:Dynamic,a1:Dynamic):Bool;
}