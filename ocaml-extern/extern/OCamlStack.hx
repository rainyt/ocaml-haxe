@:native("Stack")
extern class OCamlStack {
public static function create(a0:Void):Dynamic;
public static function clear(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function push(a0:Dynamic,a1:Dynamic):Void;
public static function pop(a0:Dynamic):Dynamic;
public static function pop_opt(a0:Dynamic):Dynamic;
public static function top(a0:Dynamic):Dynamic;
public static function top_opt(a0:Dynamic):Dynamic;
public static function is_empty(a0:Dynamic):Bool;
public static function length(a0:Dynamic):Int;
public static function iter(a0:Dynamic->Void,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):OCaml'aSeq.T;
public static function add_seq(a0:Dynamic,a1:OCaml'aSeq.T):Void;
public static function of_seq(a0:OCaml'aSeq.T):Dynamic;
}