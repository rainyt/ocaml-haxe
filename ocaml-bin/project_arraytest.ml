exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let toArray list = try (*  for (i in 0 ... list.length) {
	trace(list[0]);
	var f = list[0];
	return f;
}  *)
(* For *)
for i = 0 to List.length !list do ((
Printf.printf (List.nth !list 0);
let f = (List.nth !list 0) in
ignore (raise (null (f)));
)) done;
(*  return list[0]  *)
(List.nth !list 0)
with INT ret -> ret;;

let () = let start = Sys.time() in 
(*  var array = []  *)
let array = ref [] in
(*  toArray(array)  *)
toArray !array;
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


