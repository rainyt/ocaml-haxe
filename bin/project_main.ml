exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let afunc s = try (*  return s  *)
!s
with STRING ret -> ret;;

let () = let start = Sys.time() in 
(*  var a = "test"  *)
let a = ref "test" in
(*  var b = "README.md"  *)
let b = ref "README.md" in
(*  var content = File.getContent(b)  *)
let content = ref (Ocaml_lib_file.getContent (ref !b)) in
(*  var input = Stdlib.openInput(b)  *)
let input = ref (Stdlib.open_in (!b)) in
(*  trace("%s\n", afunc(a))  *)
Printf.printf ("%s\n") (afunc (ref !a));
(*  trace("%s", content)  *)
Printf.printf ("%s") (!content);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


