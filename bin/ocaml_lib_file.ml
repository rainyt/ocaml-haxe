exception STRING of string
exception BYTES of bytes
exception OCAMLBUFFER of Buffer.t

let getBuffer path = try 
let input = ref ((Stdlib.open_in (!path))) in
let len = ref ((Stdlib.in_channel_length (!input))) in
let buffer = ref ((Buffer.create (!len))) in
(Buffer.add_channel (!buffer) (!input) (!len));
ignore (raise (OCAMLBUFFER (!buffer)));!buffer;
with OCAMLBUFFER ret -> ret;;

let getBytes path = try 
ignore (raise (BYTES ((Buffer.to_bytes ((getBuffer (ref !path)))))));(Buffer.to_bytes ((getBuffer (ref !path))));
with BYTES ret -> ret;;

let getContent path = try 
let data = ref ((String.of_seq ((Buffer.to_seq ((getBuffer (ref !path))))))) in
ignore (raise (STRING (!data)));!data;
with STRING ret -> ret;;

let saveBytes path bytes = let out = ref ((Stdlib.open_out (!path))) in
(Stdlib.output_bytes (!out) (!bytes));
(Stdlib.close_out (!out));
;;

let copy srcPath dstPath = let bytes = ref ((getBytes (ref !srcPath))) in
(saveBytes (ref !dstPath) (ref !bytes));
;;

