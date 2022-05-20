package ocaml;
@:native("List.list")
extern class List_List{
}

@:native("List")
extern class List{
// Parser type::type 'a t = 'a list = [] | (::) of 'a * 'a list 
// Parser val::val length : 'a list -> int
public static function length (a0:Dynamic):Int;
// Parser val::val compare_lengths : 'a list -> 'b list -> int
public static function compare_lengths (a0:Dynamic,a1:Dynamic):Int;
// Parser val::val compare_length_with : 'a list -> int -> int
public static function compare_length_with (a0:Dynamic,a1:Int):Int;
// Parser val::val cons : 'a -> 'a list -> 'a list
public static function cons (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val hd : 'a list -> 'a
public static function hd (a0:Dynamic):Dynamic;
// Parser val::val tl : 'a list -> 'a list
public static function tl (a0:Dynamic):Dynamic;
// Parser val::val nth : 'a list -> int -> 'a
public static function nth (a0:Dynamic,a1:Int):Dynamic;
// Parser val::val nth_opt : 'a list -> int -> 'a option
public static function nth_opt (a0:Dynamic,a1:Int):Dynamic;
// Parser val::val rev : 'a list -> 'a list
public static function rev (a0:Dynamic):Dynamic;
// Parser val::val init : int -> (int -> 'a) -> 'a list
public static function init (a0:Int,a1:Int->Dynamic):Dynamic;
// Parser val::val append : 'a list -> 'a list -> 'a list
public static function append (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val rev_append : 'a list -> 'a list -> 'a list
public static function rev_append (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val concat : 'a list list -> 'a list
public static function concat (a0:Dynamic):Dynamic;
// Parser val::val flatten : 'a list list -> 'a list
public static function flatten (a0:Dynamic):Dynamic;
// Parser val::val equal : ('a -> 'a -> bool) -> 'a list -> 'a list -> bool
public static function equal (a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
// Parser val::val compare : ('a -> 'a -> int) -> 'a list -> 'a list -> int
public static function compare (a0:Dynamic->Dynamic->Int,a1:Dynamic,a2:Dynamic):Int;
// Parser val::val iter : ('a -> unit) -> 'a list -> unit
public static function iter (a0:Dynamic->Void,a1:Dynamic):Void;
// Parser val::val iteri : (int -> 'a -> unit) -> 'a list -> unit
public static function iteri (a0:Int->Dynamic->Void,a1:Dynamic):Void;
// Parser val::val map : ('a -> 'b) -> 'a list -> 'b list
public static function map (a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val mapi : (int -> 'a -> 'b) -> 'a list -> 'b list
public static function mapi (a0:Int->Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val rev_map : ('a -> 'b) -> 'a list -> 'b list
public static function rev_map (a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val filter_map : ('a -> 'b option) -> 'a list -> 'b list
public static function filter_map (a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val concat_map : ('a -> 'b list) -> 'a list -> 'b list
public static function concat_map (a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val fold_left_map :  ('a -> 'b -> 'a * 'c) -> 'a -> 'b list -> 'a * 'c list
public static function fold_left_map (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a
public static function fold_left (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b
public static function fold_right (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val iter2 : ('a -> 'b -> unit) -> 'a list -> 'b list -> unit
public static function iter2 (a0:Dynamic->Dynamic->Void,a1:Dynamic,a2:Dynamic):Void;
// Parser val::val map2 : ('a -> 'b -> 'c) -> 'a list -> 'b list -> 'c list
public static function map2 (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val rev_map2 : ('a -> 'b -> 'c) -> 'a list -> 'b list -> 'c list
public static function rev_map2 (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val fold_left2 :  ('a -> 'b -> 'c -> 'a) -> 'a -> 'b list -> 'c list -> 'a
public static function fold_left2 (a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
// Parser val::val fold_right2 :  ('a -> 'b -> 'c -> 'c) -> 'a list -> 'b list -> 'c -> 'c
public static function fold_right2 (a0:Dynamic->Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
// Parser val::val for_all : ('a -> bool) -> 'a list -> bool
public static function for_all (a0:Dynamic->Bool,a1:Dynamic):Bool;
// Parser val::val exists : ('a -> bool) -> 'a list -> bool
public static function exists (a0:Dynamic->Bool,a1:Dynamic):Bool;
// Parser val::val for_all2 : ('a -> 'b -> bool) -> 'a list -> 'b list -> bool
public static function for_all2 (a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
// Parser val::val exists2 : ('a -> 'b -> bool) -> 'a list -> 'b list -> bool
public static function exists2 (a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
// Parser val::val mem : 'a -> 'a list -> bool
public static function mem (a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val memq : 'a -> 'a list -> bool
public static function memq (a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val find : ('a -> bool) -> 'a list -> 'a
public static function find (a0:Dynamic->Bool,a1:Dynamic):Dynamic;
// Parser val::val find_opt : ('a -> bool) -> 'a list -> 'a option
public static function find_opt (a0:Dynamic->Bool,a1:Dynamic):Dynamic;
// Parser val::val find_map : ('a -> 'b option) -> 'a list -> 'b option
public static function find_map (a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val filter : ('a -> bool) -> 'a list -> 'a list
public static function filter (a0:Dynamic->Bool,a1:Dynamic):Dynamic;
// Parser val::val find_all : ('a -> bool) -> 'a list -> 'a list
public static function find_all (a0:Dynamic->Bool,a1:Dynamic):Dynamic;
// Parser val::val filteri : (int -> 'a -> bool) -> 'a list -> 'a list
public static function filteri (a0:Int->Dynamic->Bool,a1:Dynamic):Dynamic;
// Parser val::val partition : ('a -> bool) -> 'a list -> 'a list * 'a list
public static function partition (a0:Dynamic->Bool,a1:Dynamic):Dynamic;
// Parser val::val partition_map : ('a -> ('b, 'c) Either.t) -> 'a list -> 'b list * 'c list
public static function partition_map (a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val assoc : 'a -> ('a * 'b) list -> 'b
public static function assoc (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val assoc_opt : 'a -> ('a * 'b) list -> 'b option
public static function assoc_opt (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val assq : 'a -> ('a * 'b) list -> 'b
public static function assq (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val assq_opt : 'a -> ('a * 'b) list -> 'b option
public static function assq_opt (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val mem_assoc : 'a -> ('a * 'b) list -> bool
public static function mem_assoc (a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val mem_assq : 'a -> ('a * 'b) list -> bool
public static function mem_assq (a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val remove_assoc : 'a -> ('a * 'b) list -> ('a * 'b) list
public static function remove_assoc (a0:Dynamic):Dynamic->Dynamic;
// Parser val::val remove_assq : 'a -> ('a * 'b) list -> ('a * 'b) list
public static function remove_assq (a0:Dynamic):Dynamic->Dynamic;
// Parser val::val split : ('a * 'b) list -> 'a list * 'b list
public static function split (a0:Dynamic):Dynamic;
// Parser val::val combine : 'a list -> 'b list -> ('a * 'b) list
public static function combine (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val sort : ('a -> 'a -> int) -> 'a list -> 'a list
public static function sort (a0:Dynamic->Dynamic->Int,a1:Dynamic):Dynamic;
// Parser val::val stable_sort : ('a -> 'a -> int) -> 'a list -> 'a list
public static function stable_sort (a0:Dynamic->Dynamic->Int,a1:Dynamic):Dynamic;
// Parser val::val fast_sort : ('a -> 'a -> int) -> 'a list -> 'a list
public static function fast_sort (a0:Dynamic->Dynamic->Int,a1:Dynamic):Dynamic;
// Parser val::val sort_uniq : ('a -> 'a -> int) -> 'a list -> 'a list
public static function sort_uniq (a0:Dynamic->Dynamic->Int,a1:Dynamic):Dynamic;
// Parser val::val merge : ('a -> 'a -> int) -> 'a list -> 'a list -> 'a list
public static function merge (a0:Dynamic->Dynamic->Int,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val to_seq : 'a list -> 'a Seq.t
public static function to_seq (a0:Dynamic):Dynamic;
}