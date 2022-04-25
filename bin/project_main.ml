
let () = let start_time = Sys.time() in
(Printf.printf "%s%s\n" ("system=") (Sys.os_type));
(Printf.printf "%s%b\n" ("big_endian=") (Sys.big_endian));
(Printf.printf "%s%b\n" ("cygwin=") (Sys.cygwin));
(Printf.printf "%s%s\n" ("executable_name=") (Sys.executable_name));
(Printf.printf "%s%i\n" ("int_size=") (Sys.int_size));
(Printf.printf "%s%s\n" ("ocaml_version=") (Sys.ocaml_version));
(Printf.printf "%s%i\n" ("word_size=") (Sys.word_size));
if ((Sys.file_exists ("test2"))) then (
(Printf.printf "%s\n" ("已经存在文件夹"));
 )else((Sys.mkdir ("test2") (0));
);
Printf.printf "runtime:%fs" (Sys.time() -. start_time);;

