exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let getString () = try (*  var i = 0  *)
let i = ref 0 in
(*  while (true) {
	i++;
	if (i == 10) return "123123(" + i + ")";
	if (i == 8) return "123123(" + i + ")";
	break;
}  *)
let break = ref true in while (!break && (true)) do
i := !i + 1;
(* EIf *)
if (!i = 10) then ignore (raise (STRING ("123123(" ^ (string_of_int !i) ^ ")"))) ;
(* EIf *)
if (!i = 8) then ignore (raise (STRING ("123123(" ^ (string_of_int !i) ^ ")"))) ;
break := false;
done;
(*  return "123!!!"  *)
"123!!!"
with STRING ret -> ret;;

let getParam () = try (*  while (true) {
	return false;
}  *)
let break = ref true in while (!break && (true)) do
ignore (raise (BOOL (false)));
done;
(*  return true  *)
true
with BOOL ret -> ret;;

let () = let start = Sys.time() in 
(*  var i = 0  *)
let i = ref 0 in
(*  while (i < 10) {
	i++;
	trace("%i %b %s\n", i, getParam(), getString());
}  *)
let break = ref true in while (!break && (!i < 10)) do
i := !i + 1;
Printf.printf "%i %b %s\n" !i (getParam ()) (getString ());
done;
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


