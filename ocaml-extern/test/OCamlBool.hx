type t = bool = false | true
external not : bool -> bool = "%boolnot"
external ( && ) : bool -> bool -> bool = "%sequand"
external ( || ) : bool -> bool -> bool = "%sequor"
val equal : bool -> bool -> bool
val compare : bool -> bool -> int
external to_int : bool -> int = "%identity"
val to_float : t -> float
val to_string : t -> string
