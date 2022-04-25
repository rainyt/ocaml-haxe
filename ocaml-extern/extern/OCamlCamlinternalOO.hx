typedef CamlinternalOOParams = {
compact_table :Bool,
copy_parent :Bool,
clean_when_copying :Bool,
retry_count :Int,
bucket_small_size :Int,
}

typedef CamlinternalOOItem  = Dynamic;

typedef CamlinternalOOLabel  = Int;

typedef CamlinternalOOClosure  = Dynamic;

typedef CamlinternalOOT  = Dynamic;

typedef CamlinternalOOObj  = Dynamic;

typedef CamlinternalOOKey  = String;

typedef CamlinternalOOVars  = Dynamic;

typedef CamlinternalOOKey  = String;

typedef CamlinternalOOMeths  = Dynamic;

typedef CamlinternalOOKey  = Dynamic;

typedef CamlinternalOOLabs  = Dynamic;

typedef CamlinternalOOTable = {
}

typedef CamlinternalOOMeth  = Dynamic;

typedef CamlinternalOOInit_table = {
env_init :Dynamic,
class_init :Dynamic,
}

typedef CamlinternalOOTables  = Dynamic;

typedef CamlinternalOOImpl  = Dynamic;

typedef CamlinternalOOStats = {
classes :Int,
methods :Int,
inst_vars :Int,
}

@:native("CamlinternalOO")
extern class OCamlCamlinternalOO {
public static function set_id(a0:Dynamic):Dynamic;
public static function copy(a0:Dynamic):Dynamic;
public static var params:Dynamic;
public static var initial_object_size:Int;
public static var dummy_item:Dynamic;
public static function ret(a0:Dynamic->Dynamic):Dynamic;
public static function public_method_label(a0:String):Dynamic;
public static var empty:Dynamic;
public static function is_empty(a0:Dynamic):Bool;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function update(a0:Dynamic,a1:Dynamic->Dynamic,a2:Dynamic):Dynamic;
public static function singleton(a0:Dynamic,a1:Dynamic):Dynamic;
public static function remove(a0:Dynamic,a1:Dynamic):Dynamic;
public static var merge:Dynamic;
public static function union(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function compare(a0:Dynamic->Dynamic->Int,a1:Dynamic,a2:Dynamic):Int;
public static function equal(a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function for_all(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function exists(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function filter(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function filter_map(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function partition(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function cardinal(a0:Dynamic):Int;
public static function bindings(a0:Dynamic):Dynamic;
public static function min_binding(a0:Dynamic):Dynamic;
public static function min_binding_opt(a0:Dynamic):Dynamic;
public static function max_binding(a0:Dynamic):Dynamic;
public static function max_binding_opt(a0:Dynamic):Dynamic;
public static function choose(a0:Dynamic):Dynamic;
public static function choose_opt(a0:Dynamic):Dynamic;
public static function split(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_first(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_first_opt:Dynamic;
public static function find_last(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_last_opt:Dynamic;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function mapi(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_rev_seq(a0:Dynamic):Dynamic;
public static function to_seq_from(a0:Dynamic,a1:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Dynamic;
public static function of_seq(a0:Dynamic):Dynamic;
public static var empty:Dynamic;
public static function is_empty(a0:Dynamic):Bool;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function update(a0:Dynamic,a1:Dynamic->Dynamic,a2:Dynamic):Dynamic;
public static function singleton(a0:Dynamic,a1:Dynamic):Dynamic;
public static function remove(a0:Dynamic,a1:Dynamic):Dynamic;
public static var merge:Dynamic;
public static function union(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function compare(a0:Dynamic->Dynamic->Int,a1:Dynamic,a2:Dynamic):Int;
public static function equal(a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function for_all(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function exists(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function filter(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function filter_map(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function partition(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function cardinal(a0:Dynamic):Int;
public static function bindings(a0:Dynamic):Dynamic;
public static function min_binding(a0:Dynamic):Dynamic;
public static function min_binding_opt(a0:Dynamic):Dynamic;
public static function max_binding(a0:Dynamic):Dynamic;
public static function max_binding_opt(a0:Dynamic):Dynamic;
public static function choose(a0:Dynamic):Dynamic;
public static function choose_opt(a0:Dynamic):Dynamic;
public static function split(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_first(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_first_opt:Dynamic;
public static function find_last(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_last_opt:Dynamic;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function mapi(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_rev_seq(a0:Dynamic):Dynamic;
public static function to_seq_from(a0:Dynamic,a1:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Dynamic;
public static function of_seq(a0:Dynamic):Dynamic;
public static var empty:Dynamic;
public static function is_empty(a0:Dynamic):Bool;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function update(a0:Dynamic,a1:Dynamic->Dynamic,a2:Dynamic):Dynamic;
public static function singleton(a0:Dynamic,a1:Dynamic):Dynamic;
public static function remove(a0:Dynamic,a1:Dynamic):Dynamic;
public static var merge:Dynamic;
public static function union(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function compare(a0:Dynamic->Dynamic->Int,a1:Dynamic,a2:Dynamic):Int;
public static function equal(a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function for_all(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function exists(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function filter(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function filter_map(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function partition(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function cardinal(a0:Dynamic):Int;
public static function bindings(a0:Dynamic):Dynamic;
public static function min_binding(a0:Dynamic):Dynamic;
public static function min_binding_opt(a0:Dynamic):Dynamic;
public static function max_binding(a0:Dynamic):Dynamic;
public static function max_binding_opt(a0:Dynamic):Dynamic;
public static function choose(a0:Dynamic):Dynamic;
public static function choose_opt(a0:Dynamic):Dynamic;
public static function split(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_first(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_first_opt:Dynamic;
public static function find_last(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_last_opt:Dynamic;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function mapi(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_rev_seq(a0:Dynamic):Dynamic;
public static function to_seq_from(a0:Dynamic,a1:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Dynamic;
public static function of_seq(a0:Dynamic):Dynamic;
public static var dummy_table:Dynamic;
public static var table_count:Dynamic;
public static var dummy_met:Dynamic;
public static function fit_size(a0:Int):Int;
public static function new_table(a0:Dynamic):Dynamic;
public static function resize(a0:Dynamic,a1:Int):Void;
public static function put(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static var method_count:Dynamic;
public static var inst_var_count:Dynamic;
public static function new_method(a0:Dynamic):Int;
public static function get_method_label(a0:Dynamic,a1:OCamlMeths.MethsKey):Dynamic;
public static function get_method_labels(a0:Dynamic,a1:OCamlMeths.MethsKeyarray):Dynamic;
public static function set_method(a0:Dynamic,a1:OCamlLabs.LabsKey,a2:Dynamic):Void;
public static function get_method(a0:Dynamic,a1:Dynamic):Dynamic;
public static function to_list(a0:Dynamic):Dynamic;
public static var narrow:Dynamic;
public static function widen(a0:Dynamic):Void;
public static function new_slot(a0:Dynamic):Int;
public static function new_variable(a0:Dynamic,a1:OCamlVars.VarsKey):Int;
public static function to_array(a0:Dynamic):Dynamic;
public static var new_methods_variables:Dynamic;
public static function get_variable(a0:Dynamic,a1:OCamlVars.VarsKey):Int;
public static function get_variables(a0:Dynamic,a1:OCamlVars.VarsKeyarray):OCamlArray<Int>;
public static function add_initializer(a0:Dynamic,a1:Dynamic->Void):Void;
public static function create_table(a0:OCamlMeths.MethsKeyarray):Dynamic;
public static function init_class(a0:Dynamic):Void;
public static var inherits:Dynamic;
public static var make_class:Dynamic;
public static function make_class_store(a0:OCamlMeths.MethsKeyarray,a1:Dynamic->Dynamic,a2:Dynamic):Void;
public static function dummy_class(a0:Dynamic):Dynamic;
public static function create_object(a0:Dynamic):Dynamic;
public static function create_object_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function iter_f(a0:Dynamic,a1:Dynamic):Void;
public static function run_initializers(a0:Dynamic,a1:Dynamic):Void;
public static function run_initializers_opt(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function create_object_and_run_initializers(a0:Dynamic,a1:Dynamic):Dynamic;
public static function send(a0:Dynamic,a1:Dynamic):Dynamic;
public static function sendcache(a0:Dynamic,a1:Dynamic,a2:Dynamic,a3:Int):Dynamic;
public static function sendself(a0:Dynamic,a1:Dynamic):Dynamic;
public static function get_public_method(a0:Dynamic,a1:Dynamic):Dynamic;
public static function set_data(a0:Dynamic,a1:Dynamic):Void;
public static function set_next(a0:Dynamic,a1:Dynamic):Void;
public static function get_key(a0:Dynamic):Dynamic;
public static function get_data(a0:Dynamic):Dynamic;
public static function get_next(a0:Dynamic):Dynamic;
public static function build_path(a0:Int,a1:Dynamic,a2:Dynamic):Dynamic;
public static function lookup_keys(a0:Int,a1:Dynamic,a2:Dynamic):Dynamic;
public static function lookup_tables(a0:Dynamic,a1:Dynamic):Dynamic;
public static function get_const(a0:Dynamic):Dynamic;
public static function get_var(a0:Int):Dynamic;
public static function get_env(a0:Int,a1:Int):Dynamic;
public static function get_meth(a0:Dynamic):Dynamic;
public static function set_var(a0:Int):Dynamic;
public static function app_const(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function app_var(a0:Dynamic->Dynamic,a1:Int):Dynamic;
public static function app_env(a0:Dynamic->Dynamic,a1:Int,a2:Int):Dynamic;
public static function app_meth(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function app_const_const(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function app_const_var(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Int):Dynamic;
public static function app_const_meth(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function app_var_const(a0:Dynamic->Dynamic->Dynamic,a1:Int,a2:Dynamic):Dynamic;
public static function app_meth_const(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function app_const_env(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Int,a3:Int):Dynamic;
public static function app_env_const(a0:Dynamic->Dynamic->Dynamic,a1:Int,a2:Int,a3:Dynamic):Dynamic;
public static function meth_app_const(a0:Dynamic,a1:Dynamic):Dynamic;
public static function meth_app_var(a0:Dynamic,a1:Int):Dynamic;
public static function meth_app_env(a0:Dynamic,a1:Int,a2:Int):Dynamic;
public static function meth_app_meth(a0:Dynamic,a1:Dynamic):Dynamic;
public static function send_const(a0:Dynamic,a1:Dynamic,a2:Int):Dynamic;
public static function send_var(a0:Dynamic,a1:Int,a2:Int):Dynamic;
public static function send_env(a0:Dynamic,a1:Int,a2:Int,a3:Int):Dynamic;
public static function send_meth(a0:Dynamic,a1:Dynamic,a2:Int):Dynamic;
public static function new_cache(a0:Dynamic):Int;
public static function method_impl(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function set_methods(a0:Dynamic,a1:OCamlLabs.LabsKeyarray):Void;
public static function stats(a0:Void):Dynamic;
}