exception STRING of string

let afunc s = try 
ignore (raise (STRING (!s)));!s;
with STRING ret -> ret;;

let () = let a = ref "test" in
let b = ref "README.md" in
let content = ref (Ocaml_lib_file.getContent (ref !b)) in
let input = ref (Stdlib.open_in !b) in
(Printf.printf "%s%s\n" "HelloWorld:" (afunc (ref (Stdlib.input_line !input))));
(Printf.printf "%s%s\n" "Goods!" !content);
;;
