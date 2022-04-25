external register_named_value : string -> Obj.t -> unit
  = "caml_register_named_value"
val register : string -> 'a -> unit
val register_exception : string -> exn -> unit
