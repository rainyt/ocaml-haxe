module type OrderedType = sig type t val compare : t -> t -> int end
module type S =
  sig
    type key
    type +!'a t
    val empty : 'a t
    val is_empty : 'a t -> bool
    val mem : key -> 'a t -> bool
    val add : key -> 'a -> 'a t -> 'a t
    val update : key -> ('a option -> 'a option) -> 'a t -> 'a t
    val singleton : key -> 'a -> 'a t
    val remove : key -> 'a t -> 'a t
    val merge :
      (key -> 'a option -> 'b option -> 'c option) -> 'a t -> 'b t -> 'c t
    val union : (key -> 'a -> 'a -> 'a option) -> 'a t -> 'a t -> 'a t
    val compare : ('a -> 'a -> int) -> 'a t -> 'a t -> int
    val equal : ('a -> 'a -> bool) -> 'a t -> 'a t -> bool
    val iter : (key -> 'a -> unit) -> 'a t -> unit
    val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
    val for_all : (key -> 'a -> bool) -> 'a t -> bool
    val exists : (key -> 'a -> bool) -> 'a t -> bool
    val filter : (key -> 'a -> bool) -> 'a t -> 'a t
    val filter_map : (key -> 'a -> 'b option) -> 'a t -> 'b t
    val partition : (key -> 'a -> bool) -> 'a t -> 'a t * 'a t
    val cardinal : 'a t -> int
    val bindings : 'a t -> (key * 'a) list
    val min_binding : 'a t -> key * 'a
    val min_binding_opt : 'a t -> (key * 'a) option
    val max_binding : 'a t -> key * 'a
    val max_binding_opt : 'a t -> (key * 'a) option
    val choose : 'a t -> key * 'a
    val choose_opt : 'a t -> (key * 'a) option
    val split : key -> 'a t -> 'a t * 'a option * 'a t
    val find : key -> 'a t -> 'a
    val find_opt : key -> 'a t -> 'a option
    val find_first : (key -> bool) -> 'a t -> key * 'a
    val find_first_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val find_last : (key -> bool) -> 'a t -> key * 'a
    val find_last_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val map : ('a -> 'b) -> 'a t -> 'b t
    val mapi : (key -> 'a -> 'b) -> 'a t -> 'b t
    val to_seq : 'a t -> (key * 'a) Seq.t
    val to_rev_seq : 'a t -> (key * 'a) Seq.t
    val to_seq_from : key -> 'a t -> (key * 'a) Seq.t
    val add_seq : (key * 'a) Seq.t -> 'a t -> 'a t
    val of_seq : (key * 'a) Seq.t -> 'a t
  end
module Make :
  functor (Ord : OrderedType) ->
    sig
      type key = Ord.t
      type 'a t =
          Empty
        | Node of { l : 'a t; v : key; d : 'a; r : 'a t; h : int; }
      val height : 'a t -> int
      val create : 'a t -> key -> 'a -> 'a t -> 'a t
      val singleton : key -> 'a -> 'a t
      val bal : 'a t -> key -> 'a -> 'a t -> 'a t
      val empty : 'a t
      val is_empty : 'a t -> bool
      val add : key -> 'a -> 'a t -> 'a t
      val find : Ord.t -> 'a t -> 'a
      val find_first_aux : key -> 'a -> (key -> bool) -> 'a t -> key * 'a
      val find_first : (key -> bool) -> 'a t -> key * 'a
      val find_first_opt_aux :
        key -> 'a -> (key -> bool) -> 'a t -> (key * 'a) option
      val find_first_opt : (key -> bool) -> 'a t -> (key * 'a) option
      val find_last_aux : key -> 'a -> (key -> bool) -> 'a t -> key * 'a
      val find_last : (key -> bool) -> 'a t -> key * 'a
      val find_last_opt_aux :
        key -> 'a -> (key -> bool) -> 'a t -> (key * 'a) option
      val find_last_opt : (key -> bool) -> 'a t -> (key * 'a) option
      val find_opt : Ord.t -> 'a t -> 'a option
      val mem : Ord.t -> 'a t -> bool
      val min_binding : 'a t -> key * 'a
      val min_binding_opt : 'a t -> (key * 'a) option
      val max_binding : 'a t -> key * 'a
      val max_binding_opt : 'a t -> (key * 'a) option
      val remove_min_binding : 'a t -> 'a t
      val remove : Ord.t -> 'a t -> 'a t
      val update : key -> ('a option -> 'a option) -> 'a t -> 'a t
      val iter : (key -> 'a -> 'b) -> 'a t -> unit
      val map : ('a -> 'b) -> 'a t -> 'b t
      val mapi : (key -> 'a -> 'b) -> 'a t -> 'b t
      val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
      val for_all : (key -> 'a -> bool) -> 'a t -> bool
      val exists : (key -> 'a -> bool) -> 'a t -> bool
      val add_min_binding : key -> 'a -> 'a t -> 'a t
      val add_max_binding : key -> 'a -> 'a t -> 'a t
      val join : 'a t -> key -> 'a -> 'a t -> 'a t
      val concat : 'a t -> 'a t -> 'a t
      val concat_or_join : 'a t -> key -> 'a option -> 'a t -> 'a t
      val split : Ord.t -> 'a t -> 'a t * 'a option * 'a t
      val merge :
        (key -> 'a option -> 'b option -> 'c option) -> 'a t -> 'b t -> 'c t
      val union : (key -> 'a -> 'a -> 'a option) -> 'a t -> 'a t -> 'a t
      val filter : (key -> 'a -> bool) -> 'a t -> 'a t
      val filter_map : (key -> 'a -> 'b option) -> 'a t -> 'b t
      val partition : (key -> 'a -> bool) -> 'a t -> 'a t * 'a t
      type 'a enumeration = End | More of key * 'a * 'a t * 'a enumeration
      val cons_enum : 'a t -> 'a enumeration -> 'a enumeration
      val compare : ('a -> 'b -> int) -> 'a t -> 'b t -> int
      val equal : ('a -> 'b -> bool) -> 'a t -> 'b t -> bool
      val cardinal : 'a t -> int
      val bindings_aux : (key * 'a) list -> 'a t -> (key * 'a) list
      val bindings : 'a t -> (key * 'a) list
      val choose : 'a t -> key * 'a
      val choose_opt : 'a t -> (key * 'a) option
      val add_seq : (key * 'a) Seq.t -> 'a t -> 'a t
      val of_seq : (key * 'a) Seq.t -> 'a t
      val seq_of_enum_ : 'a enumeration -> (key * 'a) Seq.t
      val to_seq : 'a t -> (key * 'a) Seq.t
      val snoc_enum : 'a t -> 'a enumeration -> 'a enumeration
      val rev_seq_of_enum_ : 'a enumeration -> (key * 'a) Seq.t
      val to_rev_seq : 'a t -> (key * 'a) Seq.t
      val to_seq_from : Ord.t -> 'a t -> (key * 'a) Seq.t
    end
