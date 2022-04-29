
let () = let start_time = Sys.time() in
let process = ref (Ocaml_lib_io_process.create_this (ref "ocaml -help")) in
let data = ref ((Stdlib.input_line (match !process.stdin with | Nil -> raise Not_found | VALUE v -> v))) in
(Printf.printf "%s%s\n" ("data=") (!data));
let process2 = ref (Ocaml_lib_io_process.create_this (ref "haxelib -help")) in
(Printf.printf "%s%s\n" ("__11 ") ((Ocaml_lib_io_process.readAllString !process2 (ref "Message:"))));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

