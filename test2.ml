let call1 = 0;;
let () = let value2=ref (call1) in
let i=ref !value2 in
Printf.printf "%i" !i;
let i2=ref 2 in
Printf.printf "Fight:%i" !i2;
Printf.printf "%s" Sys.argv.(0);
;;
