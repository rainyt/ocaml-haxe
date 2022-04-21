exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
(*  trace("%s", "Hello World")  *)
Printf.printf ("%s") ("Hello World");
(*  var data = ArrayTest.toArray([1, 2, 3])  *)
let data = ref (ArrayTest.toArray [1;2;3]) in
(*  trace("%i", data)  *)
Printf.printf ("%i") (!data);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


