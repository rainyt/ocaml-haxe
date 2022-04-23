exception STRING of string

let getContent path = try 
let input = (Stdlib.open_in path) in
let context = (Stdlib.input_line input) in
(* Not suppor TBinop *)
ignore (raise (STRING (context)));context;
with STRING ret -> ret;;

