exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
(*  var f1 = 1.  *)
let f1 = ref 1. in
(*  var i1 = 1  *)
let i1 = ref 1 in
(*  var f2 = f1 + f1  *)
let f2 = ref (!f1 +. !f1) in
(*  trace("f2=%f\n", f2)  *)
Printf.printf ("f2=%f\n") (!f2);
(*  f2 += f1 * f1  *)
f2 := !f2 +. (!f1 *. !f1);
(*  trace("f2=%f\n", f2)  *)
Printf.printf ("f2=%f\n") (!f2);
(*  f2 /= f1 / f1  *)
f2 := !f2 /. (!f1 /. !f1);
(*  trace("f2=%f\n", f2)  *)
Printf.printf ("f2=%f\n") (!f2);
(*  f2 *= f1 - f1 + 1.  *)
f2 := !f2 *. (!f1 -. !f1 +. 1.);
(*  trace("f2=%f\n", f2)  *)
Printf.printf ("f2=%f\n") (!f2);
(*  f2 -= f1 - 0.  *)
f2 := !f2 -. (!f1 -. 0.);
(*  f2++  *)
f2 := !f2 +. 1.;
(*  f2--  *)
f2 := !f2 -. 1.;
(*  trace("f2=%f\n", f2)  *)
Printf.printf ("f2=%f\n") (!f2);
(*  var i2 = i1 + i1  *)
let i2 = ref (!i1 + !i1) in
(*  trace("i2=%i\n", i2)  *)
Printf.printf ("i2=%i\n") (!i2);
(*  i2 += i1 * i1  *)
i2 := !i2 + (!i1 * !i1);
(*  trace("i2=%i\n", i2)  *)
Printf.printf ("i2=%i\n") (!i2);
(*  i2 *= i1 - i1 + 1  *)
i2 := !i2 * (!i1 - !i1 + 1);
(*  trace("i2=%i\n", i2)  *)
Printf.printf ("i2=%i\n") (!i2);
(*  i2 -= i1 - 0  *)
i2 := !i2 - (!i1 - 0);
(*  i2++  *)
i2 := !i2 + 1;
(*  i2--  *)
i2 := !i2 - 1;
(*  trace("i2=%i\n", i2)  *)
Printf.printf ("i2=%i\n") (!i2);
(*  var fi = f2 + i2  *)
let fi = ref (!f2 +. (float_of_int !i2)) in
(*  trace("fi=%f\n", fi)  *)
Printf.printf ("fi=%f\n") (!fi);
(*  var ifv = i2 * f2  *)
let ifv = ref ((float_of_int !i2) *. !f2) in
(*  trace("ifv=%f\n", ifv)  *)
Printf.printf ("ifv=%f\n") (!ifv);
(*  var div = i2 / i2  *)
let div = ref ((float_of_int !i2) /. (float_of_int !i2)) in
(*  trace("div=%f", div)  *)
Printf.printf ("div=%f") (!div);
(*  var s1 = "test"  *)
let s1 = ref "test" in
(*  var s2 = f1 + s1  *)
let s2 = ref ((string_of_float !f1) ^ !s1) in
(*  trace("%s", s2)  *)
Printf.printf ("%s") (!s2);
(*  var loop = 10000000  *)
let loop = ref 10000000 in
(*  while (loop > 0) {
	loop--;
}  *)
let break = ref true in while (!break && (!loop > 0)) do
loop := !loop - 1;
done;
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


