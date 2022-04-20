exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let isPrime n cache cacheSize = try let cur = ref 1 in
List.iter (fun item -> ((
if (!n mod item = 0) then (
ignore (raise (BOOL (false)));
) ;
cur := item;
))) !cache;
let m = ref (Stdlib.floor (Stdlib.sqrt ((float_of_int !n)))) in
let break = ref true in while (!break && ((float_of_int !cur) < !m)) do
cur := !cur + 2;
if (!n mod !cur = 0) then (
ignore (raise (BOOL (false)));
) ;
done;
if (List.length !cache < !cacheSize) then (
cache := !n :: !cache;
) ;
true
with BOOL ret -> ret;;

let () = let start = Sys.time() in 
let cache = ref [] in
let cacheSize = ref 400. in
let count = ref 1. in
let beginCount = ref 3. in
let endCount = ref 10000000.0 in
let current = ref !beginCount in
let break = ref true in while (!break && (!current < !endCount)) do
if (isPrime (ref (int_of_float !current)) cache (ref (int_of_float !cacheSize))) then (
count := !count +. 1.;
) ;
current := !current +. 2.;
done;
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


