exception NULL_ERROR

type t_string = 
| Nil
| OBJ of string
type t_stdlib_out_channel = 
| Nil
| OBJ of Stdlib.out_channel
type t_stdlib_in_channel = 
| Nil
| OBJ of Stdlib.in_channel

type process_this={
  mutable stdin:t_stdlib_in_channel;
  mutable stdout:t_stdlib_out_channel;
  mutable data:t_string;
}
let create_this cmd = let this = {
stdin=Nil;
stdout=Nil;
data=Nil;
} in

this.stdin <- OBJ (Unix.open_process_in (!cmd));

(* let data = match this.stdin with
| OBJ obj -> obj | Nil  -> raise NULL_ERROR in *)

(* let value = input_line data in
Printf.printf "%s" value; *)
Printf.printf "123123";
Printf.printf "123123%s" (input_line (match this.stdin with
| OBJ obj -> obj | Nil  -> raise NULL_ERROR));

this;;



let () = let start_time = Sys.time() in
let process = ref (Ocaml_lib_io_process.create_this (ref "ocaml -help")) in
let data = ref ((Stdlib.input_line (match !process.stdin with | Nil -> raise Not_found | VALUE v -> v))) in
(Printf.printf "%s%s\n" ("data=") (!data));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

