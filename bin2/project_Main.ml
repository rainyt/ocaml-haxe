exception STRING of string
exception FLOAT of float

let afunc s = try 
ignore (raise (STRING (!s)));!s;
with STRING ret -> ret;;

let () = let a = ref ("test") in
let b = ref ("README.md") in
let content = ref ((Ocaml_lib_file.getContent (ref !b))) in
let input = ref ((Stdlib.open_in (!b))) in
(Printf.printf "%s%s\n" ("HelloWorld:") ((afunc (ref (Stdlib.input_line (!input))))));
(Printf.printf "%s%s\n" ("Goods!") (!content));
let array = ref (Sys.argv) in
let _g = ref (0) in
let _g1 = ref (!array) in
let break = ref true in while (!break && (!_g < Array.length !_g1)) do
let item = ref (!_g1.(!_g)) in
_g := !_g + 1;
(Printf.printf "%s\n" (!item));
 done;
;
;;

