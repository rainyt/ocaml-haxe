type 'a t = 'a array
external length : 'a array -> int = "%array_length"
external get : 'a array -> int -> 'a = "%array_safe_get"
external set : 'a array -> int -> 'a -> unit = "%array_safe_set"
external unsafe_get : 'a array -> int -> 'a = "%array_unsafe_get"
external unsafe_set : 'a array -> int -> 'a -> unit = "%array_unsafe_set"
external make : int -> 'a -> 'a array = "caml_make_vect"
external create : int -> 'a -> 'a array = "caml_make_vect"
external unsafe_sub : 'a array -> int -> int -> 'a array = "caml_array_sub"
external append_prim : 'a array -> 'a array -> 'a array = "caml_array_append"
external concat : 'a array list -> 'a array = "caml_array_concat"
external unsafe_blit : 'a array -> int -> 'a array -> int -> int -> unit
  = "caml_array_blit"
external unsafe_fill : 'a array -> int -> int -> 'a -> unit
  = "caml_array_fill"
external create_float : int -> float array = "caml_make_float_vect"
val make_float : int -> float array
module Floatarray :
  sig
    external create : int -> floatarray = "caml_floatarray_create"
    external length : floatarray -> int = "%floatarray_length"
    external get : floatarray -> int -> float = "%floatarray_safe_get"
    external set : floatarray -> int -> float -> unit
      = "%floatarray_safe_set"
    external unsafe_get : floatarray -> int -> float
      = "%floatarray_unsafe_get"
    external unsafe_set : floatarray -> int -> float -> unit
      = "%floatarray_unsafe_set"
  end
val init : int -> (int -> 'a) -> 'a array
val make_matrix : int -> int -> 'a -> 'a array array
val create_matrix : int -> int -> 'a -> 'a array array
val copy : 'a array -> 'a array
val append : 'a array -> 'a array -> 'a array
val sub : 'a array -> int -> int -> 'a array
val fill : 'a array -> int -> int -> 'a -> unit
val blit : 'a array -> int -> 'a array -> int -> int -> unit
val iter : ('a -> 'b) -> 'a array -> unit
val iter2 : ('a -> 'b -> 'c) -> 'a array -> 'b array -> unit
val map : ('a -> 'b) -> 'a array -> 'b array
val map2 : ('a -> 'b -> 'c) -> 'a array -> 'b array -> 'c array
val iteri : (int -> 'a -> 'b) -> 'a array -> unit
val mapi : (int -> 'a -> 'b) -> 'a array -> 'b array
val to_list : 'a array -> 'a list
val list_length : int -> 'a list -> int
val of_list : 'a list -> 'a array
val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b array -> 'a
val fold_right : ('a -> 'b -> 'b) -> 'a array -> 'b -> 'b
val exists : ('a -> bool) -> 'a array -> bool
val for_all : ('a -> bool) -> 'a array -> bool
val for_all2 : ('a -> 'b -> bool) -> 'a array -> 'b array -> bool
val exists2 : ('a -> 'b -> bool) -> 'a array -> 'b array -> bool
val mem : 'a -> 'a array -> bool
val memq : 'a -> 'a array -> bool
exception Bottom of int
val sort : ('a -> 'a -> int) -> 'a array -> unit
val cutoff : int
val stable_sort : ('a -> 'a -> int) -> 'a array -> unit
val fast_sort : ('a -> 'a -> int) -> 'a array -> unit
val to_seq : 'a array -> 'a Seq.t
val to_seqi : 'a array -> (int * 'a) Seq.t
val of_rev_list : 'a list -> 'a array
val of_seq : 'a Seq.t -> 'a array
