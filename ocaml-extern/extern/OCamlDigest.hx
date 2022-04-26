typedef Digest_T  = String;

@:native("Digest")
extern class OCamlDigest {
public static function compare(a0:Dynamic,a1:Dynamic):Int;
public static function equal(a0:Dynamic,a1:Dynamic):Bool;
public static function unsafe_string(a0:String,a1:Int,a2:Int):Dynamic;
public static function channel(a0:Dynamic,a1:Int):Dynamic;
public static function string(a0:String):Dynamic;
public static function bytes(a0:haxe.io.Bytes):Dynamic;
public static function substring(a0:String,a1:Int,a2:Int):Dynamic;
public static function subbytes(a0:haxe.io.Bytes,a1:Int,a2:Int):Dynamic;
public static function file(a0:String):Dynamic;
public static function output(a0:Dynamic,a1:String):Void;
public static function input(a0:Dynamic):String;
public static function char_hex(a0:Int):OCamlChar;
public static function to_hex(a0:String):String;
public static function from_hex(a0:String):String;
}