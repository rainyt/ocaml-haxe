exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let f1 = ref 1. in
let i1 = ref 1 in
let f2 = ref (!f1 +. !f1) in
Printf.printf "f2=%f\n" !f2;
f2 := !f2 +. (!f1 *. !f1);
Printf.printf "f2=%f\n" !f2;
f2 := !f2 /. (!f1 /. !f1);
Printf.printf "f2=%f\n" !f2;
f2 := !f2 *. (!f1 -. !f1 +. 1.);
Printf.printf "f2=%f\n" !f2;
f2 := !f2 -. (!f1 -. 0.);
f2 := !f2 +. 1.;
f2 := !f2 -. 1.;
Printf.printf "f2=%f\n" !f2;
let i2 = ref (!i1 + !i1) in
Printf.printf "i2=%i\n" !i2;
i2 := !i2 + (!i1 * !i1);
Printf.printf "i2=%i\n" !i2;
i2 := !i2 * (!i1 - !i1 + 1);
Printf.printf "i2=%i\n" !i2;
i2 := !i2 - (!i1 - 0);
i2 := !i2 + 1;
i2 := !i2 - 1;
Printf.printf "i2=%i\n" !i2;
let fi = ref (!f2 +. (float_of_int !i2)) in
Printf.printf "fi=%f\n" !fi;
let ifv = ref ((float_of_int !i2) *. !f2) in
Printf.printf "ifv=%f\n" !ifv;
;;


