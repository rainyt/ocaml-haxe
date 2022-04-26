exception STRING of string
exception BOOL of bool

let exists file = try 
ignore (raise (BOOL ((Sys.file_exists (!file)))));(Sys.file_exists (!file));
with BOOL ret -> ret;;

let createDirectory path = (Sys.mkdir (!path) (0));
;;

let deleteDirectory dir = (Sys.rmdir (!dir));
;;

let deleteFile file = (Sys.remove (!file));
;;

let fullPath relPath = try 
ignore (raise (STRING (Sys.executable_name ^ "/" ^ !relPath)));Sys.executable_name ^ "/" ^ !relPath;
with STRING ret -> ret;;

let isDirectory path = try 
ignore (raise (BOOL ((Sys.is_directory (!path)))));(Sys.is_directory (!path));
with BOOL ret -> ret;;

let rename path newPath = (Sys.rename (!path) (!newPath));
;;

