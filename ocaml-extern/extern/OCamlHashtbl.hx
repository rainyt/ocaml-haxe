typedef Statistics = {
num_bindings :Int,
num_buckets :Int,
max_bucket_length :Int,
bucket_histogram :Int,
}

typedef HashedType = = Dynamic;

typedef SeededHashedType = = Dynamic;

typedef S = = Dynamic;

typedef SeededS = = Dynamic;

typedef Key = = Dynamic;

typedef Key = = Dynamic;

@:native("Hashtbl")
extern class OCamlHashtbl {
public static function ongoing_traversal(a0:Dynamic):Bool;
public static function flip_ongoing_traversal(a0:Dynamic):Void;
public static var randomized_default:Bool;
public static var randomized:Dynamic;
public static function randomize(a0:Void):Void;
public static function is_randomized(a0:Void):Bool;
public static var prng:OCamlRandom.State;
public static function power_2_above(a0:Int,a1:Int):Int;
public static var create:Dynamic;
public static function clear(a0:Dynamic):Void;
public static function reset(a0:Dynamic):Void;
public static var copy_bucketlist:Dynamic;
public static var copy:Dynamic;
public static function length(a0:Dynamic):Int;
public static var insert_all_buckets:Dynamic;
public static function resize(a0:Dynamic):Void;
public static function iter(a0:Dynamic):Void;
public static var filter_map_inplace_bucket:Dynamic;
public static function filter_map_inplace(a0:Dynamic):Void;
public static function fold(a0:Dynamic,a1:Dynamic):Dynamic;
public static function bucket_length(a0:Int,a1:Dynamic):Int;
public static function stats(a0:Dynamic):Dynamic;
public static var to_seq:OCamlfunSeq.T;
public static function to_seq_keys(a0:Dynamic):OCaml'aSeq.T;
public static function to_seq_values(a0:Dynamic):OCaml'bSeq.T;
public static function equal(a0:Dynamic,a1:Dynamic):Dynamic;
public static function equal(a0:Dynamic,a1:Dynamic):Dynamic;
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
public static function stats(a0:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):OCamlfunSeq.T;
public static function to_seq_keys(a0:Dynamic):OCamlkeySeq.T;
public static function to_seq_values(a0:Dynamic):OCaml'aSeq.T;
public static function add_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function replace_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function of_seq(a0:OCamlfunSeq.T):Dynamic;
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
public static function stats(a0:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):OCamlfunSeq.T;
public static function to_seq_keys(a0:Dynamic):OCamlkeySeq.T;
public static function to_seq_values(a0:Dynamic):OCaml'aSeq.T;
public static function add_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function replace_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function of_seq(a0:OCamlfunSeq.T):Dynamic;
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
public static function stats(a0:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):OCamlfunSeq.T;
public static function to_seq_keys(a0:Dynamic):OCamlkeySeq.T;
public static function to_seq_values(a0:Dynamic):OCaml'aSeq.T;
public static function add_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function replace_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function of_seq(a0:OCamlfunSeq.T):Dynamic;
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
public static function stats(a0:Dynamic):Dynamic;
public static function to_seq(a0:Dynamic):OCamlfunSeq.T;
public static function to_seq_keys(a0:Dynamic):OCamlkeySeq.T;
public static function to_seq_values(a0:Dynamic):OCaml'aSeq.T;
public static function add_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function replace_seq(a0:Dynamic,a1:OCamlfunSeq.T):Void;
public static function of_seq(a0:OCamlfunSeq.T):Dynamic;
public static function seeded_hash_param(a0:Int,a1:Int,a2:Int,a3:Dynamic):Int;
public static function hash(a0:Dynamic):Int;
public static function hash_param(a0:Int,a1:Int,a2:Dynamic):Int;
public static function seeded_hash(a0:Int,a1:Dynamic):Int;
public static function key_index(a0:Dynamic,a1:Dynamic):Int;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static var remove_bucket:Dynamic;
public static function remove(a0:Dynamic,a1:Dynamic):Void;
public static function find_rec(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_rec_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_all(a0:Dynamic,a1:Dynamic):Dynamic;
public static function replace_bucket(a0:Dynamic,a1:Dynamic,a2:Dynamic):Bool;
public static function replace(a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function add_seq(a0:OCamlfunSeq.T):Void;
public static function replace_seq(a0:OCamlfunSeq.T):Void;
public static var of_seq:Dynamic;
public static var rebuild:Dynamic;
}