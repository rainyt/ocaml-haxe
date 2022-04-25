@:native("Option")
extern class OCamlOption {
public static var none:Dynamic;
public static function some(a0:Dynamic):Dynamic;
public static function value(a0:Dynamic):Dynamic;
public static function get(a0:Dynamic):Dynamic;
public static function bind(a0:Dynamic,a1:Dynamic->Dynamic):Dynamic;
public static function join(a0:Dynamic):Dynamic;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static var fold:Dynamic;
public static function iter(a0:Dynamic->Void,a1:Dynamic):Void;
public static function is_none(a0:Dynamic):Bool;
public static function is_some(a0:Dynamic):Bool;
public static function equal(a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
public static function compare(a0:Dynamic->Dynamic->Int,a1:Dynamic,a2:Dynamic):Int;
public static var to_result:Dynamic;
public static function to_list(a0:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):Dynamic;
}