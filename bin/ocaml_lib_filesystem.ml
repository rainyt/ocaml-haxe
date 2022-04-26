exception BOOL of bool

let exists file = try 
ignore (raise (BOOL ((Sys.file_exists (!file)))));(Sys.file_exists (!file));
with BOOL ret -> ret;;

