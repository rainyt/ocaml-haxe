typedef MarshalExtern_flags  = Dynamic;

@:native("Marshal")
extern class OCamlMarshal {
public static function to_channel(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function to_bytes(a0:Dynamic,a1:Dynamic):haxe.io.Bytes;
public static function to_string(a0:Dynamic,a1:Dynamic):String;
public static var to_buffer_unsafe:Dynamic;
public static function to_buffer(a0:haxe.io.Bytes,a1:Int,a2:Int,a3:Dynamic,a4:Dynamic):Int;
public static function from_channel(a0:Dynamic):Dynamic;
public static function from_bytes_unsafe(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function data_size_unsafe(a0:haxe.io.Bytes,a1:Int):Int;
public static var header_size:Int;
public static function data_size(a0:haxe.io.Bytes,a1:Int):Int;
public static function total_size(a0:haxe.io.Bytes,a1:Int):Int;
public static function from_bytes(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static function from_string(a0:String,a1:Int):Dynamic;
}