exception STRING of string

let afunc s = try 
ignore (raise (STRING (s)));s;
with STRING ret -> ret;;

let () = let a = "test" in
let b = "README.md" in
let content = (Ocaml_lib_file.getContent b) in
let input = (Ocaml_stdlib.openInput b) in
(Printf.printf "%s%s\n" "太棒了：" (Project_main.afunc a));
(Printf.printf "%s%s\n" "Goods!" content);
;;

