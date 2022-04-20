exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
let array = ref (Sys.argv) in
Array.iter (fun s -> ((
Printf.printf ("%s\n") (s);
))) !array;
Printf.printf ("%s\n") !array.(0);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


