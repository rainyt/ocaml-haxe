typedef UcharT  = Int;

@:native("Uchar")
extern class OCamlUchar {
public static function format_int(a0:String,a1:Int):String;
public static var err_no_pred:String;
public static var err_no_succ:String;
public static function err_not_sv(a0:Int):String;
public static function err_not_latin1(a0:Int):String;
public static var min:Int;
public static var max:Int;
public static var lo_bound:Int;
public static var hi_bound:Int;
public static var bom:Int;
public static var rep:Int;
public static function succ(a0:Int):Int;
public static function pred(a0:Int):Int;
public static function is_valid(a0:Int):Bool;
public static function of_int(a0:Int):Int;
public static function unsafe_of_int(a0:Int):Dynamic;
public static function to_int(a0:Dynamic):Int;
public static function is_char(a0:Int):Bool;
public static function of_char(a0:OCamlChar):Int;
public static function to_char(a0:Int):OCamlChar;
public static function unsafe_to_char(a0:Int):OCamlChar;
public static function equal(a0:Int,a1:Int):Bool;
public static function compare(a0:Int,a1:Int):Int;
public static function hash(a0:Dynamic):Int;
}