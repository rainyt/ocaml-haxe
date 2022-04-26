typedef Lexing_Position = {
pos_fname :String,
pos_lnum :Int,
pos_bol :Int,
pos_cnum :Int,
}

typedef Lexing_Lexbuf = {
}

typedef Lexing_Lex_tables = {
lex_base :String,
lex_backtrk :String,
lex_default :String,
lex_trans :String,
lex_check :String,
lex_base_code :String,
lex_backtrk_code :String,
lex_default_code :String,
lex_trans_code :String,
lex_check_code :String,
lex_code :String,
}

@:native("Lexing")
extern class OCamlLexing {
public static var dummy_pos:Dynamic;
public static function c_engine(a0:Dynamic,a1:Int,a2:Dynamic):Int;
public static function c_new_engine(a0:Dynamic,a1:Int,a2:Dynamic):Int;
public static function engine(a0:Dynamic,a1:Int,a2:Dynamic):Int;
public static function new_engine(a0:Dynamic,a1:Int,a2:Dynamic):Int;
public static function lex_refill(a0:haxe.io.Bytes->Int->Int,a1:haxe.io.Bytes,a2:Dynamic):Void;
public static var zero_pos:Dynamic;
public static var from_function:Dynamic;
public static var from_channel:Dynamic;
public static var from_string:Dynamic;
public static function set_position(a0:Dynamic,a1:Dynamic):Void;
public static function set_filename(a0:Dynamic,a1:String):Void;
public static function with_positions(a0:Dynamic):Bool;
public static function lexeme(a0:Dynamic):String;
public static function sub_lexeme(a0:Dynamic,a1:Int,a2:Int):String;
public static function sub_lexeme_opt(a0:Dynamic,a1:Int,a2:Int):Dynamic;
public static function sub_lexeme_char(a0:Dynamic,a1:Int):OCamlChar;
public static function sub_lexeme_char_opt(a0:Dynamic,a1:Int):Dynamic;
public static function lexeme_char(a0:Dynamic,a1:Int):OCamlChar;
public static function lexeme_start(a0:Dynamic):Int;
public static function lexeme_end(a0:Dynamic):Int;
public static function lexeme_start_p(a0:Dynamic):Dynamic;
public static function lexeme_end_p(a0:Dynamic):Dynamic;
public static function new_line(a0:Dynamic):Void;
public static function flush_input(a0:Dynamic):Void;
}