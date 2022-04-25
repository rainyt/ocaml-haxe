external random_seed : unit -> int array = "caml_sys_random_seed"
module State :
  sig
    type t = { st : int array; mutable idx : int; }
    val new_state : unit -> t
    val assign : t -> t -> unit
    val full_init : t -> int array -> unit
    val make : int array -> t
    val make_self_init : unit -> t
    val copy : t -> t
    val bits : t -> int
    val intaux : t -> int -> int
    val int : t -> int -> int
    val int32aux : t -> int32 -> int32
    val int32 : t -> int32 -> int32
    val int64aux : t -> int64 -> int64
    val int64 : t -> int64 -> int64
    val nativeint : t -> nativeint -> nativeint
    val rawfloat : t -> float
    val float : t -> float -> float
    val bool : t -> bool
  end
val default : State.t
val bits : unit -> int
val int : int -> int
val int32 : int32 -> int32
val nativeint : nativeint -> nativeint
val int64 : int64 -> int64
val float : float -> float
val bool : unit -> bool
val full_init : int array -> unit
val init : int -> unit
val self_init : unit -> unit
val get_state : unit -> State.t
val set_state : State.t -> unit
