type t_string = 
| Nil
| VALUE of string

type process2_this={
mutable name:t_string;
}
let create_this = let this = {
name=Nil;
} in
this.name <- VALUE "123123";
this;;

