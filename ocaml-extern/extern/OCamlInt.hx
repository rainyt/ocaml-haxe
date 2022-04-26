typedef IntT  = Int;

@:native("Int")
extern class OCamlInt {
public static var zero:Int;
public static var one:Int;
public static var minus_one:Int;
public static function neg(a0:Int):Int;
public static function add(a0:Int,a1:Int):Int;
public static function sub(a0:Int,a1:Int):Int;
public static function mul(a0:Int,a1:Int):Int;
public static function div(a0:Int,a1:Int):Int;
public static function rem(a0:Int,a1:Int):Int;
public static function succ(a0:Int):Int;
public static function pred(a0:Int):Int;
public static function abs(a0:Int):Int;
public static var max_int:Int;
public static var min_int:Int;
public static function logand(a0:Int,a1:Int):Int;
public static function logor(a0:Int,a1:Int):Int;
public static function logxor(a0:Int,a1:Int):Int;
public static function lognot(a0:Int):Int;
public static function shift_left(a0:Int,a1:Int):Int;
public static function shift_right(a0:Int,a1:Int):Int;
public static function shift_right_logical(a0:Int,a1:Int):Int;
public static function equal(a0:Int,a1:Int):Bool;
public static function compare(a0:Int,a1:Int):Int;
public static function to_float(a0:Int):Float;
public static function of_float(a0:Float):Int;
public static function format_int(a0:String,a1:Int):String;
public static function to_string(a0:Int):String;
}