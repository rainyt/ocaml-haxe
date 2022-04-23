exception STRING of string

let afunc s = try 
ignore (raise (STRING (s)));s;
with STRING ret -> ret;;

let () = let a = "test" in
let b = "README.md" in
let content = (Ocaml_lib_file.getContent b) in
let input = (Stdlib.open_in b) in
(Printf.printf "%s%s\n" "太棒了：" (afunc (Stdlib.input_line input)));
(Printf.printf "%s%s\n" "Goods!" content);
;;

