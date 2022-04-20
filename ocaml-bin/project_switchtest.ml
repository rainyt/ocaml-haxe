exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
let i = ref 0 in
let _ = (match (!i) with
| 0 -> (
Printf.printf ("%i\n") (!i);
let _ = (match (!i) with
| 2 -> (
Printf.printf ("%i") (!i);
) 
| _->()) in
Printf.printf ("%i") (!i);
) 
| 1 -> (
Printf.printf ("%i\n") (!i);
) 
| 2 -> (
Printf.printf ("%i\n") (!i);
) 
| _->()) in
let _ = (match (!i + 1) with
| 2 -> (
Printf.printf ("%i\n") (!i);
) 
| _->((
Printf.printf ("default:%i\n") (!i);
))) in
let _ = (match ("A") with
| "A" -> (
Printf.printf ("%s") ("A");
) 
| "B" -> (
Printf.printf ("%s") ("B");
) 
| "C" -> (
Printf.printf ("%s") ("C");
) 
| _->()) in
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


