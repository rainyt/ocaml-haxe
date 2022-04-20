exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
(*  var array = OCamlSys.args  *)
let array = ref (Sys.argv) in
(*  for (s in array) {
	trace("%s", s);
}  *)
Array.iter (fun s -> ((
Printf.printf ("%s") (s);
))) !array;
(*  for (s in 0 ... array.length) {
	var value = array[s];
	trace("%i%s\n", s, value);
}  *)
for s = 0 to Array.length !array - 1 do ((
let value = !array.(s) in
Printf.printf ("%i%s\n") (s) (value);
)) done;
(*  trace("%s\n", array[0])  *)
Printf.printf ("%s\n") !array.(0);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


