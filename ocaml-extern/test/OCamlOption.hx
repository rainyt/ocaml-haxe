type 'a t = 'a option = None | Some of 'a
val none : 'a t
val some : 'a -> 'a t
val value : 'a t -> default:'a -> 'a
val get : 'a t -> 'a
val bind : 'a t -> ('a -> 'b t) -> 'b t
val join : 'a t t -> 'a t
val map : ('a -> 'b) -> 'a t -> 'b t
val fold : none:'a -> some:('b -> 'a) -> 'b t -> 'a
val iter : ('a -> unit) -> 'a t -> unit
val is_none : 'a t -> bool
val is_some : 'a t -> bool
val equal : ('a -> 'b -> bool) -> 'a t -> 'b t -> bool
val compare : ('a -> 'b -> int) -> 'a t -> 'b t -> int
val to_result : none:'a -> 'b t -> ('b, 'a) result
val to_list : 'a t -> 'a list
val to_seq : 'a t -> 'a Seq.t
