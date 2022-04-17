let call1 = 	let a=ref 1 in
	let b=ref 2 in
	0 + !a + !b
;;
let () = 	let value2=ref (call1) in
	let i=ref !value2 in
	Printf.printf "%i" !i;
	let i2=ref 2 in
	i2 := 3;
	let arg=ref Sys.argv.(0) in
	Printf.printf "Fight:%i,%s" !i2 !arg;
	(* todo EIf *);
;;
