exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let toArray list = try (*  trace("test")  *)
Printf.printf "test";
(*  for (i in 0 ... list.length) {
	trace(list[0]);
}  *)
(* For *)
for i = 0 to List.length !list - 1 do ((
Printf.printf (List.nth !list 0);
)) done;
(*  return 0  *)
0
with INT ret -> ret;;

let call arr = try (*  return arr[0]  *)
(List.nth !arr 0)
with INT ret -> ret;;

let () = let start = Sys.time() in 
(*  var array = [1, 2, 3, 4]  *)
let array = ref [1;2;3;4] in
(*  for (i in 0 ... array.length) {
	trace("%i=%i\n", i, array[i]);
}  *)
(* For *)
for i = 0 to List.length !array - 1 do ((
Printf.printf "%i=%i\n" i (List.nth !array i);
)) done;
(*  var data = call(array)  *)
let data = ref (call array) in
(*  trace("%i", data)  *)
Printf.printf "%i" !data;
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


