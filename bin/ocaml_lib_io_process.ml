exception OCAML_LIB_IO_PROCESS2_PROCESS2_THIS of Ocaml_lib_io_process2.process2_this
exception STRING of string
type t_ocaml_lib_io_process2_process2_this = 
| Nil
| VALUE of Ocaml_lib_io_process2.process2_this
type t_stdlib_in_channel = 
| Nil
| VALUE of Stdlib.in_channel

type process_this={
mutable stdin:t_stdlib_in_channel;
mutable process2:t_ocaml_lib_io_process2_process2_this;
}
let create_this cmd = let this = {
stdin=Nil;
process2=Nil;
} in
this.stdin <- VALUE (Unix.open_process_in (!cmd));
this.process2 <- VALUE Ocaml_lib_io_process2.create_this ;
this;;

let readAllString this msg = try 
let lines = ref ("") in
let p = ref (Ocaml_lib_io_process2.create_this ) in
(Printf.printf "%s\n" (match !p.name with | Nil -> raise Not_found | VALUE v -> v));
let break = ref true in while (!break && (true)) do
try
lines := !lines ^ (Stdlib.input_line (match this.stdin with | Nil -> raise Not_found | VALUE v -> v)) ^ "\n";
with _ -> 
ignore (raise (STRING (!msg ^ !lines ^ !msg)));
();
 done;
ignore (raise (STRING (!msg ^ !lines ^ !msg)));!msg ^ !lines ^ !msg;
with STRING ret -> ret;;

let getProcess2 this = try 
ignore (raise (OCAML_LIB_IO_PROCESS2_PROCESS2_THIS (match this.process2 with | Nil -> raise Not_found | VALUE v -> v)));match this.process2 with | Nil -> raise Not_found | VALUE v -> v;
with OCAML_LIB_IO_PROCESS2_PROCESS2_THIS ret -> ret;;

