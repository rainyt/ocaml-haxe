exception STRING of string

let getContent path = try 
let input = (Ocaml_stdlib.openInput path) in
let context = (Ocaml_stdlib.inputLine input) in
(* Not suppor TBinop *)
ignore (raise (STRING (context)));context;
with STRING ret -> ret;;

