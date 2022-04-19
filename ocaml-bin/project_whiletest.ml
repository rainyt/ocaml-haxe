exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let getString () = try let i = ref 0 in
let break = ref true in while (!break && (true)) do
i := !i + 1;
(* EIf *)
if (!i = 10) then ignore (raise (STRING ("123123(" ^ (string_of_int !i) ^ ")"))) ;
(* EIf *)
if (!i = 8) then ignore (raise (STRING ("123123(" ^ (string_of_int !i) ^ ")"))) ;
break := false;
done;
"123!!!"
with STRING ret -> ret;;

let getParam () = try let break = ref true in while (!break && (true)) do
ignore (raise (BOOL (false)));
done;
true
with BOOL ret -> ret;;

let () = let i = ref 0 in
let break = ref true in while (!break && (!i < 10)) do
i := !i + 1;
Printf.printf "%i %b %s\n" !i (getParam ()) (getString ());
done;
;;


