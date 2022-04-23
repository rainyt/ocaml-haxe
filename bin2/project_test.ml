exception STRING of string
exception FLOAT of float

let data = ref ("Data var");;

let call1 param1 param2 = try 
let a = ref (!param1) in
let b = ref (!param2) in
(Printf.printf "%s%s\n" "%s\n" !data);
ignore (raise (FLOAT (0. +. (float_of_int !a) +. !b)));0. +. (float_of_int !a) +. !b;
with FLOAT ret -> ret;;

let call2() = try 
ignore (raise (FLOAT (1.)));1.;
with FLOAT ret -> ret;;

let () = let value2 = ref ((call1 (ref 100) (ref 2000.))) in
let i = ref (!value2) in
(Printf.printf "%s%f\n" "%f\n" !i);
let i2 = ref (2) in
i2 := 3;
let str = ref ("String:") in
str := !str ^ (string_of_int !i2);
(Printf.printf "%s%s\n" "%s\n" !str);
let arg = ref (Sys.argv) in
(Printf.printf "%s%i%s\n" "Fight:%i,%s\n" !i2 !arg.(0));
if (!i2 = 3 && !i2 < 2) then
(Printf.printf "%s\n" "true\n") else (Printf.printf "%s\n" "false\n");
(Printf.printf "%s%s\n" "%s\n" !arg.(0));
let _g = ref (0) in
let _g1 = ref (!arg) in
let break = ref true in while (!break && (!_g < List.length !_g1)) do
let s = ref (!_g1.(!_g)) in
_g := !_g + 1;
(Printf.printf "%s%s\n" "%s\n" !s);
;
done;
;
let _g = ref (0) in
let _g1 = ref (List.length !arg) in
let break = ref true in while (!break && (!_g < !_g1)) do
let i3 = ref (_g := !_g + 1) in
(Printf.printf "%s%i\n" "%i\n" !i3);
;
done;
;
let mlfile = ref ((Stdlib.open_in "test2.ml")) in
(Printf.printf "%s%s\n" "%s\n" (Stdlib.input_line !mlfile));
let obj_name = ref ((* expr is null? *)) in
let obj_index = ref ((* expr is null? *)) in
obj_name := "Test";
obj_index := 0;
obj_name := "Test2";
obj_name := !obj_name ^ "Test3";
let strValue = ref ("123") in
let dataValue = ref (1) in
strValue := !strValue ^ (string_of_int !dataValue);
(Printf.printf "%s%s\n" "%s\n" !obj_name);
let floatValue = ref (1.0 +. 2.3 +. (call2 )) in
let floatValue2 = ref (2.3) in
(Printf.printf "%s%f%s\n" "%f%s" !floatValue +. !floatValue2 !strValue ^ " to Haxe!");
let array = ref (["123"]) in
(Printf.printf "%s%s\n" "%s" !array.(0));
(Printf.printf "%s{dynamic}\n" "%s" (List.nth !array 0));
let listLength = ref (List.length !array) in
(Printf.printf "%s%i\n" "%i" !listLength);
;;

