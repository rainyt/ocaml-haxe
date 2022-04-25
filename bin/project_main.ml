
let () = let start_time = Sys.time() in
let data = ref (Sys.os_type) in
(Printf.printf "%s%s\n" ("system=") (!data));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

