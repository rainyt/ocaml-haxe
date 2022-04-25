exception Empty
type 'a cell = Nil | Cons of { content : 'a; mutable next : 'a cell; }
type 'a t = {
  mutable length : int;
  mutable first : 'a cell;
  mutable last : 'a cell;
}
val create : unit -> 'a t
val clear : 'a t -> unit
val add : 'a -> 'a t -> unit
val push : 'a -> 'a t -> unit
val peek : 'a t -> 'a
val peek_opt : 'a t -> 'a option
val top : 'a t -> 'a
val take : 'a t -> 'a
val take_opt : 'a t -> 'a option
val pop : 'a t -> 'a
val copy : 'a t -> 'a t
val is_empty : 'a t -> bool
val length : 'a t -> int
val iter : ('a -> 'b) -> 'a t -> unit
val fold : ('a -> 'b -> 'a) -> 'a -> 'b t -> 'a
val transfer : 'a t -> 'a t -> unit
val to_seq : 'a t -> 'a Seq.t
val add_seq : 'a t -> 'a Seq.t -> unit
val of_seq : 'a Seq.t -> 'a t
