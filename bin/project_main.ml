
let () = let start_time = Sys.time() in
let process = ref (Ocaml_lib_io_process.create_this (ref "ocaml -help")) in
let data = ref ((Stdlib.input_line (match !process.stdin with | Nil -> raise Not_found | VALUE v -> v))) in
(Printf.printf "%s%s\n" ("data=") (!data));
let process2 = ref (Ocaml_lib_io_process.create_this (ref "haxelib -help")) in
let data2 = ref ((Ocaml_lib_io_process.readAllString !process2 (ref ">>>><<<"))) in
(Printf.printf "%s\n" (match (Ocaml_lib_io_process.getProcess2 !process2 ).name with | Nil -> raise Not_found | VALUE v -> v));
let msg = ref (match (Ocaml_lib_io_process.getProcess2 !process2 ).name with | Nil -> raise Not_found | VALUE v -> v ^ "___123__" ^ match (Ocaml_lib_io_process.getProcess2 !process2 ).name with | Nil -> raise Not_found | VALUE v -> v) in
(Printf.printf "%s\n" (!msg));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

