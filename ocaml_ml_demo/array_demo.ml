let getArray a = 
  a := 2 :: !a;
;;

let () = let array = Array.make 2 "123"  in
  (* Array.set array 1 "123123"; *)
  print_endline array.(1);
  Printf.printf "length=%i\n" (Array.length array);

  let list = ref [] in
  list := 1 :: !list;
  Printf.printf "list.at %i %i\n" (List.nth !list 0) (List.length !list);

  list := 2 :: !list;
  Printf.printf "list.at %i %i\n" (List.nth !list 1) (List.length !list);
;;