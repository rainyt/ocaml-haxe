@:native("CamlinternalAtomic")
extern class OCamlCamlinternalAtomic {
public static function ignore(a0:Dynamic):Void;
public static function make(a0:Dynamic):Dynamic;
public static function get(a0:Dynamic):Dynamic;
public static function set(a0:Dynamic,a1:Dynamic):Void;
public static function exchange(a0:Dynamic,a1:Dynamic):Dynamic;
public static function compare_and_set(a0:Dynamic,a1:Dynamic,a2:Dynamic):Bool;
public static function fetch_and_add(a0:Dynamic,a1:Int):Int;
public static function incr(a0:Dynamic):Void;
public static function decr(a0:Dynamic):Void;
}