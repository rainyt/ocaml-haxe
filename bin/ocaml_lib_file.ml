exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let getContent path = try (*  return path  *)
!path
with STRING ret -> ret;;


