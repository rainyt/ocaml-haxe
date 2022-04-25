
let () = let start_time = Sys.time() in
(Sys.command ("node -v"));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

