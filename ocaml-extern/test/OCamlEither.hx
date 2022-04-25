type ('a, 'b) t = Left of 'a | Right of 'b
val left : 'a -> ('a, 'b) t
val right : 'a -> ('b, 'a) t
val is_left : ('a, 'b) t -> bool
val is_right : ('a, 'b) t -> bool
val find_left : ('a, 'b) t -> 'a option
val find_right : ('a, 'b) t -> 'b option
val map_left : ('a -> 'b) -> ('a, 'c) t -> ('b, 'c) t
val map_right : ('a -> 'b) -> ('c, 'a) t -> ('c, 'b) t
val map : left:('a -> 'b) -> right:('c -> 'd) -> ('a, 'c) t -> ('b, 'd) t
val fold : left:('a -> 'b) -> right:('c -> 'b) -> ('a, 'c) t -> 'b
val iter : left:('a -> 'b) -> right:('c -> 'b) -> ('a, 'c) t -> 'b
val for_all : left:('a -> 'b) -> right:('c -> 'b) -> ('a, 'c) t -> 'b
val equal :
  left:('a -> 'b -> bool) ->
  right:('c -> 'd -> bool) -> ('a, 'c) t -> ('b, 'd) t -> bool
val compare :
  left:('a -> 'b -> int) ->
  right:('c -> 'd -> int) -> ('a, 'c) t -> ('b, 'd) t -> int
