typedef Complex_T = {
re :Float,
im :Float,
}

@:native("Complex")
extern class OCamlComplex {
public static var zero:Complex_T;
public static var one:Complex_T;
public static var i:Complex_T;
public static function add(a0:Complex_T,a1:Complex_T):Complex_T;
public static function sub(a0:Complex_T,a1:Complex_T):Complex_T;
public static function neg(a0:Complex_T):Complex_T;
public static function conj(a0:Complex_T):Complex_T;
public static function mul(a0:Complex_T,a1:Complex_T):Complex_T;
public static function div(a0:Complex_T,a1:Complex_T):Complex_T;
public static function inv(a0:Complex_T):Complex_T;
public static function norm2(a0:Complex_T):Float;
public static function norm(a0:Complex_T):Float;
public static function arg(a0:Complex_T):Float;
public static function polar(a0:Float,a1:Float):Complex_T;
public static function sqrt(a0:Complex_T):Complex_T;
public static function exp(a0:Complex_T):Complex_T;
public static function log(a0:Complex_T):Complex_T;
public static function pow(a0:Complex_T,a1:Complex_T):Complex_T;
}