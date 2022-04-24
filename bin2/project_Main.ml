exception STRING of string

let afunc s = try 
ignore (raise (STRING (!s)));!s;
with STRING ret -> ret;;

let () = let start_time = Sys.time() in
let a = ref ("test") in
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
let list = ref ([1;2;3;4;5]) in
(list := !list @ [ (123) ]);
(list := !list @ [ (7) ]);
(list := !list @ [ (8) ]);
(list := !list @ [ (9) ]);
list := (!list @  ([10;11;12]));
let _g = ref (0) in
let break = ref true in while (!break && (!_g < List.length !list)) do
let i = ref (List.nth !list (!_g)) in
_g := !_g + 1;
(Printf.printf "%i\n" (!i));
 done;
;
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

