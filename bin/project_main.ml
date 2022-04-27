exception STRING of string

let call() = try 
let break = ref true in while (!break && (true)) do
ignore (raise (STRING ("false"))) done;
ignore (raise (STRING ("true")));"true";
with STRING ret -> ret;;

let () = let start_time = Sys.time() in
let data = ref ("1,2,3,4,5,6") in
let array = ref ((String.split_on_char (',') (!data))) in
let _g = ref (0) in
let break = ref true in while (!break && (!_g < List.length !array)) do
let s = ref (List.nth !array (!_g)) in
_g := !_g + 1;
(Printf.printf "%s%s\n" ("split:") (!s));
 done;
;
(Printf.printf "%s%i%s\n" ("data.length=:") (String.length !data) ((call ())));
(Printf.printf "%s%s\n" ("data=") ((Ocaml_lib_file.getContent (ref "build.hxml"))));
(Ocaml_lib_file.copy (ref "build.hxml") (ref "build-copy.hxml"));
if ((Ocaml_lib_filesystem.exists (ref "../test-2.mp4"))) then (
(Printf.printf "%s\n" ("exists")) )else((Ocaml_lib_file.copy (ref "../test.mp4") (ref "../test-2.mp4")));
(Printf.printf "%s\n" ("copy success"));
let files = ref ((Ocaml_lib_filesystem.readDirectory (ref "./"))) in
let _g = ref (0) in
let _g1 = ref (!files) in
let break = ref true in while (!break && (!_g < Array.length !_g1)) do
let s = ref (!_g1.(!_g)) in
_g := !_g + 1;
let stat = ref ((Ocaml_lib_filesystem.stat (ref !s))) in
(Printf.printf "%s%s%s%f\n" ("file:") (!s) ("   create time:") (!stat.st_ctime));
 done;
;
let input = ref ((Unix.open_process_in ("echo '123123'"))) in
let data = ref ((Stdlib.input_line (!input))) in
(Printf.printf "%s%s\n" ("read") (!data));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

