external make_forward : Obj.t -> Obj.t -> unit = "caml_obj_make_forward"
type shape = Function | Lazy | Class | Module of shape array | Value of Obj.t
val overwrite : Obj.t -> Obj.t -> unit
val overwrite_closure : Obj.t -> Obj.t -> unit
val init_mod : string * int * int -> shape -> Obj.t
val update_mod : shape -> Obj.t -> Obj.t -> unit
