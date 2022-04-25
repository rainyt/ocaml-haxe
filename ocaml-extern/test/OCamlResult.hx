type ('a, 'e) t = ('a, 'e) result = Ok of 'a | Error of 'e
val ok : 'a -> ('a, 'b) t
val error : 'a -> ('b, 'a) t
val value : ('a, 'b) t -> default:'a -> 'a
val get_ok : ('a, 'b) t -> 'a
val get_error : ('a, 'b) t -> 'b
val bind : ('a, 'b) t -> ('a -> ('c, 'b) t) -> ('c, 'b) t
val join : (('a, 'b) t, 'b) t -> ('a, 'b) t
val map : ('a -> 'b) -> ('a, 'c) t -> ('b, 'c) t
val map_error : ('a -> 'b) -> ('c, 'a) t -> ('c, 'b) t
val fold : ok:('a -> 'b) -> error:('c -> 'b) -> ('a, 'c) t -> 'b
val iter : ('a -> unit) -> ('a, 'b) t -> unit
val iter_error : ('a -> unit) -> ('b, 'a) t -> unit
val is_ok : ('a, 'b) t -> bool
val is_error : ('a, 'b) t -> bool
val equal :
  ok:('a -> 'b -> bool) ->
  error:('c -> 'd -> bool) -> ('a, 'c) t -> ('b, 'd) t -> bool
val compare :
  ok:('a -> 'b -> int) ->
  error:('c -> 'd -> int) -> ('a, 'c) t -> ('b, 'd) t -> int
val to_option : ('a, 'b) t -> 'a option
val to_list : ('a, 'b) t -> 'a list
val to_seq : ('a, 'b) t -> 'a Seq.t
