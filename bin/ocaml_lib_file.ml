exception BYTES of bytes
exception STRING of string

let getContent path = try 
let input = ref ((Stdlib.open_in (!path))) in
let line = ref ("") in
let break = ref true in while (!break && (true)) do
try
line := !line ^ (Stdlib.input_line (!input)) ^ "\n";
with _ -> 
(Stdlib.close_in (!input));
ignore (raise (STRING (!line)));
();
 done;
ignore (raise (STRING (!line)));!line;
with STRING ret -> ret;;

let toBytes chars = try 
let index = ref (0) in
let b = ref ((Bytes.create (List.length !chars))) in
let _g = ref (0) in
let break = ref true in while (!break && (!_g < List.length !chars)) do
let char = ref (List.nth !chars (!_g)) in
_g := !_g + 1;
(Bytes.set (!b) (!index) ((Char.chr (!char))));
index := !index + 1;
 done;
;
ignore (raise (BYTES (!b)));!b;
with BYTES ret -> ret;;

let getBytes path = try 
let input = ref ((Stdlib.open_in (!path))) in
let chars = ref ([]) in
let break = ref true in while (!break && (true)) do
try
let readChar = ref ((Stdlib.input_byte (!input))) in
(chars := !chars @ [ (!readChar) ]);
with _ -> 
(Stdlib.close_in (!input));
ignore (raise (BYTES ((toBytes (ref !chars)))));
();
 done;
ignore (raise (BYTES ((toBytes (ref !chars)))));(toBytes (ref !chars));
with BYTES ret -> ret;;

let saveBytes path bytes = let out = ref ((Stdlib.open_out (!path))) in
(Stdlib.output_bytes (!out) (!bytes));
(Stdlib.close_out (!out));
;;

let copy srcPath dstPath = let bytes = ref ((getBytes (ref !srcPath))) in
(saveBytes (ref !dstPath) (ref !bytes));
;;

