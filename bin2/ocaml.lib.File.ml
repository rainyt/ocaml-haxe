exception STRING of string

let getContent path = try 
(* Not suppor TVar *);
(* Not suppor TVar *);
(* Not suppor TBinop *);
ignore (raise (STRING (context)));
with STRING ret -> ret;

