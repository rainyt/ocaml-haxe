exception BOOL of bool;;
exception STRING of string;;
exception INT of int;;
exception FLOAT of float;;

let () = let start = Sys.time() in 
(*  var i = 0  *)
let i = ref 0 in
(*  switch (i) {
	case 0:{
		trace("%i\n", i);
		switch (i) {
			case 2:{
				trace("%i", i);
			};
		};
	};
	case 1:{
		trace("%i\n", i);
	};
	case 2:{
		trace("%i\n", i);
	};
}  *)
let _ = (match (!i) with
| 0 -> (
Printf.printf ("%i\n") (!i);
let _ = (match (!i) with
| 2 -> (
Printf.printf ("%i") (!i);
) 
| _->()) in ();
) 
| 1 -> (
Printf.printf ("%i\n") (!i);
) 
| 2 -> (
Printf.printf ("%i\n") (!i);
) 
| _->()) in ();
(*  switch (i + 1) {
	case 2:{
		trace("%i\n", i);
	};
	default:{
		trace("default:%i\n", i);
	};
}  *)
let _ = (match (!i + 1) with
| 2 -> (
Printf.printf ("%i\n") (!i);
) 
| _->((
Printf.printf ("default:%i\n") (!i);
))) in ();
(*  switch ("A") {
	case "A":{
		trace("%s", "A");
	};
	case "B":{
		trace("%s", "B");
	};
	case "C":{
		trace("%s", "C");
	};
}  *)
let _ = (match ("A") with
| "A" -> (
Printf.printf ("%s") ("A");
) 
| "B" -> (
Printf.printf ("%s") ("B");
) 
| "C" -> (
Printf.printf ("%s") ("C");
) 
| _->()) in ();
Printf.printf "\nRuning time:%f\n" (Sys.time() -. start);;


