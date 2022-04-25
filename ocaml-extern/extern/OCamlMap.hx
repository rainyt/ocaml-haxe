typedef OrderedType = = Dynamic;

compare :Dynamic,
typedef S = = Dynamic;

typedef Key = = Dynamic;

@:native("Map")
extern class OCamlMap {
public static function compare(a0:Dynamic,a1:Dynamic):Dynamic;
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
public static function to_seq(a0:Dynamic):OCamlfunSeq.T;
public static function to_rev_seq(a0:Dynamic):OCamlfunSeq.T;
public static function to_seq_from(a0:Dynamic,a1:Dynamic):OCamlfunSeq.T;
public static function add_seq(a0:OCamlfunSeq.T,a1:Dynamic):Dynamic;
public static function of_seq(a0:OCamlfunSeq.T):Dynamic;
public static function height(a0:Dynamic):Int;
public static function create(a0:Dynamic,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
public static function singleton(a0:Dynamic,a1:Dynamic):Dynamic;
public static function bal(a0:Dynamic,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
public static var empty:Dynamic;
public static function is_empty(a0:Dynamic):Bool;
public static function add(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function find(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static function find_first_aux(a0:Dynamic,a1:Dynamic,a2:Dynamic->Bool,a3:Dynamic):Dynamic;
public static function find_first(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_first_opt_aux:Dynamic;
public static var find_first_opt:Dynamic;
public static function find_last_aux(a0:Dynamic,a1:Dynamic,a2:Dynamic->Bool,a3:Dynamic):Dynamic;
public static function find_last(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static var find_last_opt_aux:Dynamic;
public static var find_last_opt:Dynamic;
public static function find_opt(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static function mem(a0:OCamlOrd.T,a1:Dynamic):Bool;
public static function min_binding(a0:Dynamic):Dynamic;
public static function min_binding_opt(a0:Dynamic):Dynamic;
public static function max_binding(a0:Dynamic):Dynamic;
public static function max_binding_opt(a0:Dynamic):Dynamic;
public static function remove_min_binding(a0:Dynamic):Dynamic;
public static function remove(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static function update(a0:Dynamic,a1:Dynamic->Dynamic,a2:Dynamic):Dynamic;
public static function iter(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Void;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function mapi(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function fold(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function for_all(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function exists(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Bool;
public static function add_min_binding(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function add_max_binding(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function join(a0:Dynamic,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
public static function concat(a0:Dynamic,a1:Dynamic):Dynamic;
public static function concat_or_join(a0:Dynamic,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
public static function split(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static var merge:Dynamic;
public static function union(a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function filter(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function filter_map(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function partition(a0:Dynamic->Dynamic->Bool,a1:Dynamic):Dynamic;
public static function cons_enum(a0:Dynamic,a1:Dynamic):Dynamic;
public static function compare(a0:Dynamic->Dynamic->Int,a1:Dynamic,a2:Dynamic):Int;
public static function equal(a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
public static function cardinal(a0:Dynamic):Int;
public static var bindings_aux:Dynamic;
public static function bindings(a0:Dynamic):Dynamic;
public static function choose(a0:Dynamic):Dynamic;
public static function choose_opt(a0:Dynamic):Dynamic;
public static function add_seq(a0:OCamlfunSeq.T,a1:Dynamic):Dynamic;
public static function of_seq(a0:OCamlfunSeq.T):Dynamic;
public static function seq_of_enum_(a0:Dynamic):OCamlfunSeq.T;
public static function to_seq(a0:Dynamic):OCamlfunSeq.T;
public static function snoc_enum(a0:Dynamic,a1:Dynamic):Dynamic;
public static function rev_seq_of_enum_(a0:Dynamic):OCamlfunSeq.T;
public static function to_rev_seq(a0:Dynamic):OCamlfunSeq.T;
public static function to_seq_from(a0:OCamlOrd.T,a1:Dynamic):OCamlfunSeq.T;
}