
let () = let start_time = Sys.time() in
let array = ref (Sys.argv) in
let g = ref (0) in
let g1 = ref (!array) in
let break = ref true in while (!break && (!g < Array.length !g1)) do
let s = ref (!g1.(!g)) in
g := !g + 1;
(Printf.printf "%s%s\n" ("%s") (!s));
 done;
;
let g2 = ref (0) in
let g3 = ref (Array.length !array) in
let break = ref true in while (!break && (!g2 < !g3)) do
let s = ref (!g2 + 1) in
let value = ref (!array.(!s)) in
(Printf.printf "%s%i%s\n" ("%i%s\n") (!s) (!value));
 done;
;
(Printf.printf "%s%s\n" ("%s\n") (!array.(0)));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

