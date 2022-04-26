typedef Printexc_T  = Dynamic;

typedef Printexc_Raw_backtrace_entry  = Dynamic;

typedef Printexc_Raw_backtrace  = Dynamic;

typedef Printexc_Backtrace_slot = {
is_raise :Bool,
filename :String,
line_number :Int,
start_char :Int,
end_char :Int,
is_inline :Bool,
defname :String,
}

typedef Printexc_Location = {
filename :String,
line_number :Int,
start_char :Int,
end_char :Int,
}

typedef Printexc_T  = Dynamic;

@:native("Printexc")
extern class OCamlPrintexc {
public static var printers:Dynamic;
public static var locfmt:Dynamic;
public static function field(a0:Dynamic,a1:Int):String;
public static function other_fields(a0:Dynamic,a1:Int):String;
public static function fields(a0:Dynamic):String;
public static function use_printers(a0:Dynamic):Dynamic;
public static function to_string_default(a0:Dynamic):String;
public static function to_string(a0:Dynamic):String;
public static function print(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function catch(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function raw_backtrace_entries(a0:Dynamic):Dynamic;
public static function get_raw_backtrace(a0:Void):Dynamic;
public static function raise_with_backtrace(a0:Dynamic,a1:Dynamic):Dynamic;
public static function convert_raw_backtrace_slot(a0:Dynamic):Dynamic;
public static function convert_raw_backtrace(a0:Dynamic):Dynamic;
public static function format_backtrace_slot(a0:Int,a1:Dynamic):Dynamic;
public static var print_exception_backtrace:Dynamic;
public static function print_raw_backtrace(a0:Dynamic,a1:Dynamic):Void;
public static function print_backtrace(a0:Dynamic):Void;
public static function backtrace_to_string(a0:Dynamic):String;
public static function raw_backtrace_to_string(a0:Dynamic):String;
public static function backtrace_slot_is_raise(a0:Dynamic):Bool;
public static function backtrace_slot_is_inline(a0:Dynamic):Bool;
public static function backtrace_slot_location(a0:Dynamic):Dynamic;
public static function backtrace_slot_defname(a0:Dynamic):Dynamic;
public static function backtrace_slots(a0:Dynamic):Dynamic;
public static var backtrace_slots_of_raw_entry:Dynamic;
public static function format(a0:Int,a1:Dynamic):Dynamic;
public static function is_raise(a0:Dynamic):Bool;
public static function is_inline(a0:Dynamic):Bool;
public static function location(a0:Dynamic):Dynamic;
public static function name(a0:Dynamic):Dynamic;
public static function raw_backtrace_length(a0:Dynamic):Int;
public static function get_raw_backtrace_slot(a0:Dynamic,a1:Int):Dynamic;
public static var get_raw_backtrace_next_slot:Dynamic;
public static function get_backtrace(a0:Void):String;
public static function record_backtrace(a0:Bool):Void;
public static function backtrace_status(a0:Void):Bool;
public static function register_printer(a0:Dynamic->Dynamic):Void;
public static function get_callstack(a0:Int):Dynamic;
public static function exn_slot(a0:Dynamic):Dynamic;
public static function exn_slot_id(a0:Dynamic):Int;
public static function exn_slot_name(a0:Dynamic):String;
public static function get_debug_info_status(a0:Void):Int;
public static var errors:OCamlArray<String>;
public static function default_uncaught_exception_handler(a0:Dynamic,a1:Dynamic):Void;
public static function uncaught_exception_handler(a0:Dynamic,a1:Dynamic):Dynamic;
public static function set_uncaught_exception_handler(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static var empty_backtrace:Dynamic;
public static function try_get_raw_backtrace(a0:Void):Dynamic;
public static function handle_uncaught_exception(a0:Dynamic,a1:Bool):Void;
public static function handle_uncaught_exception(a0:Dynamic,a1:Bool):Void;
public static function register_named_value(a0:String,a1:Dynamic):Void;
}