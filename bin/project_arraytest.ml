exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let toArray list = try (*  trace("test")  *)
Printf.printf ("test");
(*  for (i in 0 ... list.length) {
	trace("%i", list[0]);
	var f = list[0];
	return f;
}  *)
for i = 0 to List.length !list - 1 do ((
Printf.printf ("%i") (List.nth !list 0);
let f = (List.nth !list 0) in
ignore (raise (INT (f)));
)) done;
(*  return 0  *)
0
with INT ret -> ret;;

let call arr = try (*  return arr[0]  *)
(List.nth !arr 0)
with INT ret -> ret;;

let () = let start = Sys.time() in 
(*  var array = [1, 2, 3, 4, 5, 6]  *)
let array = ref [1;2;3;4;5;6] in
(*  array.push(5)  *)
array := !array @ [5];
(*  array.push(6)  *)
array := !array @ [6];
(*  array.push(7)  *)
array := !array @ [7];
(*  array.push(8)  *)
array := !array @ [8];
(*  for (i in 0 ... array.length) {
	trace("%i=%i\n", i, array[i]);
}  *)
for i = 0 to List.length !array - 1 do ((
Printf.printf ("%i=%i\n") (i) (List.nth !array i);
)) done;
(*  var data = call(array)  *)
let data = ref (call array) in
(*  trace("%i", toArray(array))  *)
Printf.printf ("%i") (toArray array);
(*  trace("%i", data)  *)
Printf.printf ("%i") (!data);
(*  array = array.concat([1, 2, 3])  *)
(* array := !array.concat [1;2;3]; *)
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


