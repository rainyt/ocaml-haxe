exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let getContent path = try (*  var input = Stdlib.openInput(path)  *)
let input = ref (Stdlib.open_in (!path)) in
(*  var context = Stdlib.inputLine(input)  *)
let context = ref (Stdlib.input_line (!input)) in
(*  context = Stdlib.inputLine(input)  *)
context := Stdlib.input_line (!input);
(*  return context  *)
!context
with STRING ret -> ret;;


