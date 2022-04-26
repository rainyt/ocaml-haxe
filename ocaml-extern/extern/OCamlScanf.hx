typedef ScanfSCANNING  = Dynamic;

typedef ScanfScanbuf  = Dynamic;

typedef ScanfFile_name  = String;

typedef ScanfInteger_conversion  = Dynamic;

@:native("Scanf")
extern class OCamlScanf {
public static var stdin:Dynamic;
public static var stdib:Dynamic;
public static function next_char(a0:Dynamic):OCamlChar;
public static function invalidate_current_char(a0:Dynamic):Void;
public static function peek_char(a0:Dynamic):OCamlChar;
public static function checked_peek_char(a0:Dynamic):OCamlChar;
public static function store_char(a0:Int,a1:Dynamic,a2:OCamlChar):Int;
public static function skip_char(a0:Int,a1:Dynamic):Int;
public static function ignore_char(a0:Int,a1:Dynamic):Int;
public static function token(a0:Dynamic):String;
public static function reset_token(a0:Dynamic):Void;
public static function char_count(a0:Dynamic):Int;
public static function line_count(a0:Dynamic):Int;
public static function token_count(a0:Dynamic):Int;
public static function eof(a0:Dynamic):Bool;
public static function end_of_input(a0:Dynamic):Bool;
public static function beginning_of_input(a0:Dynamic):Bool;
public static function name_of_input(a0:Dynamic):String;
public static function open_in(a0:Dynamic):Dynamic;
public static function open_in_bin(a0:Dynamic):Dynamic;
public static function from_file(a0:Dynamic):Dynamic;
public static function from_file_bin(a0:Dynamic):Dynamic;
public static function from_string(a0:String):Dynamic;
public static function from_function(a0:Void->OCamlChar):Dynamic;
public static function from_channel(a0:OCamlStdlib.StdlibIn_channel):Dynamic;
public static function close_in(a0:Dynamic):Void;
public static function memo_from_channel(a0:OCamlStdlib.StdlibIn_channel):Dynamic;
public static function bad_input(a0:String):Dynamic;
public static function bad_input_escape(a0:OCamlChar):Dynamic;
public static function bad_token_length(a0:String):Dynamic;
public static function bad_end_of_input(a0:String):Dynamic;
public static function bad_float(a0:Void):Dynamic;
public static function bad_hex_float(a0:Void):Dynamic;
public static function character_mismatch_err(a0:OCamlChar,a1:OCamlChar):String;
public static function character_mismatch(a0:OCamlChar,a1:OCamlChar):Dynamic;
public static function skip_whites(a0:OCamlScanning.ScanningScanbuf):Void;
public static function check_char(a0:OCamlScanning.ScanningScanbuf,a1:OCamlChar):Void;
public static function check_this_char(a0:OCamlScanning.ScanningScanbuf,a1:OCamlChar):Void;
public static function check_newline(a0:OCamlScanning.ScanningScanbuf):Void;
public static function token_char(a0:OCamlScanning.ScanningScanbuf):OCamlChar;
public static function token_string(a0:OCamlScanning.ScanningScanbuf):String;
public static function token_bool(a0:OCamlScanning.ScanningScanbuf):Bool;
public static function integer_conversion_of_char(a0:OCamlChar):Dynamic;
public static function token_int_literal(a0:Dynamic,a1:OCamlScanning.ScanningScanbuf):String;
public static function token_int(a0:Dynamic,a1:OCamlScanning.ScanningScanbuf):Int;
public static function token_float(a0:OCamlScanning.ScanningScanbuf):Float;
public static function nativeint_of_string(a0:String):Dynamic;
public static function int32_of_string(a0:String):Dynamic;
public static function int64_of_string(a0:String):Dynamic;
public static function token_nativeint(a0:Dynamic,a1:OCamlScanning.ScanningScanbuf):Dynamic;
public static function token_int32(a0:Dynamic,a1:OCamlScanning.ScanningScanbuf):Dynamic;
public static function token_int64(a0:Dynamic,a1:OCamlScanning.ScanningScanbuf):Dynamic;
public static function scan_decimal_digit_star(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_decimal_digit_plus(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_digit_star(a0:OCamlChar->Bool,a1:Int,a2:OCamlScanning.ScanningScanbuf):Int;
public static var scan_digit_plus:Dynamic;
public static function is_binary_digit(a0:OCamlChar):Bool;
public static function scan_binary_int(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function is_octal_digit(a0:OCamlChar):Bool;
public static function scan_octal_int(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function is_hexa_digit(a0:OCamlChar):Bool;
public static function scan_hexadecimal_int(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_unsigned_decimal_int(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_sign(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_optionally_signed_decimal_int(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_unsigned_int(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_optionally_signed_int(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static var scan_int_conversion:Dynamic;
public static function scan_fractional_part(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_exponent_part(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_integer_part(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_float(a0:Int,a1:Int,a2:OCamlScanning.ScanningScanbuf):Dynamic;
public static var check_case_insensitive_string:Dynamic;
public static function scan_hex_float(a0:Int,a1:Int,a2:OCamlScanning.ScanningScanbuf):Int;
public static function scan_caml_float_rest(a0:Int,a1:Int,a2:OCamlScanning.ScanningScanbuf):Int;
public static function scan_caml_float(a0:Int,a1:Int,a2:OCamlScanning.ScanningScanbuf):Int;
public static function scan_string(a0:Dynamic,a1:Int,a2:OCamlScanning.ScanningScanbuf):Int;
public static function scan_char(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function char_for_backslash(a0:OCamlChar):OCamlChar;
public static function decimal_value_of_char(a0:OCamlChar):Int;
public static function char_for_decimal_code(a0:OCamlChar,a1:OCamlChar,a2:OCamlChar):OCamlChar;
public static function hexadecimal_value_of_char(a0:OCamlChar):Int;
public static function char_for_hexadecimal_code(a0:OCamlChar,a1:OCamlChar):OCamlChar;
public static function check_next_char(a0:String,a1:Int,a2:OCamlScanning.ScanningScanbuf):OCamlChar;
public static function check_next_char_for_char(a0:Int,a1:OCamlScanning.ScanningScanbuf):OCamlChar;
public static function check_next_char_for_string(a0:Int,a1:OCamlScanning.ScanningScanbuf):OCamlChar;
public static function scan_backslash_char(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_caml_char(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_caml_string(a0:Int,a1:OCamlScanning.ScanningScanbuf):Int;
public static function scan_bool(a0:OCamlScanning.ScanningScanbuf):Int;
public static var scan_chars_in_char_set:Dynamic;
public static function scanf_bad_input(a0:OCamlScanning.ScanningScanbuf,a1:Dynamic):Dynamic;
public static function get_counter(a0:OCamlScanning.ScanningScanbuf,a1:OCamlCamlinternalFormatBasics.CamlinternalFormatBasicsCounter):Int;
public static function width_of_pad_opt(a0:Dynamic):Int;
public static var stopper_of_formatting_lit:Dynamic;
public static var take_format_readers:Dynamic;
public static var take_fmtty_format_readers:Dynamic;
public static var take_ignored_format_readers:Dynamic;
public static var make_scanf:Dynamic;
public static var pad_prec_scanf:Dynamic;
public static var kscanf:Dynamic;
public static var kbscanf:Dynamic;
public static var bscanf:Dynamic;
public static var ksscanf:Dynamic;
public static var sscanf:Dynamic;
public static var scanf:Dynamic;
public static var bscanf_format:Dynamic;
public static var sscanf_format:Dynamic;
public static var format_from_string:Dynamic;
public static function unescaped(a0:String):String;
public static var kfscanf:Dynamic;
public static var fscanf:Dynamic;
}