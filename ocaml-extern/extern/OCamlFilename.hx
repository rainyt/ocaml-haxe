typedef Filename_SYSDEPS  = Dynamic;

@:native("Filename")
extern class OCamlFilename {
public static function generic_quote(a0:String,a1:String):String;
public static function generic_basename(a0:String->Int->Bool,a1:String,a2:String):String;
public static function generic_dirname(a0:String->Int->Bool,a1:String,a2:String):String;
public static var null:String;
public static var current_dir_name:String;
public static var parent_dir_name:String;
public static var dir_sep:String;
public static function is_dir_sep(a0:String,a1:Int):Bool;
public static function is_relative(a0:String):Bool;
public static function is_implicit(a0:String):Bool;
public static function check_suffix(a0:String,a1:String):Bool;
public static var chop_suffix_opt:Dynamic;
public static var temp_dir_name:String;
public static function quote(a0:String):String;
public static var quote_command:Dynamic;
public static function basename(a0:String):String;
public static function dirname(a0:String):String;
public static var null:String;
public static var current_dir_name:String;
public static var parent_dir_name:String;
public static var dir_sep:String;
public static function is_dir_sep(a0:String,a1:Int):Bool;
public static function is_relative(a0:String):Bool;
public static function is_implicit(a0:String):Bool;
public static function check_suffix(a0:String,a1:String):Bool;
public static var chop_suffix_opt:Dynamic;
public static var temp_dir_name:String;
public static function quote(a0:String):String;
public static var quote_command:Dynamic;
public static function basename(a0:String):String;
public static function dirname(a0:String):String;
public static function concat(a0:String,a1:String):String;
public static function chop_suffix(a0:String,a1:String):String;
public static function extension_len(a0:String):Int;
public static function extension(a0:String):String;
public static function chop_extension(a0:String):String;
public static function remove_extension(a0:String):String;
public static function open_desc(a0:String,a1:Dynamic,a2:Int):Int;
public static function close_desc(a0:Int):Void;
public static var prng:Dynamic;
public static function temp_file_name(a0:String,a1:String,a2:String):String;
public static var current_temp_dir_name:Dynamic;
public static function set_temp_dir_name(a0:String):Void;
public static function get_temp_dir_name(a0:Void):String;
public static var temp_file:Dynamic;
public static var open_temp_file:Dynamic;
}