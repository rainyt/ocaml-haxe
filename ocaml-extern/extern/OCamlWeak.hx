typedef WeakS  = Dynamic;

typedef WeakData  = Dynamic;

@:native("Weak")
extern class OCamlWeak {
public static function create(a0:Int):Dynamic;
public static var additional_values:Int;
public static function length(a0:Dynamic):Int;
public static function raise_if_invalid_offset(a0:Dynamic,a1:Int,a2:String):Void;
public static function set(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function unset(a0:Dynamic,a1:Int):Void;
public static function set(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function get(a0:Dynamic,a1:Int):Dynamic;
public static function get_copy(a0:Dynamic,a1:Int):Dynamic;
public static function check(a0:Dynamic,a1:Int):Bool;
public static function blit(a0:Dynamic,a1:Int,a2:Dynamic,a3:Int,a4:Int):Void;
public static function fill(a0:Dynamic,a1:Int,a2:Int,a3:Dynamic):Void;
public static function create(a0:Int):Dynamic;
public static function clear(a0:Dynamic):Void;
public static function merge(a0:Dynamic,a1:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Void,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function count(a0:Dynamic):Int;
public static function stats(a0:Dynamic):Dynamic;
public static function create(a0:Int):Dynamic;
public static function clear(a0:Dynamic):Void;
public static function merge(a0:Dynamic,a1:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Void,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function count(a0:Dynamic):Int;
public static function stats(a0:Dynamic):Dynamic;
}