type 'a t = 'a CamlinternalLazy.t
exception Undefined
external make_forward : 'a -> 'a lazy_t = "caml_lazy_make_forward"
external force : 'a t -> 'a = "%lazy_force"
val force_val : 'a lazy_t -> 'a
val from_fun : (unit -> 'arg) -> 'arg t
val from_val : 'arg -> 'arg t
val is_val : 'arg t -> bool
val lazy_from_fun : (unit -> 'a) -> 'a t
val lazy_from_val : 'a -> 'a t
val lazy_is_val : 'a t -> bool
