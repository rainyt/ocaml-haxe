type 'a t = 'a list = [] | (::) of 'a * 'a list
val length_aux : int -> 'a t -> int
val length : 'a t -> int
val cons : 'a -> 'a list -> 'a t
val hd : 'a t -> 'a
val tl : 'a t -> 'a list
val nth : 'a t -> int -> 'a
val nth_opt : 'a t -> int -> 'a option
val append : 'a list -> 'a list -> 'a list
val rev_append : 'a t -> 'a t -> 'a t
val rev : 'a t -> 'a t
val init_tailrec_aux : 'a t -> int -> int -> (int -> 'a) -> 'a t
val init_aux : int -> int -> (int -> 'a) -> 'a t
val rev_init_threshold : int
val init : int -> (int -> 'a) -> 'a t
val flatten : 'a list t -> 'a t
val concat : 'a list t -> 'a t
val map : ('a -> 'b) -> 'a t -> 'b t
val mapi : (int -> 'a -> 'b) -> 'a t -> 'b t
val rev_map : ('a -> 'b) -> 'a t -> 'b t
val iter : ('a -> 'b) -> 'a t -> unit
val iteri : (int -> 'a -> 'b) -> 'a t -> unit
val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b t -> 'a
val fold_right : ('a -> 'b -> 'b) -> 'a t -> 'b -> 'b
val map2 : ('a -> 'b -> 'c) -> 'a t -> 'b t -> 'c t
val rev_map2 : ('a -> 'b -> 'c) -> 'a t -> 'b t -> 'c t
val iter2 : ('a -> 'b -> 'c) -> 'a t -> 'b t -> unit
val fold_left2 : ('a -> 'b -> 'c -> 'a) -> 'a -> 'b t -> 'c t -> 'a
val fold_right2 : ('a -> 'b -> 'c -> 'c) -> 'a t -> 'b t -> 'c -> 'c
val for_all : ('a -> bool) -> 'a t -> bool
val exists : ('a -> bool) -> 'a t -> bool
val for_all2 : ('a -> 'b -> bool) -> 'a t -> 'b t -> bool
val exists2 : ('a -> 'b -> bool) -> 'a t -> 'b t -> bool
val mem : 'a -> 'a t -> bool
val memq : 'a -> 'a t -> bool
val assoc : 'a -> ('a * 'b) t -> 'b
val assoc_opt : 'a -> ('a * 'b) t -> 'b option
val assq : 'a -> ('a * 'b) t -> 'b
val assq_opt : 'a -> ('a * 'b) t -> 'b option
val mem_assoc : 'a -> ('a * 'b) t -> bool
val mem_assq : 'a -> ('a * 'b) t -> bool
val remove_assoc : 'a -> ('a * 'b) t -> ('a * 'b) t
val remove_assq : 'a -> ('a * 'b) t -> ('a * 'b) t
val find : ('a -> bool) -> 'a t -> 'a
val find_opt : ('a -> bool) -> 'a t -> 'a option
val find_map : ('a -> 'b option) -> 'a t -> 'b option
val find_all : ('a -> bool) -> 'a t -> 'a t
val filter : ('a -> bool) -> 'a t -> 'a t
val filteri : (int -> 'a -> bool) -> 'a t -> 'a t
val filter_map : ('a -> 'b option) -> 'a t -> 'b t
val concat_map : ('a -> 'b t) -> 'a t -> 'b t
val fold_left_map : ('a -> 'b -> 'a * 'c) -> 'a -> 'b t -> 'a * 'c t
val partition : ('a -> bool) -> 'a t -> 'a t * 'a t
val partition_map : ('a -> ('b, 'c) Either.t) -> 'a t -> 'b t * 'c t
val split : ('a * 'b) t -> 'a t * 'b t
val combine : 'a t -> 'b t -> ('a * 'b) t
val merge : ('a -> 'a -> int) -> 'a t -> 'a t -> 'a t
val stable_sort : ('a -> 'a -> int) -> 'a t -> 'a t
val sort : ('a -> 'a -> int) -> 'a t -> 'a t
val fast_sort : ('a -> 'a -> int) -> 'a t -> 'a t
val sort_uniq : ('a -> 'a -> int) -> 'a t -> 'a t
val compare_lengths : 'a t -> 'b t -> int
val compare_length_with : 'a t -> int -> int
val equal : ('a -> 'b -> bool) -> 'a t -> 'b t -> bool
val compare : ('a -> 'b -> int) -> 'a t -> 'b t -> int
val to_seq : 'a t -> 'a Seq.t
val of_seq : 'a Seq.t -> 'a list
