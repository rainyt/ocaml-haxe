exception STRING of string

let create cmd args = try 
let text = ref ("") in
let input = ref ((Unix.open_process_in (!cmd))) in
let break = ref true in while (!break && (true)) do
try
text := !text ^ (Stdlib.input_line (!input)) ^ "\n";
with _ -> 
break := false;
();
 done;
ignore (raise (STRING (!text)));!text;
with STRING ret -> ret;;

