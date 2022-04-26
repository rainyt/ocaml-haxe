typedef EphemeronSeededS  = Dynamic;

typedef EphemeronS  = Dynamic;

typedef EphemeronEqual  = Dynamic;

typedef EphemeronKey  = Dynamic;

typedef EphemeronKey  = Dynamic;

typedef EphemeronKey  = Dynamic;

typedef EphemeronKey  = Dynamic;

typedef EphemeronKey  = Dynamic;

typedef EphemeronKey  = Dynamic;

typedef EphemeronKey  = Dynamic;

@:native("Ephemeron")
extern class OCamlEphemeron {
public static var create:Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function create(a0:Int):Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function create(a0:Dynamic,a1:Dynamic):Dynamic;
public static function hash(a0:Int,a1:Dynamic):Int;
public static function equal(a0:Dynamic,a1:Dynamic):Dynamic;
public static function get_data(a0:Dynamic):Dynamic;
public static function get_key(a0:Dynamic):Dynamic;
public static function set_key_data(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function check_key(a0:Dynamic):Bool;
public static var create:Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function _obj_opt(a0:OCamlObj.ObjToption):OCamlObj.ObjToption;
public static function obj_opt(a0:OCamlObj.ObjToption):Dynamic;
public static function create(a0:Void):Dynamic;
public static function get_key(a0:Dynamic):Dynamic;
public static function get_key_copy(a0:Dynamic):Dynamic;
public static function set_key(a0:Dynamic,a1:Dynamic):Void;
public static function unset_key(a0:Dynamic):Void;
public static function check_key(a0:Dynamic):Bool;
public static function blit_key(a0:Dynamic):Void;
public static function get_data(a0:Dynamic):Dynamic;
public static function get_data_copy(a0:Dynamic):Dynamic;
public static function set_data(a0:Dynamic,a1:Dynamic):Void;
public static function unset_data(a0:Dynamic):Void;
public static function check_data(a0:Dynamic):Bool;
public static function blit_data(a0:OCamlObjEph.ObjEphT,a1:OCamlObjEph.ObjEphT):Void;
public static var create:Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function create(a0:Int):Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function create(a0:Void):Dynamic;
public static function get_key1(a0:Dynamic):Dynamic;
public static function get_key1_copy(a0:Dynamic):Dynamic;
public static function set_key1(a0:Dynamic,a1:Dynamic):Void;
public static function unset_key1(a0:Dynamic):Void;
public static function check_key1(a0:Dynamic):Bool;
public static function get_key2(a0:Dynamic):Dynamic;
public static function get_key2_copy(a0:Dynamic):Dynamic;
public static function set_key2(a0:Dynamic,a1:Dynamic):Void;
public static function unset_key2(a0:Dynamic):Void;
public static function check_key2(a0:Dynamic):Bool;
public static function blit_key1(a0:OCamlObjEph.ObjEphT,a1:OCamlObjEph.ObjEphT):Void;
public static function blit_key2(a0:OCamlObjEph.ObjEphT,a1:OCamlObjEph.ObjEphT):Void;
public static function blit_key12(a0:OCamlObjEph.ObjEphT,a1:OCamlObjEph.ObjEphT):Void;
public static function get_data(a0:Dynamic):Dynamic;
public static function get_data_copy(a0:Dynamic):Dynamic;
public static function set_data(a0:Dynamic,a1:Dynamic):Void;
public static function unset_data(a0:Dynamic):Void;
public static function check_data(a0:Dynamic):Bool;
public static function blit_data(a0:OCamlObjEph.ObjEphT,a1:OCamlObjEph.ObjEphT):Void;
public static var create:Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function create(a0:Int):Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function create(a0:Int):Dynamic;
public static function length(a0:Dynamic):Int;
public static function get_key(a0:Dynamic,a1:Int):Dynamic;
public static function get_key_copy(a0:Dynamic,a1:Int):Dynamic;
public static function set_key(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function unset_key(a0:Dynamic,a1:Int):Void;
public static function check_key(a0:Dynamic,a1:Int):Bool;
public static function blit_key(a0:Dynamic,a1:Int,a2:Int):Void;
public static function get_data(a0:Dynamic):Dynamic;
public static function get_data_copy(a0:Dynamic):Dynamic;
public static function set_data(a0:Dynamic,a1:Dynamic):Void;
public static function unset_data(a0:Dynamic):Void;
public static function check_data(a0:Dynamic):Bool;
public static function blit_data(a0:OCamlObjEph.ObjEphT,a1:OCamlObjEph.ObjEphT):Void;
public static var create:Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function create(a0:Int):Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static function copy(a0:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic->Void,a1:Dynamic):Void;
public static function filter_map_inplace(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function length(a0:Dynamic):Int;
public static function stats(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
public static function to_seq(a0:Dynamic):Dynamic;
public static function to_seq_keys(a0:Dynamic):Dynamic;
public static function to_seq_values(a0:Dynamic):Dynamic;
public static function add_seq(a0:Dynamic,a1:Dynamic):Void;
public static function replace_seq(a0:Dynamic,a1:Dynamic):Void;
public static function of_seq(a0:Dynamic):Dynamic;
public static function clean(a0:Dynamic):Void;
public static function stats_alive(a0:Dynamic):OCamlHashtbl.HashtblStatistics;
}