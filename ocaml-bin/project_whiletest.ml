exception BREAK;;
exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let getString () = try let i = ref 0 in
while true do
i := !i + 1;
(* EIf *)
if (!i = 10) then ignore (raise (STRING ("123123(" ^ (string_of_int !i) ^ ")"))) ;
(* EIf *)
if (!i = 8) then ignore (raise (STRING ("123123(" ^ (string_of_int !i) ^ ")"))) ;
done;
"123"
with STRING ret -> ret;;

let getParam () = try while true do
ignore (raise (BOOL (false)));
done;
true
with BOOL ret -> ret;;

let () = let i = ref 0 in
while !i < 10 do
i := !i + 1;
Printf.printf "%i %b %s" !i (getParam ()) (getString ());
done;
;;


