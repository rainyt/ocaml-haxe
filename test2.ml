let call1 = let a=ref 1 in
let b=ref 2 in
0 + !a + !b
;;

let () = let value2=ref (call1) in
let i=ref !value2 in
Printf.printf "%i\n" !i;
let i2=ref 2 in
i2 := 3;
let arg=ref (Sys.argv) in
Printf.printf "Fight:%i,%s\n" !i2 !arg.(0);
if (!i2 = 3 && !i2 < 2) then (
Printf.printf "true\n"
) else (
Printf.printf "false\n"
);
Printf.printf "%s" !arg.(0);
Array.iter (fun data -> (print_endline "";)) !arg;
;;

