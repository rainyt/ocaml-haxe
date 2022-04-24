exception FLOAT of float

let data = ref ("Data var");;

let call1 param1 param2 = try 
let a = ref (!param1) in
let b = ref (!param2) in
(Printf.printf "%s%s\n" ("%s\n") (!data));
ignore (raise (FLOAT (0. +. (float_of_int !a) +. !b)));0. +. (float_of_int !a) +. !b;
with FLOAT ret -> ret;;

let call2() = try 
ignore (raise (FLOAT (1.)));1.;
with FLOAT ret -> ret;;

let () = let start_time = Sys.time() in
let value2 = ref ((call1 (ref 100) (ref 2000.))) in
let i = ref (!value2) in
(Printf.printf "%f\n" (!i));
let i2 = ref (2) in
i2 := 3;
let str = ref ("String:") in
str := !str ^ (string_of_int !i2);
(Printf.printf "%s\n" (!str));
let arg = ref (Sys.argv) in
(Printf.printf "%s%i%s\n" ("Fight:") (!i2) (!arg.(0)));
if (!i2 = 3 && !i2 < 2) then (
(Printf.printf "%s\n" ("true")) )else((Printf.printf "%s\n" ("false")));
(Printf.printf "%s\n" (!arg.(0)));
let _g = ref (0) in
let _g1 = ref (!arg) in
let break = ref true in while (!break && (!_g < Array.length !_g1)) do
let s = ref (!_g1.(!_g)) in
_g := !_g + 1;
(Printf.printf "%s\n" (!s));
 done;
;
let _g = ref (0) in
let _g1 = ref (Array.length !arg) in
let break = ref true in while (!break && (!_g < !_g1)) do
let i3 = ref (!_g + 1) in
(Printf.printf "%i\n" (!i3));
break := false;
 done;
;
let mlfile = ref ((Stdlib.open_in ("test2.ml"))) in
(Printf.printf "%s\n" ((Stdlib.input_line (!mlfile))));
let strValue = ref ("123") in
let dataValue = ref (1) in
strValue := !strValue ^ (string_of_int !dataValue);
let floatValue = ref (1.0 +. 2.3 +. (call2 ())) in
let floatValue2 = ref (2.3) in
(Printf.printf "%f%s\n" (!floatValue +. !floatValue2) (!strValue ^ " to Haxe!"));
let array = ref (["123"]) in
(Printf.printf "%s\n" (List.nth !array (0)));
(Printf.printf "%s\n" ((List.nth (!array) (0))));
let listLength = ref (List.length !array) in
(Printf.printf "%i\n" (!listLength));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

