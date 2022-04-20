exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let toArray list = try Printf.printf ("test");
for i = 0 to List.length !list - 1 do ((
Printf.printf ("%i") (List.nth !list 0);
let f = (List.nth !list 0) in
ignore (raise (INT (f)));
)) done;
0
with INT ret -> ret;;

let call arr = try (List.nth !arr 0)
with INT ret -> ret;;

let () = let start = Sys.time() in 
let array = ref [1;2;3;4] in
array := !array @ [5];
array := !array @ [6];
array := !array @ [7];
array := !array @ [8];
for i = 0 to List.length !array - 1 do ((
Printf.printf ("%i=%i\n") (i) (List.nth !array i);
)) done;
let data = ref (call array) in
Printf.printf ("%i") (toArray array);
Printf.printf ("%i") (!data);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


