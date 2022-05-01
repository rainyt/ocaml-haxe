type t_string = 
| Nil
| VALUE of string

type process2_this={
mutable name:t_string;
mutable name2:t_string;
}
let create_this = let this = {
name=VALUE "123123123";
name2=Nil;
} in
this;;

