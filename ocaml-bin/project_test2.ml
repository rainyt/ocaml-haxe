exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let isPrime n cache cacheSize = try let cur = ref 1 in
(* For *)
Array.iter (fun item -> ((
(* EIf *)
if (!n mod item = 0) then (
ignore (raise (BOOL (false)));
) ;
cur := item;
))) !cache;
let m = ref (Stdlib.floor (Stdlib.sqrt (float_of_int !n))) in
let break = ref true in while (!break && ((float_of_int !cur) < !m)) do
cur := !cur + 2;
(* EIf *)
if (!n mod !cur = 0) then (
ignore (raise (BOOL (false)));
) ;
done;
(* EIf *)
if (Array.length !cache < !cacheSize) then (
) ;
true
with BOOL ret -> ret;;

let () = let cache = ref [] in
let cacheSize = ref 400. in
let count = ref 1. in
let beginCount = ref 3. in
let endCount = ref 10000000.0 in
let current = ref !beginCount in
let beginTime = ref (Sys.time ()) in
let break = ref true in while (!break && (!current < !endCount)) do
(* EIf *)
if (isPrime (int_of_float !current) !cache (int_of_float !cacheSize)) then (
count := !count +. 1.;
) ;
current := !current +. 2.;
done;
let endTime = ref (Sys.time ()) in
Printf.printf "Time taken: %f" (!endTime -. !beginTime);
;;


