typedef Random_T = {
st :Int,
idx :Int,
}

@:native("Random")
extern class OCamlRandom {
public static function random_seed(a0:Void):OCamlArray<Int>;
public static function new_state(a0:Void):Random_T;
public static function assign(a0:Random_T,a1:Random_T):Void;
public static function full_init(a0:Random_T,a1:OCamlArray<Int>):Void;
public static function make(a0:OCamlArray<Int>):Random_T;
public static function make_self_init(a0:Void):Random_T;
public static function copy(a0:Random_T):Random_T;
public static function bits(a0:Random_T):Int;
public static function intaux(a0:Random_T,a1:Int):Int;
public static function int(a0:Random_T,a1:Int):Int;
public static function int32aux(a0:Random_T,a1:Dynamic):Dynamic;
public static function int32(a0:Random_T,a1:Dynamic):Dynamic;
public static function int64aux(a0:Random_T,a1:Dynamic):Dynamic;
public static function int64(a0:Random_T,a1:Dynamic):Dynamic;
public static function nativeint(a0:Random_T,a1:Dynamic):Dynamic;
public static function rawfloat(a0:Random_T):Float;
public static function float(a0:Random_T,a1:Float):Float;
public static function bool(a0:Random_T):Bool;
public static var default:Dynamic;
public static function bits(a0:Void):Int;
public static function int(a0:Int):Int;
public static function int32(a0:Dynamic):Dynamic;
public static function nativeint(a0:Dynamic):Dynamic;
public static function int64(a0:Dynamic):Dynamic;
public static function float(a0:Float):Float;
public static function bool(a0:Void):Bool;
public static function full_init(a0:OCamlArray<Int>):Void;
public static function init(a0:Int):Void;
public static function self_init(a0:Void):Void;
public static function get_state(a0:Void):Dynamic;
public static function set_state(a0:Dynamic):Void;
}