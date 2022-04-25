@:native("Genlex")
extern class OCamlGenlex {
public static var initial_buffer:haxe.io.Bytes;
public static var buffer:Dynamic;
public static var bufpos:Dynamic;
public static function reset_buffer(a0:Void):Void;
public static function store(a0:OCamlChar):Void;
public static function get_string(a0:Void):String;
public static function make_lexer(a0:Array<String>,a1:Dynamic):Dynamic;
}