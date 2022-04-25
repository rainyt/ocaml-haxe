type 'a t = { mutable c : 'a list; mutable len : int; }
exception Empty
val create : unit -> 'a t
val clear : 'a t -> unit
val copy : 'a t -> 'a t
val push : 'a -> 'a t -> unit
val pop : 'a t -> 'a
val pop_opt : 'a t -> 'a option
val top : 'a t -> 'a
val top_opt : 'a t -> 'a option
val is_empty : 'a t -> bool
val length : 'a t -> int
val iter : ('a -> unit) -> 'a t -> unit
val fold : ('a -> 'b -> 'a) -> 'a -> 'b t -> 'a
val to_seq : 'a t -> 'a Seq.t
val add_seq : 'a t -> 'a Seq.t -> unit
val of_seq : 'a Seq.t -> 'a t
