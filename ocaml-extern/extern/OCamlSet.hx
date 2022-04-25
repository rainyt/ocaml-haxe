typedef OrderedType = = Dynamic;

compare :Dynamic,
typedef S = = Dynamic;

typedef Elt = = Dynamic;

typedef T = = Dynamic;

typedef Split_bis = = Dynamic;

typedef Enumeration = = Dynamic;

@:native("Set")
extern class OCamlSet {
public static function compare(a0:Dynamic,a1:Dynamic):Dynamic;
public static var empty:Dynamic;
public static function is_empty(a0:Dynamic):Bool;
public static function mem(a0:Dynamic,a1:Dynamic):Bool;
public static function add(a0:Dynamic,a1:Dynamic):Dynamic;
public static function singleton(a0:Dynamic):Dynamic;
public static function remove(a0:Dynamic,a1:Dynamic):Dynamic;
public static function union(a0:Dynamic,a1:Dynamic):Dynamic;
public static function inter(a0:Dynamic,a1:Dynamic):Dynamic;
public static function disjoint(a0:Dynamic,a1:Dynamic):Bool;
public static function diff(a0:Dynamic,a1:Dynamic):Dynamic;
public static function compare(a0:Dynamic,a1:Dynamic):Int;
public static function equal(a0:Dynamic,a1:Dynamic):Bool;
public static function subset(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Void,a1:Dynamic):Void;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function fold(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function for_all(a0:Dynamic->Bool,a1:Dynamic):Bool;
public static function exists(a0:Dynamic->Bool,a1:Dynamic):Bool;
public static function filter(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function filter_map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function partition(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function cardinal(a0:Dynamic):Int;
public static function elements(a0:Dynamic):Dynamic;
public static function min_elt(a0:Dynamic):Dynamic;
public static function min_elt_opt(a0:Dynamic):Dynamic;
public static function max_elt(a0:Dynamic):Dynamic;
public static function max_elt_opt(a0:Dynamic):Dynamic;
public static function choose(a0:Dynamic):Dynamic;
public static function choose_opt(a0:Dynamic):Dynamic;
public static function split(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_opt(a0:Dynamic,a1:Dynamic):Dynamic;
public static function find_first(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function find_first_opt(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function find_last(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function find_last_opt(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function of_list(a0:Dynamic):Dynamic;
public static function to_seq_from(a0:Dynamic,a1:Dynamic):OCamleltSeq.T;
public static function to_seq(a0:Dynamic):OCamleltSeq.T;
public static function to_rev_seq(a0:Dynamic):OCamleltSeq.T;
public static function add_seq(a0:OCamleltSeq.T,a1:Dynamic):Dynamic;
public static function of_seq(a0:OCamleltSeq.T):Dynamic;
public static function height(a0:Dynamic):Int;
public static function create(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function bal(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function add(a0:Dynamic,a1:Dynamic):Dynamic;
public static function singleton(a0:Dynamic):Dynamic;
public static function add_min_element(a0:Dynamic,a1:Dynamic):Dynamic;
public static function add_max_element(a0:Dynamic,a1:Dynamic):Dynamic;
public static function join(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function min_elt(a0:Dynamic):Dynamic;
public static function min_elt_opt(a0:Dynamic):Dynamic;
public static function max_elt(a0:Dynamic):Dynamic;
public static function max_elt_opt(a0:Dynamic):Dynamic;
public static function remove_min_elt(a0:Dynamic):Dynamic;
public static function merge(a0:Dynamic,a1:Dynamic):Dynamic;
public static function concat(a0:Dynamic,a1:Dynamic):Dynamic;
public static function split(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static var empty:Dynamic;
public static function is_empty(a0:Dynamic):Bool;
public static function mem(a0:OCamlOrd.T,a1:Dynamic):Bool;
public static function remove(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static function union(a0:Dynamic,a1:Dynamic):Dynamic;
public static function inter(a0:Dynamic,a1:Dynamic):Dynamic;
public static function split_bis(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static function disjoint(a0:Dynamic,a1:Dynamic):Bool;
public static function diff(a0:Dynamic,a1:Dynamic):Dynamic;
public static function cons_enum(a0:Dynamic,a1:Dynamic):Dynamic;
public static function compare_aux(a0:Dynamic,a1:Dynamic):Int;
public static function compare(a0:Dynamic,a1:Dynamic):Int;
public static function equal(a0:Dynamic,a1:Dynamic):Bool;
public static function subset(a0:Dynamic,a1:Dynamic):Bool;
public static function iter(a0:Dynamic->Dynamic,a1:Dynamic):Void;
public static function fold(a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function for_all(a0:Dynamic->Bool,a1:Dynamic):Bool;
public static function exists(a0:Dynamic->Bool,a1:Dynamic):Bool;
public static function filter(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function partition(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function cardinal(a0:Dynamic):Int;
public static function elements_aux(a0:Dynamic,a1:Dynamic):Dynamic;
public static function elements(a0:Dynamic):Dynamic;
public static function choose(a0:Dynamic):Dynamic;
public static function choose_opt(a0:Dynamic):Dynamic;
public static function find(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static function find_first_aux(a0:Dynamic,a1:Dynamic->Bool,a2:Dynamic):Dynamic;
public static function find_first(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function find_first_opt_aux(a0:Dynamic,a1:Dynamic->Bool,a2:Dynamic):Dynamic;
public static function find_first_opt(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function find_last_aux(a0:Dynamic,a1:Dynamic->Bool,a2:Dynamic):Dynamic;
public static function find_last(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function find_last_opt_aux(a0:Dynamic,a1:Dynamic->Bool,a2:Dynamic):Dynamic;
public static function find_last_opt(a0:Dynamic->Bool,a1:Dynamic):Dynamic;
public static function find_opt(a0:OCamlOrd.T,a1:Dynamic):Dynamic;
public static function try_join(a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
public static function map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function try_concat(a0:Dynamic,a1:Dynamic):Dynamic;
public static function filter_map(a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
public static function of_sorted_list(a0:Dynamic):Dynamic;
public static function of_list(a0:Dynamic):Dynamic;
public static function add_seq(a0:OCamleltSeq.T,a1:Dynamic):Dynamic;
public static function of_seq(a0:OCamleltSeq.T):Dynamic;
public static function seq_of_enum_(a0:Dynamic):OCamleltSeq.T;
public static function to_seq(a0:Dynamic):OCamleltSeq.T;
public static function snoc_enum(a0:Dynamic,a1:Dynamic):Dynamic;
public static function rev_seq_of_enum_(a0:Dynamic):OCamleltSeq.T;
public static function to_rev_seq(a0:Dynamic):OCamleltSeq.T;
public static function to_seq_from(a0:OCamlOrd.T,a1:Dynamic):OCamleltSeq.T;
}