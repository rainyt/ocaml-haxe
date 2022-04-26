exception STRING of string

let call() = try 
let break = ref true in while (!break && (true)) do
ignore (raise (STRING ("false")));
 done;
ignore (raise (STRING ("true")));"true";
with STRING ret -> ret;;

let () = let start_time = Sys.time() in
let data = ref ("1,2,3,4,5,6") in
let array = ref ((String.split_on_char (',') (!data))) in
let _g = ref (0) in
let break = ref true in while (!break && (!_g < List.length !array)) do
let s = ref (List.nth !array (!_g)) in
_g := !_g + 1;
(Printf.printf "%s%s\n" ("拆分后：") (!s));
 done;
;
(Printf.printf "%s%i%s\n" ("文本的长度:") (String.length !data) ((call ())));
(Printf.printf "%s%s\n" ("文本内容：") ((Ocaml_lib_file.getContent (ref "build.hxml"))));
(Ocaml_lib_file.copy (ref "build.hxml") (ref "build-copy.hxml"));
(Ocaml_lib_file.copy (ref "../test.mp4") (ref "../test-2.mp4"));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

