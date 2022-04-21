exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
(*  trace("%s", "Hello World")  *)
Printf.printf ("%s") ("Hello World");
(*  var data = ArrayTest.toArray([1, 2, 3])  *)
let data = ref (Project_arraytest.toArray (ref [1;2;3])) in
(*  trace("%i", data)  *)
Printf.printf ("%i") (!data);
(*  if (true) { } else if (false) { } else { }  *)
if (true) then (
) else if (false) then (
) else (
);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


