@:native("Result")
extern class OCamlResult {
public static function ok(a0:Dynamic):Dynamic;
public static function error(a0:Dynamic):Dynamic;
public static function value(a0:Dynamic):Dynamic;
public static function get_ok(a0:Dynamic):Dynamic;
public static function get_error(a0:Dynamic):Dynamic;
public static var bind:Dynamic;
public static var join:Dynamic;
public static var map:Dynamic;
public static var map_error:Dynamic;
public static var fold:Dynamic;
public static function iter(a0:Dynamic):Void;
public static function iter_error(a0:Dynamic):Void;
public static function is_ok(a0:Dynamic):Bool;
public static function is_error(a0:Dynamic):Bool;
public static var equal:Dynamic;
public static var compare:Dynamic;
public static function to_option(a0:Dynamic):Dynamic;
public static function to_list(a0:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):OCaml'aSeq.T;
}