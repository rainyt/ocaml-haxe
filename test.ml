type testdata = {mutable index:int;mutable name:string;}

let data = ref "Data var";;

let call1 = let a = ref 1 in
let b = ref 2 in
Printf.printf "%s\n" !data;
0 + !a + !b
;;

let call2 = 1.
;;

let () = let value2 = ref (call1) in
let i = ref !value2 in
Printf.printf "%i\n" !i;
let i2 = ref 2 in
i2 := 3;
let str = ref "String:" in
str := !str ^ (string_of_int !i2);
Printf.printf "%s\n" !str;
let arg = ref (Sys.argv) in
Printf.printf "Fight:%i,%s\n" !i2 !arg.(0);
(* EIf *)
if (!i2 = 3 && !i2 < 2) then (
Printf.printf "true\n"
) else (
Printf.printf "false\n"
);
Printf.printf "%s\n" !arg.(0);
(* For *)
Array.iter (fun s -> ((
Printf.printf "%s\n" s
))) !arg;
(* For *)
for i3 = 0 to Array.length !arg do ((
Printf.printf "%i\n" i3
)) done;;
let mlfile = ref (Stdlib.open_in "test2.ml") in
Printf.printf "%s\n" (Stdlib.input_line !mlfile);
let obj = ref {name="Test";index=0;} in
!obj.name <- "Test2";
!obj.name <- String.concat "" [!obj.name;"Test3"];
let strValue = ref "123" in
let dataValue = ref 1 in
strValue := String.concat "" [!strValue;(string_of_int !dataValue)];
Printf.printf "%s\n" !obj.name;
let floatValue = ref (1.0 +. (2.3 +. call2)) in
let floatValue2 = ref 2.3 in
Printf.printf "%f%s" (!floatValue +. !floatValue2) (!strValue ^ " to Haxe!");
let array = ref ["123"] in
Printf.printf "%s" (List.nth !array 0);
Printf.printf "%s" (List.nth !array 0);
;;


