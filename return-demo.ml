exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let getParam () = try while true do
 ignore(raise (BOOL false));
done;
true;
with BOOL r -> r
;;

let getParam_return () = try 
  getParam()
with BOOL r -> r;;

let () = let i = ref 0 in
while !i < 10 do
i := !i + 1;
Printf.printf "%i %b" !i (getParam ());
done;
;;


