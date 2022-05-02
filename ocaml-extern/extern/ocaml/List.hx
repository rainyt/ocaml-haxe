package ocaml;
enum List_Array {

}

@:native("Array")
extern class List{
// Parser type::type 'a t = 'a array
// Parser external::external length : 'a array -> int = "%array_length"
public static function length (a0:Dynamic):Int;// Parser external::external get : 'a array -> int -> 'a = "%array_safe_get"
public static function get (a0:Dynamic,a1:Int):Dynamic;// Parser external::external set : 'a array -> int -> 'a -> unit = "%array_safe_set"
public static function set (a0:Dynamic,a1:Int,a2:Dynamic):Void;// Parser external::external make : int -> 'a -> 'a array = "caml_make_vect"
public static function make (a0:Int,a1:Dynamic):Dynamic;// Parser external::external create : int -> 'a -> 'a array = "caml_make_vect"  [@@ocaml.deprecated "Use Array.make/ArrayLabels.make instead."]
public static function create (a0:Int,a1:Dynamic):Dynamic;// Parser external::external create_float: int -> float array = "caml_make_float_vect"
public static function create_float(a0:Int):OCamlArray<Float>;// Parser val::val make_float: int -> float array  [@@ocaml.deprecated    "Use Array.create_float/ArrayLabels.create_float instead."]
// Parser val::val init : int -> (int -> 'a) -> 'a array
public static function init (a0:Int,a1:Int->Dynamic):Dynamic;
// Parser val::val make_matrix : int -> int -> 'a -> 'a array array
public static function make_matrix (a0:Int,a1:Int,a2:Dynamic):Dynamic;
// Parser val::val create_matrix : int -> int -> 'a -> 'a array array  [@@ocaml.deprecated    "Use Array.make_matrix/ArrayLabels.make_matrix instead."]
// Parser val::val append : 'a array -> 'a array -> 'a array
public static function append (a0:Dynamic,a1:Dynamic):Dynamic;
// Parser val::val concat : 'a array list -> 'a array
public static function concat (a0:Dynamic):Dynamic;
// Parser val::val sub : 'a array -> int -> int -> 'a array
public static function sub (a0:Dynamic,a1:Int,a2:Int):Dynamic;
// Parser val::val copy : 'a array -> 'a array
public static function copy (a0:Dynamic):Dynamic;
// Parser val::val fill : 'a array -> int -> int -> 'a -> unit
public static function fill (a0:Dynamic,a1:Int,a2:Int,a3:Dynamic):Void;
// Parser val::val blit :  'a array -> int -> 'a array -> int -> int ->    unit
public static function blit (a0:Dynamic,a1:Int,a2:Dynamic,a3:Int,a4:Int):Void;
// Parser val::val to_list : 'a array -> 'a list
public static function to_list (a0:Dynamic):Dynamic;
// Parser val::val of_list : 'a list -> 'a array
public static function of_list (a0:Dynamic):Dynamic;
// Parser val::val iter : ('a -> unit) -> 'a array -> unit
public static function iter (a0:Dynamic->Void,a1:Dynamic):Void;
// Parser val::val iteri : (int -> 'a -> unit) -> 'a array -> unit
public static function iteri (a0:Int->Dynamic->Void,a1:Dynamic):Void;
// Parser val::val map : ('a -> 'b) -> 'a array -> 'b array
public static function map (a0:Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val mapi : (int -> 'a -> 'b) -> 'a array -> 'b array
public static function mapi (a0:Int->Dynamic->Dynamic,a1:Dynamic):Dynamic;
// Parser val::val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b array -> 'a
public static function fold_left (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val fold_right : ('b -> 'a -> 'a) -> 'b array -> 'a -> 'a
public static function fold_right (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val iter2 : ('a -> 'b -> unit) -> 'a array -> 'b array -> unit
public static function iter2 (a0:Dynamic->Dynamic->Void,a1:Dynamic,a2:Dynamic):Void;
// Parser val::val map2 : ('a -> 'b -> 'c) -> 'a array -> 'b array -> 'c array
public static function map2 (a0:Dynamic->Dynamic->Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val for_all : ('a -> bool) -> 'a array -> bool
public static function for_all (a0:Dynamic->Bool,a1:Dynamic):Bool;
// Parser val::val exists : ('a -> bool) -> 'a array -> bool
public static function exists (a0:Dynamic->Bool,a1:Dynamic):Bool;
// Parser val::val for_all2 : ('a -> 'b -> bool) -> 'a array -> 'b array -> bool
public static function for_all2 (a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
// Parser val::val exists2 : ('a -> 'b -> bool) -> 'a array -> 'b array -> bool
public static function exists2 (a0:Dynamic->Dynamic->Bool,a1:Dynamic,a2:Dynamic):Bool;
// Parser val::val mem : 'a -> 'a array -> bool
public static function mem (a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val memq : 'a -> 'a array -> bool
public static function memq (a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val sort : ('a -> 'a -> int) -> 'a array -> unit
public static function sort (a0:Dynamic->Dynamic->Int,a1:Dynamic):Void;
// Parser val::val stable_sort : ('a -> 'a -> int) -> 'a array -> unit
public static function stable_sort (a0:Dynamic->Dynamic->Int,a1:Dynamic):Void;
// Parser val::val fast_sort : ('a -> 'a -> int) -> 'a array -> unit
public static function fast_sort (a0:Dynamic->Dynamic->Int,a1:Dynamic):Void;
// Parser val::val to_seq : 'a array -> 'a Seq.t
public static function to_seq (a0:Dynamic):Dynamic;
// Parser val::val to_seqi : 'a array -> (int * 'a) Seq.t
public static function to_seqi (a0:Dynamic):Dynamic;
// Parser val::val of_seq : 'a Seq.t -> 'a array
public static function of_seq (a0:Dynamic):Dynamic;
// Parser external::external unsafe_get : 'a array -> int -> 'a = "%array_unsafe_get"
public static function unsafe_get (a0:Dynamic,a1:Int):Dynamic;// Parser external::external unsafe_set : 'a array -> int -> 'a -> unit = "%array_unsafe_set"
public static function unsafe_set (a0:Dynamic,a1:Int,a2:Dynamic):Void;}