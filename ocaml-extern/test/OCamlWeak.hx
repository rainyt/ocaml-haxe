type !'a t
val create : int -> 'a t
val additional_values : int
val length : 'a -> int
val raise_if_invalid_offset : 'a -> int -> string -> unit
external set' : 'a t -> int -> 'a -> unit = "caml_ephe_set_key"
external unset : 'a t -> int -> unit = "caml_ephe_unset_key"
val set : 'a t -> int -> 'a option -> unit
val get : 'a t -> int -> 'a option
val get_copy : 'a t -> int -> 'a option
val check : 'a t -> int -> bool
val blit : 'a t -> int -> 'a t -> int -> int -> unit
val fill : 'a t -> int -> int -> 'a option -> unit
module type S =
  sig
    type data
    type t
    val create : int -> t
    val clear : t -> unit
    val merge : t -> data -> data
    val add : t -> data -> unit
    val remove : t -> data -> unit
    val find : t -> data -> data
    val find_opt : t -> data -> data option
    val find_all : t -> data -> data list
    val mem : t -> data -> bool
    val iter : (data -> unit) -> t -> unit
    val fold : (data -> 'a -> 'a) -> t -> 'a -> 'a
    val count : t -> int
    val stats : t -> int * int * int * int * int * int
  end
module Make :
  functor (H : Hashtbl.HashedType) ->
    sig
      type data = H.t
      type t
      val create : int -> t
      val clear : t -> unit
      val merge : t -> data -> data
      val add : t -> data -> unit
      val remove : t -> data -> unit
      val find : t -> data -> data
      val find_opt : t -> data -> data option
      val find_all : t -> data -> data list
      val mem : t -> data -> bool
      val iter : (data -> unit) -> t -> unit
      val fold : (data -> 'a -> 'a) -> t -> 'a -> 'a
      val count : t -> int
      val stats : t -> int * int * int * int * int * int
    end
