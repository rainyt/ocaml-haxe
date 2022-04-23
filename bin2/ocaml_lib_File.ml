exception STRING of string

let getContent path = try 
let input = ref (Stdlib.open_in !path) in
let context = ref (Stdlib.input_line !input) in
context := !context ^ (Stdlib.input_line !input);
ignore (raise (STRING (!context)));!context;
with STRING ret -> ret;;

