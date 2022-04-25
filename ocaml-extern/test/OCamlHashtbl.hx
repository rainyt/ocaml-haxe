type ('a, 'b) t = {
  mutable size : int;
  mutable data : ('a, 'b) bucketlist array;
  mutable seed : int;
  mutable initial_size : int;
}
and ('a, 'b) bucketlist =
    Empty
  | Cons of { mutable key : 'a; mutable data : 'b;
      mutable next : ('a, 'b) bucketlist;
    }
val ongoing_traversal : ('a, 'b) t -> bool
val flip_ongoing_traversal : ('a, 'b) t -> unit
val randomized_default : bool
val randomized : bool ref
val randomize : unit -> unit
val is_randomized : unit -> bool
val prng : Random.State.t lazy_t
val power_2_above : int -> int -> int
val create : ?random:bool -> int -> ('a, 'b) t
val clear : ('a, 'b) t -> unit
val reset : ('a, 'b) t -> unit
val copy_bucketlist : ('a, 'b) bucketlist -> ('a, 'b) bucketlist
val copy : ('a, 'b) t -> ('a, 'b) t
val length : ('a, 'b) t -> int
val insert_all_buckets :
  ('a -> int) ->
  bool -> ('a, 'b) bucketlist array -> ('a, 'b) bucketlist array -> unit
val resize : (('a, 'b) t -> 'a -> int) -> ('a, 'b) t -> unit
val iter : ('a -> 'b -> 'c) -> ('a, 'b) t -> unit
val filter_map_inplace_bucket :
  ('a -> 'b -> 'b option) ->
  ('a, 'b) t -> int -> ('a, 'b) bucketlist -> ('a, 'b) bucketlist -> unit
val filter_map_inplace : ('a -> 'b -> 'b option) -> ('a, 'b) t -> unit
val fold : ('a -> 'b -> 'c -> 'c) -> ('a, 'b) t -> 'c -> 'c
type statistics = {
  num_bindings : int;
  num_buckets : int;
  max_bucket_length : int;
  bucket_histogram : int array;
}
val bucket_length : int -> ('a, 'b) bucketlist -> int
val stats : ('a, 'b) t -> statistics
val to_seq : ('a, 'b) t -> ('a * 'b) Seq.t
val to_seq_keys : ('a, 'b) t -> 'a Seq.t
val to_seq_values : ('a, 'b) t -> 'b Seq.t
module type HashedType =
  sig type t val equal : t -> t -> bool val hash : t -> int end
module type SeededHashedType =
  sig type t val equal : t -> t -> bool val hash : int -> t -> int end
module type S =
  sig
    type key
    type !'a t
    val create : int -> 'a t
    val clear : 'a t -> unit
    val reset : 'a t -> unit
    val copy : 'a t -> 'a t
    val add : 'a t -> key -> 'a -> unit
    val remove : 'a t -> key -> unit
    val find : 'a t -> key -> 'a
    val find_opt : 'a t -> key -> 'a option
    val find_all : 'a t -> key -> 'a list
    val replace : 'a t -> key -> 'a -> unit
    val mem : 'a t -> key -> bool
    val iter : (key -> 'a -> unit) -> 'a t -> unit
    val filter_map_inplace : (key -> 'a -> 'a option) -> 'a t -> unit
    val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
    val length : 'a t -> int
    val stats : 'a t -> statistics
    val to_seq : 'a t -> (key * 'a) Seq.t
    val to_seq_keys : 'a t -> key Seq.t
    val to_seq_values : 'a t -> 'a Seq.t
    val add_seq : 'a t -> (key * 'a) Seq.t -> unit
    val replace_seq : 'a t -> (key * 'a) Seq.t -> unit
    val of_seq : (key * 'a) Seq.t -> 'a t
  end
module type SeededS =
  sig
    type key
    type !'a t
    val create : ?random:bool -> int -> 'a t
    val clear : 'a t -> unit
    val reset : 'a t -> unit
    val copy : 'a t -> 'a t
    val add : 'a t -> key -> 'a -> unit
    val remove : 'a t -> key -> unit
    val find : 'a t -> key -> 'a
    val find_opt : 'a t -> key -> 'a option
    val find_all : 'a t -> key -> 'a list
    val replace : 'a t -> key -> 'a -> unit
    val mem : 'a t -> key -> bool
    val iter : (key -> 'a -> unit) -> 'a t -> unit
    val filter_map_inplace : (key -> 'a -> 'a option) -> 'a t -> unit
    val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
    val length : 'a t -> int
    val stats : 'a t -> statistics
    val to_seq : 'a t -> (key * 'a) Seq.t
    val to_seq_keys : 'a t -> key Seq.t
    val to_seq_values : 'a t -> 'a Seq.t
    val add_seq : 'a t -> (key * 'a) Seq.t -> unit
    val replace_seq : 'a t -> (key * 'a) Seq.t -> unit
    val of_seq : (key * 'a) Seq.t -> 'a t
  end
module MakeSeeded :
  functor (H : SeededHashedType) ->
    sig
      type key = H.t
      type !'a t
      val create : ?random:bool -> int -> 'a t
      val clear : 'a t -> unit
      val reset : 'a t -> unit
      val copy : 'a t -> 'a t
      val add : 'a t -> key -> 'a -> unit
      val remove : 'a t -> key -> unit
      val find : 'a t -> key -> 'a
      val find_opt : 'a t -> key -> 'a option
      val find_all : 'a t -> key -> 'a list
      val replace : 'a t -> key -> 'a -> unit
      val mem : 'a t -> key -> bool
      val iter : (key -> 'a -> unit) -> 'a t -> unit
      val filter_map_inplace : (key -> 'a -> 'a option) -> 'a t -> unit
      val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
      val length : 'a t -> int
      val stats : 'a t -> statistics
      val to_seq : 'a t -> (key * 'a) Seq.t
      val to_seq_keys : 'a t -> key Seq.t
      val to_seq_values : 'a t -> 'a Seq.t
      val add_seq : 'a t -> (key * 'a) Seq.t -> unit
      val replace_seq : 'a t -> (key * 'a) Seq.t -> unit
      val of_seq : (key * 'a) Seq.t -> 'a t
    end
module Make :
  functor (H : HashedType) ->
    sig
      type key = H.t
      type !'a t
      val create : int -> 'a t
      val clear : 'a t -> unit
      val reset : 'a t -> unit
      val copy : 'a t -> 'a t
      val add : 'a t -> key -> 'a -> unit
      val remove : 'a t -> key -> unit
      val find : 'a t -> key -> 'a
      val find_opt : 'a t -> key -> 'a option
      val find_all : 'a t -> key -> 'a list
      val replace : 'a t -> key -> 'a -> unit
      val mem : 'a t -> key -> bool
      val iter : (key -> 'a -> unit) -> 'a t -> unit
      val filter_map_inplace : (key -> 'a -> 'a option) -> 'a t -> unit
      val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
      val length : 'a t -> int
      val stats : 'a t -> statistics
      val to_seq : 'a t -> (key * 'a) Seq.t
      val to_seq_keys : 'a t -> key Seq.t
      val to_seq_values : 'a t -> 'a Seq.t
      val add_seq : 'a t -> (key * 'a) Seq.t -> unit
      val replace_seq : 'a t -> (key * 'a) Seq.t -> unit
      val of_seq : (key * 'a) Seq.t -> 'a t
    end
external seeded_hash_param : int -> int -> int -> 'a -> int = "caml_hash"
  [@@noalloc]
val hash : 'a -> int
val hash_param : int -> int -> 'a -> int
val seeded_hash : int -> 'a -> int
val key_index : ('a, 'b) t -> 'c -> int
val add : ('a, 'b) t -> 'a -> 'b -> unit
val remove_bucket :
  ('a, 'b) t ->
  int -> 'a -> ('a, 'b) bucketlist -> ('a, 'b) bucketlist -> unit
val remove : ('a, 'b) t -> 'a -> unit
val find_rec : 'a -> ('a, 'b) bucketlist -> 'b
val find : ('a, 'b) t -> 'a -> 'b
val find_rec_opt : 'a -> ('a, 'b) bucketlist -> 'b option
val find_opt : ('a, 'b) t -> 'a -> 'b option
val find_all : ('a, 'b) t -> 'a -> 'b list
val replace_bucket : 'a -> 'b -> ('a, 'b) bucketlist -> bool
val replace : ('a, 'b) t -> 'a -> 'b -> unit
val mem : ('a, 'b) t -> 'a -> bool
val add_seq : ('a, 'b) t -> ('a * 'b) Seq.t -> unit
val replace_seq : ('a, 'b) t -> ('a * 'b) Seq.t -> unit
val of_seq : ('a * 'b) Seq.t -> ('a, 'b) t
val rebuild : ?random:bool -> ('a, 'b) t -> ('a, 'b) t
