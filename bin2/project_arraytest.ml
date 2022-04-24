exception INT of int

let toArray list = try 
(Printf.printf "%s%i\n" ("test=%i\n") ((Api_test.labelFunc (1) (2))));
let g = ref (0) in
let g1 = ref (List.length !list) in
let break = ref true in while (!break && (!g < !g1)) do
let i = ref (!g + 1) in
(Printf.printf "%s%i\n" ("%i") (List.nth !list (0)));
let f = ref (List.nth !list (0)) in
ignore (raise (INT (!f)));!f;
 done;
;
ignore (raise (INT (0)));0;
with INT ret -> ret;;

let call arr = try 
ignore (raise (INT (List.nth !arr (0))));List.nth !arr (0);
with INT ret -> ret;;

let () = let start_time = Sys.time() in
let array = ref ([1;2;3;4;5;6]) in
(array := !array @ [ (5) ]);
(array := !array @ [ (6) ]);
(array := !array @ [ (7) ]);
(array := !array @ [ (8) ]);
let g = ref (0) in
let g1 = ref (List.length !array) in
let break = ref true in while (!break && (!g < !g1)) do
let i = ref (!g + 1) in
(Printf.printf "%s%i%i\n" ("%i=%i\n") (!i) (List.nth !array (!i)));
 done;
;
let data = ref ((call (ref !array))) in
(Printf.printf "%s%i\n" ("%i\n") ((toArray (ref !array))));
(Printf.printf "%s%i\n" ("%i\n") (!data));
array := (!array @  ([1;2;3]));
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

