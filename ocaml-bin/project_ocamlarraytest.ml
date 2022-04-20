exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
(*  var array = OCamlSys.args  *)
let array = ref (Sys.argv) in
(*  for (s in array) {
	trace("%s\n", s);
}  *)
List.iter (fun s -> ((
Printf.printf ("%s\n") (s);
))) !array;
(*  trace("%s\n", array[0])  *)
Printf.printf ("%s\n") !array.(0);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


