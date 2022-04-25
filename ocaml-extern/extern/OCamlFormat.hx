typedef Box_= = Dynamic;

typedef = = Dynamic;

typedef Pp_token = = Dynamic;

typedef Tag = = String;

typedef Pp_queue_elem = {
}

typedef Pp_queue = = Dynamic;

typedef Pp_scan_elem = {
left_total :Int,
queue_elem :Dynamic,
}

typedef Pp_format_elem = {
box_type :Dynamic,
width :Int,
}

typedef Formatter = {
}

typedef Formatter_stag_functions = {
}

typedef Formatter_out_functions = {
}

typedef Geometry = {
max_indent :Int,
margin :Int,
}

typedef Symbolic_output_item = = Dynamic;

typedef Symbolic_output_buffer = {
symbolic_output_contents :Dynamic,
}

typedef Formatter_tag_functions = {
}

@:native("Format")
extern class OCamlFormat {
public static function id(a0:Dynamic):Dynamic;
public static function to_int(a0:Dynamic):Int;
public static function of_int(a0:Int):Dynamic;
public static var zero:Dynamic;
public static var unknown:Dynamic;
public static function is_known(a0:Dynamic):Bool;
public static function pp_enqueue(a0:Dynamic,a1:Dynamic):Void;
public static function pp_clear_queue(a0:Dynamic):Void;
public static var pp_infinity:Int;
public static function pp_output_string(a0:Dynamic,a1:String):Void;
public static function pp_output_newline(a0:Dynamic):Void;
public static function pp_output_spaces(a0:Dynamic,a1:Int):Void;
public static function pp_output_indent(a0:Dynamic,a1:Int):Void;
public static function format_pp_text(a0:Dynamic,a1:Int,a2:String):Void;
public static function format_string(a0:Dynamic,a1:String):Void;
public static function break_new_line(a0:Dynamic,a1:Dynamic,a2:Int):Void;
public static function break_line(a0:Dynamic,a1:Int):Void;
public static function break_same_line(a0:Dynamic,a1:Dynamic):Void;
public static function pp_force_break_line(a0:Dynamic):Void;
public static function pp_skip_token(a0:Dynamic):Void;
public static function format_pp_token(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function advance_left(a0:Dynamic):Void;
public static function enqueue_advance(a0:Dynamic,a1:Dynamic):Void;
public static function enqueue_string_as(a0:Dynamic,a1:OCamlSize.T,a2:String):Void;
public static function enqueue_string(a0:Dynamic,a1:String):Void;
public static function initialize_scan_stack(a0:OCamlpp_scan_elemStack.T):Void;
public static function set_size(a0:Dynamic,a1:Bool):Void;
public static function scan_push(a0:Dynamic,a1:Bool,a2:Dynamic):Void;
public static function pp_open_box_gen(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function pp_open_sys_box(a0:Dynamic):Void;
public static function pp_close_box(a0:Dynamic,a1:Void):Void;
public static function pp_open_stag(a0:Dynamic,a1:Dynamic):Void;
public static function pp_close_stag(a0:Dynamic,a1:Void):Void;
public static function pp_open_tag(a0:Dynamic,a1:Dynamic):Void;
public static function pp_close_tag(a0:Dynamic,a1:Void):Void;
public static function pp_set_print_tags(a0:Dynamic,a1:Bool):Void;
public static function pp_set_mark_tags(a0:Dynamic,a1:Bool):Void;
public static function pp_get_print_tags(a0:Dynamic,a1:Void):Bool;
public static function pp_get_mark_tags(a0:Dynamic,a1:Void):Bool;
public static function pp_set_tags(a0:Dynamic,a1:Bool):Void;
public static var pp_get_formatter_stag_functions:Dynamic;
public static var pp_set_formatter_stag_functions:Dynamic;
public static function pp_rinit(a0:Dynamic):Void;
public static function clear_tag_stack(a0:Dynamic):Void;
public static function pp_flush_queue(a0:Dynamic,a1:Bool):Void;
public static function pp_print_as_size(a0:Dynamic,a1:OCamlSize.T,a2:String):Void;
public static function pp_print_as(a0:Dynamic,a1:Int,a2:String):Void;
public static function pp_print_string(a0:Dynamic,a1:String):Void;
public static function pp_print_int(a0:Dynamic,a1:Int):Void;
public static function pp_print_float(a0:Dynamic,a1:Float):Void;
public static function pp_print_bool(a0:Dynamic,a1:Bool):Void;
public static function pp_print_char(a0:Dynamic,a1:OCamlChar):Void;
public static function pp_open_hbox(a0:Dynamic,a1:Void):Void;
public static function pp_open_vbox(a0:Dynamic,a1:Int):Void;
public static function pp_open_hvbox(a0:Dynamic,a1:Int):Void;
public static function pp_open_hovbox(a0:Dynamic,a1:Int):Void;
public static function pp_open_box(a0:Dynamic,a1:Int):Void;
public static function pp_print_newline(a0:Dynamic,a1:Void):Void;
public static function pp_print_flush(a0:Dynamic,a1:Void):Void;
public static function pp_force_newline(a0:Dynamic,a1:Void):Void;
public static function pp_print_if_newline(a0:Dynamic,a1:Void):Void;
public static var pp_print_custom_break:Dynamic;
public static function pp_print_break(a0:Dynamic,a1:Int,a2:Int):Void;
public static function pp_print_space(a0:Dynamic,a1:Void):Void;
public static function pp_print_cut(a0:Dynamic,a1:Void):Void;
public static function pp_open_tbox(a0:Dynamic,a1:Void):Void;
public static function pp_close_tbox(a0:Dynamic,a1:Void):Void;
public static function pp_print_tbreak(a0:Dynamic,a1:Int,a2:Int):Void;
public static function pp_print_tab(a0:Dynamic,a1:Void):Void;
public static function pp_set_tab(a0:Dynamic,a1:Void):Void;
public static function pp_set_max_boxes(a0:Dynamic,a1:Int):Void;
public static function pp_get_max_boxes(a0:Dynamic,a1:Void):Int;
public static function pp_over_max_boxes(a0:Dynamic,a1:Void):Bool;
public static function pp_set_ellipsis_text(a0:Dynamic,a1:String):Void;
public static function pp_get_ellipsis_text(a0:Dynamic,a1:Void):String;
public static function pp_limit(a0:Int):Int;
public static function pp_set_min_space_left(a0:Dynamic,a1:Int):Void;
public static function pp_set_max_indent(a0:Dynamic,a1:Int):Void;
public static function pp_get_max_indent(a0:Dynamic,a1:Void):Int;
public static function pp_set_margin(a0:Dynamic,a1:Int):Void;
public static function validate_geometry(a0:Dynamic):Dynamic;
public static function check_geometry(a0:Dynamic):Bool;
public static function pp_get_margin(a0:Dynamic,a1:Void):Int;
public static function pp_set_full_geometry(a0:Dynamic,a1:Dynamic):Void;
public static function pp_set_geometry(a0:Dynamic):Dynamic;
public static function pp_safe_set_geometry(a0:Dynamic):Dynamic;
public static function pp_get_geometry(a0:Dynamic,a1:Void):Dynamic;
public static function pp_update_geometry(a0:Dynamic,a1:Dynamic->Dynamic):Void;
public static var pp_set_formatter_out_functions:Dynamic;
public static var pp_get_formatter_out_functions:Dynamic;
public static var pp_set_formatter_output_functions:Dynamic;
public static var pp_get_formatter_output_functions:Dynamic;
public static function display_newline(a0:Dynamic,a1:Void):Void;
public static var blank_line:String;
public static function display_blanks(a0:Dynamic,a1:Int):Void;
public static function display_indent(a0:Dynamic,a1:Int):Void;
public static function pp_set_formatter_out_channel(a0:Dynamic,a1:Dynamic):Void;
public static function default_pp_mark_open_tag(a0:Dynamic):String;
public static function default_pp_mark_close_tag(a0:Dynamic):String;
public static function default_pp_print_open_tag(a0:Dynamic):Void;
public static function default_pp_print_close_tag(a0:Dynamic):Void;
public static var pp_make_formatter:Dynamic;
public static function formatter_of_out_functions(a0:Dynamic):Dynamic;
public static var make_formatter:Dynamic;
public static function formatter_of_out_channel(a0:Dynamic):Dynamic;
public static function formatter_of_buffer(a0:OCamlBuffer.T):Dynamic;
public static var pp_buffer_size:Int;
public static function pp_make_buffer(a0:Void):OCamlBuffer.T;
public static var stdbuf:OCamlBuffer.T;
public static var std_formatter:Dynamic;
public static var err_formatter:Dynamic;
public static var str_formatter:Dynamic;
public static function flush_buffer_formatter(a0:OCamlBuffer.T,a1:Dynamic):String;
public static function flush_str_formatter(a0:Void):String;
public static function make_symbolic_output_buffer(a0:Void):Dynamic;
public static function clear_symbolic_output_buffer(a0:Dynamic):Void;
public static var get_symbolic_output_buffer:Dynamic;
public static var flush_symbolic_output_buffer:Dynamic;
public static var add_symbolic_output_item:Dynamic;
public static function formatter_of_symbolic_output_buffer(a0:Dynamic):Dynamic;
public static function open_hbox(a0:Void):Void;
public static function open_vbox(a0:Int):Void;
public static function open_hvbox(a0:Int):Void;
public static function open_hovbox(a0:Int):Void;
public static function open_box(a0:Int):Void;
public static function close_box(a0:Void):Void;
public static function open_tag(a0:Dynamic):Void;
public static function close_tag(a0:Void):Void;
public static function open_stag(a0:Dynamic):Void;
public static function close_stag(a0:Void):Void;
public static function print_as(a0:Int,a1:String):Void;
public static function print_string(a0:String):Void;
public static function print_int(a0:Int):Void;
public static function print_float(a0:Float):Void;
public static function print_char(a0:OCamlChar):Void;
public static function print_bool(a0:Bool):Void;
public static function print_break(a0:Int,a1:Int):Void;
public static function print_cut(a0:Void):Void;
public static function print_space(a0:Void):Void;
public static function force_newline(a0:Void):Void;
public static function print_flush(a0:Void):Void;
public static function print_newline(a0:Void):Void;
public static function print_if_newline(a0:Void):Void;
public static function open_tbox(a0:Void):Void;
public static function close_tbox(a0:Void):Void;
public static function print_tbreak(a0:Int,a1:Int):Void;
public static function set_tab(a0:Void):Void;
public static function print_tab(a0:Void):Void;
public static function set_margin(a0:Int):Void;
public static function get_margin(a0:Void):Int;
public static function set_max_indent(a0:Int):Void;
public static function get_max_indent(a0:Void):Int;
public static var set_geometry:Dynamic;
public static var safe_set_geometry:Dynamic;
public static function get_geometry(a0:Void):Dynamic;
public static function update_geometry(a0:Dynamic->Dynamic):Void;
public static function set_max_boxes(a0:Int):Void;
public static function get_max_boxes(a0:Void):Int;
public static function over_max_boxes(a0:Void):Bool;
public static function set_ellipsis_text(a0:String):Void;
public static function get_ellipsis_text(a0:Void):String;
public static function set_formatter_out_channel(a0:Dynamic):Void;
public static function set_formatter_out_functions(a0:Dynamic):Void;
public static function get_formatter_out_functions(a0:Void):Dynamic;
public static var set_formatter_output_functions:Dynamic;
public static var get_formatter_output_functions:Dynamic;
public static function set_formatter_stag_functions(a0:Dynamic):Void;
public static function get_formatter_stag_functions(a0:Void):Dynamic;
public static function set_print_tags(a0:Bool):Void;
public static function get_print_tags(a0:Void):Bool;
public static function set_mark_tags(a0:Bool):Void;
public static function get_mark_tags(a0:Void):Bool;
public static function set_tags(a0:Bool):Void;
public static var pp_print_list:Dynamic;
public static var pp_print_seq_in:Dynamic;
public static var pp_print_seq:Dynamic;
public static function pp_print_text(a0:Dynamic,a1:String):Void;
public static var pp_print_option:Dynamic;
public static var pp_print_result:Dynamic;
public static function compute_tag(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):String;
public static var output_formatting_lit:Dynamic;
public static var output_acc:Dynamic;
public static function strput_acc(a0:Dynamic,a1:OCamlfunCamlinternalFormat.Acc):Void;
public static var kfprintf:Dynamic;
public static var ikfprintf:Dynamic;
public static var ifprintf:Dynamic;
public static var fprintf:Dynamic;
public static var printf:Dynamic;
public static var eprintf:Dynamic;
public static var kdprintf:Dynamic;
public static var dprintf:Dynamic;
public static var ksprintf:Dynamic;
public static var sprintf:Dynamic;
public static var kasprintf:Dynamic;
public static var asprintf:Dynamic;
public static function flush_standard_formatters(a0:Void):Void;
public static var pp_set_all_formatter_output_functions:Dynamic;
public static var pp_get_all_formatter_output_functions:Dynamic;
public static var set_all_formatter_output_functions:Dynamic;
public static var get_all_formatter_output_functions:Dynamic;
public static function bprintf(a0:OCamlBuffer.T,a1:Dynamic):Dynamic;
public static var kprintf:Dynamic;
public static var pp_set_formatter_tag_functions:Dynamic;
public static var pp_get_formatter_tag_functions:Dynamic;
public static function set_formatter_tag_functions(a0:Dynamic):Void;
public static function get_formatter_tag_functions(a0:Void):Dynamic;
}