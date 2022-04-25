@:native("Either")
extern class OCamlEither {
public static function left(a0:Dynamic):Dynamic;
public static function right(a0:Dynamic):Dynamic;
public static function is_left(a0:Dynamic):Bool;
public static function is_right(a0:Dynamic):Bool;
public static function find_left(a0:Dynamic):Dynamic;
public static function find_right(a0:Dynamic):Dynamic;
public static var map_left:Dynamic;
public static var map_right:Dynamic;
public static var map:Dynamic;
public static var fold:Dynamic;
public static var iter:Dynamic;
public static var for_all:Dynamic;
public static var equal:Dynamic;
public static var compare:Dynamic;
}