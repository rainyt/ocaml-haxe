exception OCAMLCHAR of char
exception STRING of string

let afunc s = try 
ignore (raise (STRING (!s)));!s;
with STRING ret -> ret;;

let () = let start_time = Sys.time() in
let a = ref ("test") in
let b = ref ("README.md") in
let content = ref ((Ocaml_lib_file.getContent (ref !b))) in
let input = ref ((Stdlib.open_in (!b))) in
(Printf.printf "%s%s\n" ("HelloWorld:") ((afunc (ref (Stdlib.input_line (!input))))));
(Printf.printf "%s%s\n" ("Goods!") (!content));
let array = ref (Sys.argv) in
let _g = ref (0) in
let _g1 = ref (!array) in
let break = ref true in while (!break && (!_g < Array.length !_g1)) do
let item = ref (!_g1.(!_g)) in
_g := !_g + 1;
(Printf.printf "%s\n" (!item));
 done;
;
let list = ref ([1;2;3;4;5]) in
(list := !list @ [ (123) ]);
(list := !list @ [ (7) ]);
(list := !list @ [ (8) ]);
(list := !list @ [ (9) ]);
list := (!list @  ([10;11;12]));
let _g2 = ref (0) in
let break = ref true in while (!break && (!_g2 < List.length !list)) do
let i = ref (List.nth !list (!_g2)) in
_g2 := !_g2 + 1;
(Printf.printf "%i\n" (!i));
 done;
;
let content2 = ref ("test") in
content2 := (String.concat (!content2) (["1";"2";"3";"4"]));
(Printf.printf "%s%s\n" ("拼接后：") (!content2));
let content2 = ref ((String.concat ("test") (["123";"123";"123"]))) in
(Printf.printf "%s%s\n" ("拼接字符串：") (!content2));
(Printf.printf "%i\n" ((String.index (!content2) ('3'))));
(Printf.printf "%s\n" ("文本的长度：" ^ (string_of_int (String.length !content))));
let list = ref ((String.split_on_char ('\n') (!content))) in
let _g3 = ref (0) in
let break = ref true in while (!break && (!_g3 < List.length !list)) do
let s = ref (List.nth !list (!_g3)) in
_g3 := !_g3 + 1;
(Printf.printf "%s%s\n" ("切割了？") (!s));
 done;
;
content := (String.map (fun data ->  try 
(Printf.printf "%s%c\n" ("解析") (data));
let a = ref ('\n') in
let break = ref true in while (!break && (true)) do
(Printf.printf "%s\n" ("我看心情退出"));
break := false;
 done;
if (!a = data) then (
ignore (raise (OCAMLCHAR (data)));
 );
ignore (raise (OCAMLCHAR ('2')));'2';
with OCAMLCHAR ret -> ret) (!content));
(Printf.printf "%s%s\n" ("发生了什么？") (!content));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

