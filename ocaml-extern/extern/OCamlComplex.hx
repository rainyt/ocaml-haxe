typedef T = {
re :Float,
im :Float,
}

@:native("Complex")
extern class OCamlComplex {
public static var zero:Dynamic;
public static var one:Dynamic;
public static var i:Dynamic;
public static function add(a0:Dynamic,a1:Dynamic):Dynamic;
public static function sub(a0:Dynamic,a1:Dynamic):Dynamic;
public static function neg(a0:Dynamic):Dynamic;
public static function conj(a0:Dynamic):Dynamic;
public static function mul(a0:Dynamic,a1:Dynamic):Dynamic;
public static function div(a0:Dynamic,a1:Dynamic):Dynamic;
public static function inv(a0:Dynamic):Dynamic;
public static function norm2(a0:Dynamic):Float;
public static function norm(a0:Dynamic):Float;
public static function arg(a0:Dynamic):Float;
public static function polar(a0:Float,a1:Float):Dynamic;
public static function sqrt(a0:Dynamic):Dynamic;
public static function exp(a0:Dynamic):Dynamic;
public static function log(a0:Dynamic):Dynamic;
public static function pow(a0:Dynamic,a1:Dynamic):Dynamic;
}