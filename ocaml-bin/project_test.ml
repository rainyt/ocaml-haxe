exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

type testdata = {mutable index:int;mutable name:string;}

let data = ref "Data var";;

let call1 () = try (*  var a = 1  *)
let a = ref 1 in
(*  var b = 2  *)
let b = ref 2 in
(*  trace("%s\n", data)  *)
Printf.printf "%s\n" !data;
(*  return 0 + a + b  *)
0 + !a + !b
with INT ret -> ret;;

let call2 () = try (*  return 1.  *)
1.
with FLOAT ret -> ret;;

let () = let start = Sys.time() in 
(*  var value2 = call1()  *)
let value2 = ref (call1 ()) in
(*  var i = value2  *)
let i = ref !value2 in
(*  trace("%i\n", i)  *)
Printf.printf "%i\n" !i;
(*  var i2 = 2  *)
let i2 = ref 2 in
(*  i2 = 3  *)
i2 := 3;
(*  var str = "String:"  *)
let str = ref "String:" in
(*  str = str + i2  *)
str := !str ^ (string_of_int !i2);
(*  trace("%s\n", str)  *)
Printf.printf "%s\n" !str;
(*  var arg = OCamlSys.args  *)
let arg = ref (Sys.argv) in
(*  trace("Fight:%i,%s\n", i2, arg[0])  *)
Printf.printf "Fight:%i,%s\n" !i2 !arg.(0);
(*  if (i2 == 3 && i2 < 2) {
	trace("true\n");
} else {
	trace("false\n");
}  *)
(* EIf *)
if (!i2 = 3 && !i2 < 2) then (
Printf.printf "true\n";
) else (
Printf.printf "false\n";
);
(*  trace("%s\n", arg[0])  *)
Printf.printf "%s\n" !arg.(0);
(*  for (s in arg) {
	trace("%s\n", s);
}  *)
(* For *)
Array.iter (fun s -> ((
Printf.printf "%s\n" s;
))) !arg;
(*  for (i3 in 0 ... arg.length) {
	trace("%i\n", i3);
}  *)
(* For *)
for i3 = 0 to Array.length !arg do ((
Printf.printf "%i\n" i3;
)) done;
(*  var mlfile = Stdlib.openInput("test2.ml")  *)
let mlfile = ref (Stdlib.open_in "test2.ml") in
(*  trace("%s\n", Stdlib.inputLine(mlfile))  *)
Printf.printf "%s\n" (Stdlib.input_line !mlfile);
(*  var obj:TestData = { name : "Test", index : 0 }  *)
let obj = ref {name="Test";index=0;} in
(*  obj.name = "Test2"  *)
!obj.name <- "Test2";
(*  obj.name += "Test3"  *)
!obj.name <- String.concat "" [!obj.name;"Test3"];
(*  var strValue = "123"  *)
let strValue = ref "123" in
(*  var dataValue = 1  *)
let dataValue = ref 1 in
(*  strValue += dataValue  *)
strValue := String.concat "" [!strValue;(string_of_int !dataValue)];
(*  trace("%s\n", obj.name)  *)
Printf.printf "%s\n" !obj.name;
(*  var floatValue = 1.0 + (2.3 + call2())  *)
let floatValue = ref (1.0 +. (2.3 +. call2 ())) in
(*  var floatValue2 = 2.3  *)
let floatValue2 = ref 2.3 in
(*  trace("%f%s", floatValue + floatValue2, strValue + " to Haxe!")  *)
Printf.printf "%f%s" (!floatValue +. !floatValue2) (!strValue ^ " to Haxe!");
(*  var array = ["123"]  *)
let array = ref ["123"] in
(*  trace("%s", array[0])  *)
Printf.printf "%s" (List.nth !array 0);
(*  trace("%s", OCamlList.at(array, 0))  *)
Printf.printf "%s" (List.nth !array 0);
(*  var listLength = array.length  *)
let listLength = ref (List.length !array) in
(*  trace("%i", listLength)  *)
Printf.printf "%i" !listLength;
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


