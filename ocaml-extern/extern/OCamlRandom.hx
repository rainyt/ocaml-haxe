typedef RandomT = {
st :Int,
idx :Int,
}

@:native("Random")
extern class OCamlRandom {
public static function random_seed(a0:Void):OCamlArray<Int>;
public static function new_state(a0:Void):Dynamic;
public static function assign(a0:Dynamic,a1:Dynamic):Void;
public static function full_init(a0:Dynamic,a1:OCamlArray<Int>):Void;
public static function make(a0:OCamlArray<Int>):Dynamic;
public static function make_self_init(a0:Void):Dynamic;
public static function copy(a0:Dynamic):Dynamic;
public static function bits(a0:Dynamic):Int;
public static function intaux(a0:Dynamic,a1:Int):Int;
public static function int(a0:Dynamic,a1:Int):Int;
public static function int32aux(a0:Dynamic,a1:Dynamic):Dynamic;
public static function int32(a0:Dynamic,a1:Dynamic):Dynamic;
public static function int64aux(a0:Dynamic,a1:Dynamic):Dynamic;
public static function int64(a0:Dynamic,a1:Dynamic):Dynamic;
public static function nativeint(a0:Dynamic,a1:Dynamic):Dynamic;
public static function rawfloat(a0:Dynamic):Float;
public static function float(a0:Dynamic,a1:Float):Float;
public static function bool(a0:Dynamic):Bool;
public static var default:OCamlState.StateT;
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
public static function get_state(a0:Void):OCamlState.StateT;
public static function set_state(a0:OCamlState.StateT):Void;
}