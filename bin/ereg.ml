exception STRING of string
type t_string = 
| Nil
| VALUE of string
type t_str_regexp = 
| Nil
| VALUE of Str.regexp

type ereg_this={
mutable ocamlEreg:t_str_regexp;
mutable mode:t_string;
}
let create_this a1 b1 = let this = {
ocamlEreg=Nil;
mode=Nil;
} in
(Printf.printf "%s%s%s%s\n" ("create Ereg:") (!a1) (",") (!b1));
this.ocamlEreg <- VALUE (Str.regexp (!a1));
this.mode <- VALUE !b1;
this;;

let replace this s by = try 
if (match this.mode with | Nil -> raise Not_found | VALUE v -> v = "g") then (
let data = ref ((Str.global_replace (match this.ocamlEreg with | Nil -> raise Not_found | VALUE v -> v) (!by) (!s))) in
ignore (raise (STRING (!data)));
 );
ignore (raise (STRING ((Str.replace_first (match this.ocamlEreg with | Nil -> raise Not_found | VALUE v -> v) (!by) (!s)))));(Str.replace_first (match this.ocamlEreg with | Nil -> raise Not_found | VALUE v -> v) (!by) (!s));
with STRING ret -> ret;;

let map this s cb = (!cb (ref this));
;;

let matched this index = try 
ignore (raise (STRING ("")));"";
with STRING ret -> ret;;

