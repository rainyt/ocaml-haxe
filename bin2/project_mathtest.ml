exception STRING of string
exception FLOAT of float

let () = let f1 = ref (1.) in
let i1 = ref (1) in
let f2 = ref (!f1 +. !f1) in
(Printf.printf "%s%f\n" ("f2=") (!f2));
f2 := !f2 +. !f1 *. !f1;
(Printf.printf "%s%f\n" ("f2=") (!f2));
f2 := !f2 /. !f1 /. !f1;
(Printf.printf "%s%f\n" ("f2=") (!f2));
f2 := !f2 *. !f1 -. !f1 +. 1.;
(Printf.printf "%s%f\n" ("f2=") (!f2));
f2 := !f2 -. !f1;
f2 := !f2 +. 1;
f2 := !f2 -. 1;
(Printf.printf "%s%f\n" ("f2=") (!f2));
let i2 = ref (!i1 + !i1) in
(Printf.printf "%s%i\n" ("i2=") (!i2));
i2 := !i2 + !i1 * !i1;
(Printf.printf "%s%i\n" ("i2=") (!i2));
i2 := !i2 * !i1 - !i1 + 1;
(Printf.printf "%s%i\n" ("i2=") (!i2));
i2 := !i2 - !i1;
i2 := !i2 + 1;
i2 := !i2 - 1;
(Printf.printf "%s%i\n" ("i2=") (!i2));
let fi = ref (!f2 +. (float_of_int !i2)) in
(Printf.printf "%s%f\n" ("fi=") (!fi));
let ifv = ref ((float_of_int !i2) *. !f2) in
(Printf.printf "%s%f\n" ("ifv=") (!ifv));
let div = ref ((float_of_int !i2) /. (float_of_int !i2)) in
(Printf.printf "%s%f\n" ("div=") (!div));
let s1 = ref ("test") in
let s2 = ref ((string_of_float !f1) ^ !s1) in
(Printf.printf "%s\n" (!s2));
let loop = ref (10000000) in
let break = ref true in while (!break && (!loop > 0)) do
loop := !loop - 1done;
;;

