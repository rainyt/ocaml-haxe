typedef Obj_Raw_data  = Dynamic;

typedef Obj_Info = {
arity :Int,
start_env :Int,
}

typedef Obj_T  = Dynamic;

typedef Obj_Obj_t  = Dynamic;

@:native("Obj")
extern class OCamlObj {
public static function repr(a0:Dynamic):Dynamic;
public static function obj(a0:Dynamic):Dynamic;
public static function magic(a0:Dynamic):Dynamic;
public static function is_int(a0:Dynamic):Bool;
public static function is_block(a0:Dynamic):Bool;
public static function tag(a0:Dynamic):Int;
public static function set_tag(a0:Dynamic,a1:Int):Void;
public static function size(a0:Dynamic):Int;
public static function reachable_words(a0:Dynamic):Int;
public static function field(a0:Dynamic,a1:Int):Dynamic;
public static function set_field(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function floatarray_get(a0:OCamlArray<Float>,a1:Int):Float;
public static function floatarray_set(a0:OCamlArray<Float>,a1:Int,a2:Float):Void;
public static function double_field(a0:Dynamic,a1:Int):Float;
public static function set_double_field(a0:Dynamic,a1:Int,a2:Float):Void;
public static function raw_field(a0:Dynamic,a1:Int):Dynamic;
public static function set_raw_field(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function new_block(a0:Int,a1:Int):Dynamic;
public static function dup(a0:Dynamic):Dynamic;
public static function truncate(a0:Dynamic,a1:Int):Void;
public static function add_offset(a0:Dynamic,a1:Dynamic):Dynamic;
public static function with_tag(a0:Int,a1:Dynamic):Dynamic;
public static function marshal(a0:Dynamic):haxe.io.Bytes;
public static function unmarshal(a0:haxe.io.Bytes,a1:Int):Dynamic;
public static var first_non_constant_constructor_tag:Int;
public static var last_non_constant_constructor_tag:Int;
public static var lazy_tag:Int;
public static var closure_tag:Int;
public static var object_tag:Int;
public static var infix_tag:Int;
public static var forward_tag:Int;
public static var no_scan_tag:Int;
public static var abstract_tag:Int;
public static var string_tag:Int;
public static var double_tag:Int;
public static var double_array_tag:Int;
public static var custom_tag:Int;
public static var final_tag:Int;
public static var int_tag:Int;
public static var out_of_heap_tag:Int;
public static var unaligned_tag:Int;
public static function info_of_raw(a0:Dynamic):Dynamic;
public static function info(a0:Dynamic):Dynamic;
public static function of_val(a0:Dynamic):Dynamic;
public static function name(a0:Dynamic):String;
public static function id(a0:Dynamic):Int;
public static function extension_constructor(a0:Dynamic):Dynamic;
public static function extension_name(a0:Dynamic):String;
public static function extension_id(a0:Dynamic):Int;
public static var additional_values:Int;
public static var max_ephe_length:Int;
public static function create(a0:Int):Dynamic;
public static function length(a0:Dynamic):Int;
public static function raise_if_invalid_offset(a0:Dynamic,a1:Int,a2:String):Void;
public static function get_key(a0:Dynamic,a1:Int):Dynamic;
public static function get_key_copy(a0:Dynamic,a1:Int):Dynamic;
public static function set_key(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function unset_key(a0:Dynamic,a1:Int):Void;
public static function check_key(a0:Dynamic,a1:Int):Bool;
public static function blit_key(a0:Dynamic,a1:Int,a2:Dynamic,a3:Int,a4:Int):Void;
public static function get_data(a0:Dynamic):Dynamic;
public static function get_data_copy(a0:Dynamic):Dynamic;
public static function set_data(a0:Dynamic,a1:Dynamic):Void;
public static function unset_data(a0:Dynamic):Void;
public static function check_data(a0:Dynamic):Bool;
public static function blit_data(a0:Dynamic,a1:Dynamic):Void;
}