exception STRING of string

let afunc s = try 
ignore (raise (STRING (s)));s;
with STRING ret -> ret;;

let () = let a = "test" in
let b = "README.md" in
let content = Ocaml_lib_file.getContent b in
let input = Ocaml_stdlib.openInput b in
Haxe_log.trace "%s\n" {fileName:"haxe_test/project/Main.hx";lineNumber:17;className:"project.Main";methodName:"main";customParams:[Project_main.afunc a]};
Haxe_log.trace "%s" {fileName:"haxe_test/project/Main.hx";lineNumber:18;className:"project.Main";methodName:"main";customParams:[content]};
;;

