typedef BoolT  = Bool;

@:native("Bool")
extern class OCamlBool {
public static function not(a0:Bool):Bool;
public static function equal(a0:Bool,a1:Bool):Bool;
public static function compare(a0:Bool,a1:Bool):Int;
public static function to_int(a0:Bool):Int;
public static function to_float(a0:Dynamic):Float;
public static function to_string(a0:Dynamic):String;
}