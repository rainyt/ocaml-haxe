exception STRING of string

let getContent path = try 
let input = ref ((Stdlib.open_in (!path))) in
let line = ref ("") in
let break = ref true in while (!break && (true)) do
try
line := !line ^ (Stdlib.input_line (!input)) ^ "\n";
with _ -> 
(Stdlib.close_in (!input));
ignore (raise (STRING (!line)));!line;
() done;
ignore (raise (STRING (!line)));!line;
with STRING ret -> ret;;

