exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

type testdata = {mutable index:int;mutable name:string;}

let data = ref "Data var";;

let call1 param1 param2 = try let a = ref !param1 in
let b = ref !param2 in
Printf.printf ("%s\n") (!data);
0. +. (float_of_int !a) +. !b
with FLOAT ret -> ret;;

let call2 () = try 1.
with FLOAT ret -> ret;;

let () = let start = Sys.time() in 
let value2 = ref (call1 (ref 100) (ref 2000.)) in
let i = ref !value2 in
Printf.printf ("%f\n") (!i);
let i2 = ref 2 in
i2 := 3;
let str = ref "String:" in
str := !str ^ (string_of_int !i2);
Printf.printf ("%s\n") (!str);
let arg = ref (Sys.argv) in
Printf.printf ("Fight:%i,%s\n") (!i2) !arg.(0);
if (!i2 = 3 && !i2 < 2) then (
Printf.printf ("true\n");
) else (
Printf.printf ("false\n");
);
Printf.printf ("%s\n") !arg.(0);
List.iter (fun s -> ((
Printf.printf ("%s\n") (s);
))) !arg;
for i3 = 0 to Array.length !arg - 1 do ((
Printf.printf ("%i\n") (i3);
)) done;
let mlfile = ref (Stdlib.open_in ("test2.ml")) in
Printf.printf ("%s\n") (Stdlib.input_line (!mlfile));
let obj = ref {name="Test";index=0;} in
!obj.name <- "Test2";
!obj.name <- String.concat "" [!obj.name;"Test3"];
let strValue = ref "123" in
let dataValue = ref 1 in
strValue := String.concat "" [!strValue;(string_of_int !dataValue)];
Printf.printf ("%s\n") !obj.name;
let floatValue = ref (1.0 +. (2.3 +. call2 ())) in
let floatValue2 = ref 2.3 in
Printf.printf ("%f%s") (!floatValue +. !floatValue2) (!strValue ^ " to Haxe!");
let array = ref ["123"] in
Printf.printf ("%s") (List.nth !array 0);
Printf.printf ("%s") (List.nth !array (0));
let listLength = ref (List.length !array) in
Printf.printf ("%i") (!listLength);
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


