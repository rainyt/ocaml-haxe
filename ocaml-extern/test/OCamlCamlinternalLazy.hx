type 'a t = 'a lazy_t
exception Undefined
val raise_undefined : Obj.t
external make_forward : Obj.t -> Obj.t -> unit = "caml_obj_make_forward"
val force_lazy_block : 'arg lazy_t -> 'arg
val force_val_lazy_block : 'arg lazy_t -> 'arg
val force : 'arg lazy_t -> 'arg
val force_val : 'arg lazy_t -> 'arg
