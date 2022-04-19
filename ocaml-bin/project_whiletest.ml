let () = let i = ref 0 in
while !i < 10 do
i := !i + 1;
Printf.printf "%i" !i;
done;;
;;


