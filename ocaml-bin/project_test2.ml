exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of int;;

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
let endCount = ref 10000000 in
let current = ref !beginCount in
let beginTime = ref (haxe.Timer.stamp) in
while !current < !endCount do
(* EIf *)
if (isPrime !current !cache !cacheSize) then (
count := !count + 1;
) ;
current := String.concat "" [!current;2];
done;;
let endTime = ref (haxe.Timer.stamp) in
Printf.printf 'Time taken: ${endTime - beginTime}';
Printf.printf !count;
;;


