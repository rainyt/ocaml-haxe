typedef Parser_env = {
}

typedef Parse_tables = {
}

typedef Parser_input = = Dynamic;

typedef Parser_output = = Dynamic;

@:native("Parsing")
extern class OCamlParsing {
public static var parse_engine:Dynamic;
public static function set_trace(a0:Bool):Bool;
public static var env:Dynamic;
public static function grow_stacks(a0:Void):Void;
public static function clear_parser(a0:Void):Void;
public static var current_lookahead_fun:Dynamic;
public static var yyparse:Dynamic;
public static function peek_val(a0:Dynamic,a1:Int):Dynamic;
public static function symbol_start_pos(a0:Void):OCamlLexing.Position;
public static function symbol_end_pos(a0:Void):OCamlLexing.Position;
public static function rhs_start_pos(a0:Int):OCamlLexing.Position;
public static function rhs_end_pos(a0:Int):OCamlLexing.Position;
public static function symbol_start(a0:Void):Int;
public static function symbol_end(a0:Void):Int;
public static function rhs_start(a0:Int):Int;
public static function rhs_end(a0:Int):Int;
public static function is_current_lookahead(a0:Dynamic):Bool;
public static function parse_error(a0:String):Void;
}