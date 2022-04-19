exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let isPrime n cache cacheSize = let cur = ref 1 in
(* For *)
Array.iter (fun item -> ((
(* EIf *)
if (!n mod item = 0) then (
raise (BOOL false);
) ;
cur := item;
))) !cache;
let m = ref (Stdlib.floor (Stdlib.sqrt (float_of_int !n))) in
while (float_of_int !cur) < !m do
cur := !cur + 2;
(* EIf *)
if (!n mod !cur = 0) then (
raise (BOOL false);
) ;
done;;
true
;;

let () = let cache = ref [] in
let cacheSize = ref 400 in
let count = ref 1 in
let beginCount = ref 3 in
let endCount = ref 10000000.0 in
let current = ref !beginCount in
let beginTime = ref (Unix.time) in
let endTime = ref (Unix.time) in
Printf.printf "%i" !count;
;;


