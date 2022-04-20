exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let isPrime n cache cacheSize = try (*  var cur = 1  *)
let cur = ref 1 in
(*  for (item in cache) {
	if (n % item == 0) {
		return false;
	};
	cur = item;
}  *)
(* For *)
List.iter (fun item -> ((
(* EIf *)
if (!n mod item = 0) then (
ignore (raise (BOOL (false)));
) ;
cur := item;
))) !cache;
(*  var m = Math.floor(Math.sqrt(cast(n, Float)))  *)
let m = ref (Stdlib.floor (Stdlib.sqrt ((float_of_int !n)))) in
(*  while (cast(cur, Float) < m) {
	cur = cur + 2;
	if (n % cur == 0) {
		return false;
	};
}  *)
let break = ref true in while (!break && ((float_of_int !cur) < !m)) do
cur := !cur + 2;
(* EIf *)
if (!n mod !cur = 0) then (
ignore (raise (BOOL (false)));
) ;
done;
(*  if (cache.length < cacheSize) {
	cache.push(n);
}  *)
(* EIf *)
if (List.length !cache < !cacheSize) then (
cache := !n :: !cache;
) ;
(*  return true  *)
true
with BOOL ret -> ret;;

let () = let start = Sys.time() in 
(*  var cache:Array<Int> = []  *)
let cache = ref [] in
(*  var cacheSize = 400.  *)
let cacheSize = ref 400. in
(*  var count = 1.  *)
let count = ref 1. in
(*  var beginCount = 3.  *)
let beginCount = ref 3. in
(*  var endCount = 10000000.0  *)
let endCount = ref 10000000.0 in
(*  var current = beginCount  *)
let current = ref !beginCount in
(*  while (current < endCount) {
	if (isPrime(cast(current, Int), cache, cast(cacheSize, Int))) {
		count++;
	};
	current = current + 2.;
}  *)
let break = ref true in while (!break && (!current < !endCount)) do
(* EIf *)
if (isPrime ((int_of_float !current)) cache ((int_of_float !cacheSize))) then (
count := !count +. 1.;
) ;
current := !current +. 2.;
done;
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


