
let () = let start_time = Sys.time() in
let msg = ref ((Ocaml_lib_io_process.create (ref "haxelib -help") (ref []))) in
(Printf.printf "%s\n" (!msg));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

