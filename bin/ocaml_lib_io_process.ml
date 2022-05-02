exception STRING of string
type t_stdlib_in_channel = 
| Nil
| VALUE of Stdlib.in_channel

type process_this={
mutable stdin:t_stdlib_in_channel;
}
let create_this cmd = let this = {
stdin=Nil;
} in
this.stdin <- VALUE (Unix.open_process_in (!cmd));
this;;

let readAllString this = try 
let lines = ref ("") in
let break = ref true in while (!break && (true)) do
try
lines := !lines ^ (Stdlib.input_line (match this.stdin with | Nil -> raise Not_found | VALUE v -> v)) ^ "\n";
with _ -> 
ignore (raise (STRING (!lines)));
() done;
ignore (raise (STRING (!lines)));!lines;
with STRING ret -> ret;;

