exception STRING of string

let afunc s = try 
ignore (raise (STRING (s)));
with STRING ret -> ret;

let () = try 
(* Not suppor TVar *);
(* Not suppor TVar *);
(* Not suppor TVar *);
(* Not suppor TVar *);
;
;
with VOID ret -> ret;

