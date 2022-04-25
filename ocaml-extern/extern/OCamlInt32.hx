typedef T = = Int;

@:native("Int32")
extern class OCamlInt32 {
public static function neg(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic):Dynamic;
public static function sub(a0:Dynamic,a1:Dynamic):Dynamic;
public static function mul(a0:Dynamic,a1:Dynamic):Dynamic;
public static function div(a0:Dynamic,a1:Dynamic):Dynamic;
public static function rem(a0:Dynamic,a1:Dynamic):Dynamic;
public static function logand(a0:Dynamic,a1:Dynamic):Dynamic;
public static function logor(a0:Dynamic,a1:Dynamic):Dynamic;
public static function logxor(a0:Dynamic,a1:Dynamic):Dynamic;
public static function shift_left(a0:Dynamic,a1:Int):Dynamic;
public static function shift_right(a0:Dynamic,a1:Int):Dynamic;
public static function shift_right_logical(a0:Dynamic,a1:Int):Dynamic;
public static function of_int(a0:Int):Dynamic;
public static function to_int(a0:Dynamic):Int;
public static function of_float(a0:Float):Dynamic;
public static function to_float(a0:Dynamic):Float;
public static function bits_of_float(a0:Float):Dynamic;
public static function float_of_bits(a0:Dynamic):Float;
public static var zero:Dynamic;
public static var one:Dynamic;
public static var minus_one:Dynamic;
public static function succ(a0:Dynamic):Dynamic;
public static function pred(a0:Dynamic):Dynamic;
public static function abs(a0:Dynamic):Dynamic;
public static var min_int:Dynamic;
public static var max_int:Dynamic;
public static function lognot(a0:Dynamic):Dynamic;
public static function unsigned_to_int(a0:Dynamic):Dynamic;
public static function format(a0:String,a1:Dynamic):String;
public static function to_string(a0:Dynamic):String;
public static function of_string(a0:String):Dynamic;
public static function of_string_opt(a0:String):Dynamic;
public static function compare(a0:Dynamic,a1:Dynamic):Int;
public static function equal(a0:Dynamic,a1:Dynamic):Bool;
public static function unsigned_compare(a0:Dynamic,a1:Dynamic):Int;
public static function unsigned_div(a0:Dynamic,a1:Dynamic):Dynamic;
public static function unsigned_rem(a0:Dynamic,a1:Dynamic):Dynamic;
}