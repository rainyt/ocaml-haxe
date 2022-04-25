@:native("Lazy")
extern class OCamlLazy {
public static function make_forward(a0:Dynamic):Dynamic;
public static function force(a0:Dynamic):Dynamic;
public static function force_val(a0:Dynamic):Dynamic;
public static function from_fun(a0:Void->Dynamic):Dynamic;
public static function from_val(a0:Dynamic):Dynamic;
public static function is_val(a0:Dynamic):Bool;
public static function lazy_from_fun(a0:Void->Dynamic):Dynamic;
public static function lazy_from_val(a0:Dynamic):Dynamic;
public static function lazy_is_val(a0:Dynamic):Bool;
}