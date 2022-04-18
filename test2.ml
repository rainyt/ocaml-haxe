let isPrime n cache cacheSize = let cur = ref 1 in
(* For *)
Array.iter (fun item -> ((
(* EIf *)
if (!n mod item = 0) then (
false;
) 
cur := item
))) !cache;
let m = ref (Stdlib.floor (Stdlib.sqrt (float_of_int !n))) in
(* OCamlTools.TODO EWhile *);
(* EIf *)
if (Array.length !cache < !cacheSize) then (
!cache.push !n
) ;
true
;;

let () = let cache = ref [] in
let cacheSize = ref 400 in
let count = ref 1 in
let beginCount = ref 3 in
let endCount = ref 10000000 in
let current = ref !beginCount in
let beginTime = ref (haxe.Timer.stamp) in
(* OCamlTools.TODO EWhile *);
let endTime = ref (haxe.Timer.stamp) in
Printf.printf 'Time taken: ${endTime - beginTime}';
Printf.printf !count;
;;


