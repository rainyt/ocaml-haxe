module type OrderedType = sig type t val compare : t -> t -> int end
module type S =
  sig
    type elt
    type t
    val empty : t
    val is_empty : t -> bool
    val mem : elt -> t -> bool
    val add : elt -> t -> t
    val singleton : elt -> t
    val remove : elt -> t -> t
    val union : t -> t -> t
    val inter : t -> t -> t
    val disjoint : t -> t -> bool
    val diff : t -> t -> t
    val compare : t -> t -> int
    val equal : t -> t -> bool
    val subset : t -> t -> bool
    val iter : (elt -> unit) -> t -> unit
    val map : (elt -> elt) -> t -> t
    val fold : (elt -> 'a -> 'a) -> t -> 'a -> 'a
    val for_all : (elt -> bool) -> t -> bool
    val exists : (elt -> bool) -> t -> bool
    val filter : (elt -> bool) -> t -> t
    val filter_map : (elt -> elt option) -> t -> t
    val partition : (elt -> bool) -> t -> t * t
    val cardinal : t -> int
    val elements : t -> elt list
    val min_elt : t -> elt
    val min_elt_opt : t -> elt option
    val max_elt : t -> elt
    val max_elt_opt : t -> elt option
    val choose : t -> elt
    val choose_opt : t -> elt option
    val split : elt -> t -> t * bool * t
    val find : elt -> t -> elt
    val find_opt : elt -> t -> elt option
    val find_first : (elt -> bool) -> t -> elt
    val find_first_opt : (elt -> bool) -> t -> elt option
    val find_last : (elt -> bool) -> t -> elt
    val find_last_opt : (elt -> bool) -> t -> elt option
    val of_list : elt list -> t
    val to_seq_from : elt -> t -> elt Seq.t
    val to_seq : t -> elt Seq.t
    val to_rev_seq : t -> elt Seq.t
    val add_seq : elt Seq.t -> t -> t
    val of_seq : elt Seq.t -> t
  end
module Make :
  functor (Ord : OrderedType) ->
    sig
      type elt = Ord.t
      type t = Empty | Node of { l : t; v : elt; r : t; h : int; }
      val height : t -> int
      val create : t -> elt -> t -> t
      val bal : t -> elt -> t -> t
      val add : elt -> t -> t
      val singleton : elt -> t
      val add_min_element : elt -> t -> t
      val add_max_element : elt -> t -> t
      val join : t -> elt -> t -> t
      val min_elt : t -> elt
      val min_elt_opt : t -> elt option
      val max_elt : t -> elt
      val max_elt_opt : t -> elt option
      val remove_min_elt : t -> t
      val merge : t -> t -> t
      val concat : t -> t -> t
      val split : Ord.t -> t -> t * bool * t
      val empty : t
      val is_empty : t -> bool
      val mem : Ord.t -> t -> bool
      val remove : Ord.t -> t -> t
      val union : t -> t -> t
      val inter : t -> t -> t
      type split_bis = Found | NotFound of t * (unit -> t)
      val split_bis : Ord.t -> t -> split_bis
      val disjoint : t -> t -> bool
      val diff : t -> t -> t
      type enumeration = End | More of elt * t * enumeration
      val cons_enum : t -> enumeration -> enumeration
      val compare_aux : enumeration -> enumeration -> int
      val compare : t -> t -> int
      val equal : t -> t -> bool
      val subset : t -> t -> bool
      val iter : (elt -> 'a) -> t -> unit
      val fold : (elt -> 'a -> 'a) -> t -> 'a -> 'a
      val for_all : (elt -> bool) -> t -> bool
      val exists : (elt -> bool) -> t -> bool
      val filter : (elt -> bool) -> t -> t
      val partition : (elt -> bool) -> t -> t * t
      val cardinal : t -> int
      val elements_aux : elt list -> t -> elt list
      val elements : t -> elt list
      val choose : t -> elt
      val choose_opt : t -> elt option
      val find : Ord.t -> t -> elt
      val find_first_aux : elt -> (elt -> bool) -> t -> elt
      val find_first : (elt -> bool) -> t -> elt
      val find_first_opt_aux : elt -> (elt -> bool) -> t -> elt option
      val find_first_opt : (elt -> bool) -> t -> elt option
      val find_last_aux : elt -> (elt -> bool) -> t -> elt
      val find_last : (elt -> bool) -> t -> elt
      val find_last_opt_aux : elt -> (elt -> bool) -> t -> elt option
      val find_last_opt : (elt -> bool) -> t -> elt option
      val find_opt : Ord.t -> t -> elt option
      val try_join : t -> elt -> t -> t
      val map : (elt -> elt) -> t -> t
      val try_concat : t -> t -> t
      val filter_map : (elt -> elt option) -> t -> t
      val of_sorted_list : elt list -> t
      val of_list : elt list -> t
      val add_seq : elt Seq.t -> t -> t
      val of_seq : elt Seq.t -> t
      val seq_of_enum_ : enumeration -> elt Seq.t
      val to_seq : t -> elt Seq.t
      val snoc_enum : t -> enumeration -> enumeration
      val rev_seq_of_enum_ : enumeration -> elt Seq.t
      val to_rev_seq : t -> elt Seq.t
      val to_seq_from : Ord.t -> t -> elt Seq.t
    end
