type testdata = {mutable index:int;mutable name:string;}

let call1 = let a=ref 1 in
let b=ref 2 in
0 + !a + !b
;;

let () = let value2=ref (call1) in
let i=ref !value2 in
Printf.printf "%i\n" !i;
let i2=ref 2 in
i2 := 3;
let str=ref "String:" in
str := !str ^ (string_of_int !i2);
Printf.printf "%s\n" !str;
let arg=ref (Sys.argv) in
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
let mlfile=ref (Stdlib.open_in "test2.ml") in
Printf.printf "%s\n" (Stdlib.input_line !mlfile);
let obj={name="Test";index=0;} in
obj.name <- "Test2";
Printf.printf "%s\n" obj.name;
;;


