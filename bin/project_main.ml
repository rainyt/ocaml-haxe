exception STRING of string

let () = let start_time = Sys.time() in
let process = ref (Ocaml_lib_io_process.create_this (ref "ocamlc -i ocaml-extern/ocaml/arg.mli")) in
let mliData = ref ((Ocaml_lib_io_process.readAllString !process )) in
let req = ref (Ereg.create_this (ref "[a-zA-Z]+")(ref "g")) in
mliData := (Ereg.replace !req (ref !mliData) (ref "123"));
(Printf.printf "%s\n" (!mliData));
let content = ref ("hello world") in
let req2 = ref (Ereg.create_this (ref "[A-Za-z]")(ref "g")) in
let data = ref ((Ereg.replace !req2 (ref !content) (ref "A"))) in
(Ereg.map !req2 (ref !content) (ref (fun e ->  try 
let v = ref ((Ereg.matched !e (ref 0))) in
(Printf.printf "%s%s\n" ("v=") (!v));
ignore (raise (STRING ("value")));"value";
with STRING ret -> ret)));
(Printf.printf "%s\n" (!data));
let array = ref ([1;2;3;4]) in
(List.iter ((fun data -> let l = ref (!data) in
!l;
)) (!array));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

