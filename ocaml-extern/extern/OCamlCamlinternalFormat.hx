typedef Mutable_char_set = = haxe.io.Bytes;

typedef Fmtty_ebb = = Dynamic;

typedef Padding_ebb = = Dynamic;

typedef Precision_ebb = = Dynamic;

typedef Buffer = {
ind :Int,
bytes :haxe.io.Bytes,
}

@:native("CamlinternalFormat")
extern class OCamlCamlinternalFormat {
public static function create_char_set(a0:Void):haxe.io.Bytes;
public static function add_in_char_set(a0:haxe.io.Bytes,a1:OCamlChar):Void;
public static function freeze_char_set(a0:haxe.io.Bytes):String;
public static function rev_char_set(a0:String):String;
public static function is_in_char_set(a0:String,a1:OCamlChar):Bool;
public static function pad_of_pad_opt(a0:Dynamic):OCamlfunCamlinternalFormatBasics.Padding;
public static var prec_of_prec_opt:Dynamic;
public static var param_format_of_ignored_format:Dynamic;
public static var default_float_precision:Dynamic;
public static function format_float(a0:String,a1:Float):String;
public static function format_int(a0:String,a1:Int):String;
public static function format_int32(a0:String,a1:Dynamic):String;
public static function format_nativeint(a0:String,a1:Dynamic):String;
public static function format_int64(a0:String,a1:Dynamic):String;
public static function hexstring_of_float(a0:Float,a1:Int,a2:OCamlChar):String;
public static function buffer_create(a0:Int):Dynamic;
public static function buffer_check_size(a0:Dynamic,a1:Int):Void;
public static function buffer_add_char(a0:Dynamic,a1:OCamlChar):Void;
public static function buffer_add_string(a0:Dynamic,a1:String):Void;
public static function buffer_contents(a0:Dynamic):String;
public static function char_of_iconv(a0:OCamlCamlinternalFormatBasics.Int_conv):OCamlChar;
public static var char_of_fconv:Dynamic;
public static function char_of_counter(a0:OCamlCamlinternalFormatBasics.Counter):OCamlChar;
public static function bprint_char_set(a0:Dynamic,a1:String):Void;
public static function bprint_padty(a0:Dynamic,a1:OCamlCamlinternalFormatBasics.Padty):Void;
public static function bprint_ignored_flag(a0:Dynamic,a1:Bool):Void;
public static function bprint_pad_opt(a0:Dynamic,a1:Dynamic):Void;
public static var bprint_padding:Dynamic;
public static var bprint_precision:Dynamic;
public static function bprint_iconv_flag(a0:Dynamic,a1:OCamlCamlinternalFormatBasics.Int_conv):Void;
public static var bprint_int_fmt:Dynamic;
public static var bprint_altint_fmt:Dynamic;
public static var bprint_fconv_flag:Dynamic;
public static var bprint_float_fmt:Dynamic;
public static var string_of_formatting_lit:Dynamic;
public static function bprint_char_literal(a0:Dynamic,a1:OCamlChar):Void;
public static function bprint_string_literal(a0:Dynamic,a1:String):Void;
public static var bprint_fmtty:Dynamic;
public static var int_of_custom_arity:Dynamic;
public static var bprint_fmt:Dynamic;
public static var string_of_fmt:Dynamic;
public static var symm:Dynamic;
public static var fmtty_rel_det:Dynamic;
public static var trans:Dynamic;
public static var fmtty_of_formatting_gen:Dynamic;
public static var fmtty_of_fmt:Dynamic;
public static var fmtty_of_custom:Dynamic;
public static var fmtty_of_ignored_format:Dynamic;
public static var fmtty_of_padding_fmtty:Dynamic;
public static var fmtty_of_precision_fmtty:Dynamic;
public static var type_padding:Dynamic;
public static var type_padprec:Dynamic;
public static var type_format:Dynamic;
public static var type_format_gen:Dynamic;
public static var type_formatting_gen:Dynamic;
public static var type_ignored_param:Dynamic;
public static var type_ignored_param_one:Dynamic;
public static var type_ignored_format_substitution:Dynamic;
public static var recast:Dynamic;
public static function fix_padding(a0:OCamlCamlinternalFormatBasics.Padty,a1:Int,a2:String):String;
public static function fix_int_precision(a0:Int,a1:String):String;
public static function string_to_caml_string(a0:String):String;
public static function format_of_iconv(a0:OCamlCamlinternalFormatBasics.Int_conv):String;
public static function format_of_iconvL(a0:OCamlCamlinternalFormatBasics.Int_conv):String;
public static function format_of_iconvl(a0:OCamlCamlinternalFormatBasics.Int_conv):String;
public static function format_of_iconvn(a0:OCamlCamlinternalFormatBasics.Int_conv):String;
public static var format_of_fconv:Dynamic;
public static function transform_int_alt(a0:OCamlCamlinternalFormatBasics.Int_conv,a1:String):String;
public static function convert_int(a0:OCamlCamlinternalFormatBasics.Int_conv,a1:Int):String;
public static function convert_int32(a0:OCamlCamlinternalFormatBasics.Int_conv,a1:Dynamic):String;
public static var convert_nativeint:Dynamic;
public static function convert_int64(a0:OCamlCamlinternalFormatBasics.Int_conv,a1:Dynamic):String;
public static var convert_float:Dynamic;
public static function format_caml_char(a0:OCamlChar):String;
public static var string_of_fmtty:Dynamic;
public static var make_printf:Dynamic;
public static var make_ignored_param:Dynamic;
public static var make_from_fmtty:Dynamic;
public static var make_invalid_arg:Dynamic;
public static var make_padding:Dynamic;
public static var make_int_padding_precision:Dynamic;
public static var make_float_padding_precision:Dynamic;
public static var make_custom:Dynamic;
public static function const(a0:Dynamic,a1:Dynamic):Dynamic;
public static var make_iprintf:Dynamic;
public static var fn_of_padding_precision:Dynamic;
public static var fn_of_custom_arity:Dynamic;
public static function output_acc(a0:Dynamic,a1:Dynamic):Void;
public static function bufput_acc(a0:OCamlBuffer.T,a1:Dynamic):Void;
public static function strput_acc(a0:OCamlBuffer.T,a1:Dynamic):Void;
public static var failwith_message:Dynamic;
public static function open_box_of_string(a0:String):Dynamic;
public static var make_padding_fmt_ebb:Dynamic;
public static var make_precision_fmt_ebb:Dynamic;
public static var make_padprec_fmt_ebb:Dynamic;
public static var fmt_ebb_of_string:Dynamic;
public static var format_of_string_fmtty:Dynamic;
public static var format_of_string_format:Dynamic;
}