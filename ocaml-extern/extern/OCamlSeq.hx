@:native("Seq")
extern class OCamlSeq {
public static function empty(a0:Void):Dynamic;
public static function return(a0:Dynamic,a1:Void):Dynamic;
public static function cons(a0:Dynamic,a1:Dynamic,a2:Void):Dynamic;
public static function append(a0:Dynamic,a1:Void->Dynamic):Dynamic;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function filter_map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function filter(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function flat_map(a0:Dynamic->Dynamic,a1:Dynamic,a2:Void):Dynamic;
public static function flat_map_app(a0:Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function fold_left(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function iter(a0:Dynamic->Dynamic,a1:Dynamic):Void;
public static function unfold(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
}