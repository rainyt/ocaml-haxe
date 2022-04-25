typedef ArgKey  = String;

typedef ArgDoc  = String;

typedef ArgUsage_msg  = String;

typedef ArgAnon_fun  = String;

typedef ArgSpec  = Dynamic;

typedef ArgError  = Dynamic;

@:native("Arg")
extern class OCamlArg {
public static function assoc3(a0:Dynamic,a1:Dynamic):Dynamic;
public static function split(a0:String):Dynamic;
public static function make_symlist(a0:String,a1:String,a2:String,a3:Array<String>):String;
public static function print_spec(a0:OCamlBuffer.BufferT,a1:Dynamic):Void;
public static function help_action(a0:Void):Dynamic;
public static var add_help:Dynamic;
public static function usage_b(a0:OCamlBuffer.BufferT,a1:Dynamic,a2:String):Void;
public static function usage_string(a0:Dynamic,a1:String):String;
public static function usage(a0:Dynamic,a1:String):Void;
public static var current:Dynamic;
public static function bool_of_string_opt(a0:String):Dynamic;
public static function int_of_string_opt(a0:String):Dynamic;
public static function float_of_string_opt(a0:String):Dynamic;
public static var parse_and_expand_argv_dynamic_aux:Dynamic;
public static var parse_and_expand_argv_dynamic:Dynamic;
public static var parse_argv_dynamic:Dynamic;
public static var parse_argv:Dynamic;
public static var parse:Dynamic;
public static var parse_dynamic:Dynamic;
public static var parse_expand:Dynamic;
public static function second_word(a0:String):Int;
public static function max_arg_len(a0:Int,a1:Dynamic):Int;
public static function replace_leading_tab(a0:String):String;
public static function add_padding(a0:Int,a1:Dynamic):Dynamic;
public static var align:Dynamic;
public static function trim_cr(a0:String):String;
public static function read_aux(a0:Bool,a1:OCamlChar,a2:String):OCamlArray<String>;
public static function read_arg(a0:String):OCamlArray<String>;
public static function read_arg0(a0:String):OCamlArray<String>;
public static function write_aux(a0:OCamlChar,a1:String,a2:OCamlArray<String>):Void;
public static function write_arg(a0:String,a1:OCamlArray<String>):Void;
public static function write_arg0(a0:String,a1:OCamlArray<String>):Void;
}