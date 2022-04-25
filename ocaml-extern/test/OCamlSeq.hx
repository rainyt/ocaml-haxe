type 'a node = Nil | Cons of 'a * 'a t
and 'a t = unit -> 'a node
val empty : unit -> 'a node
val return : 'a -> unit -> 'a node
val cons : 'a -> 'a t -> unit -> 'a node
val append : 'a t -> (unit -> 'a node) -> 'a t
val map : ('a -> 'b) -> 'a t -> 'b t
val filter_map : ('a -> 'b option) -> 'a t -> 'b t
val filter : ('a -> bool) -> 'a t -> 'a t
val flat_map : ('a -> 'b t) -> 'a t -> unit -> 'b node
val flat_map_app : ('a -> 'b t) -> 'b t -> 'a t -> 'b t
val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b t -> 'a
val iter : ('a -> 'b) -> 'a t -> unit
val unfold : ('a -> ('b * 'a) option) -> 'a -> 'b t
