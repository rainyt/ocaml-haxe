exception BOOL of bool

let isPrime n cache cacheSize = try 
let cur = ref (1) in
let g = ref (0) in
let break = ref true in while (!break && (!g < List.length !cache)) do
let item = ref (List.nth !cache (!g)) in
g := !g + 1;
if (!n mod !item = 0) then (
ignore (raise (BOOL (false)));false;
 );
cur := !item;
 done;
;
let m = ref ((Math.floor ((Math.sqrt (!n))))) in
let break = ref true in while (!break && (!cur < !m)) do
cur := !cur + 2;
if (!n mod !cur = 0) then (
ignore (raise (BOOL (false)));false;
 );
 done;
if (List.length !cache < !cacheSize) then (
(cache := !cache @ [ (!n) ]);
 );
ignore (raise (BOOL (true)));true;
with BOOL ret -> ret;;

let () = let start_time = Sys.time() in
let cache = ref ([]) in
let cacheSize = ref (400.) in
let count = ref (1.) in
let beginCount = ref (3.) in
let endCount = ref (10000000.0) in
let current = ref (!beginCount) in
let break = ref true in while (!break && (!current < !endCount)) do
if ((isPrime (ref !current) (ref !cache) (ref !cacheSize))) then (
count := !count +. 1.;
 );
current := !current +. 2.;
 done;
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

