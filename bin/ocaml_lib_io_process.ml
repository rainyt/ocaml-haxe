type t_string = 
| Nil
| VALUE of string
type t_stdlib_out_channel = 
| Nil
| VALUE of Stdlib.out_channel
type t_stdlib_in_channel = 
| Nil
| VALUE of Stdlib.in_channel

type process_this={
mutable stdin:t_stdlib_in_channel;
mutable stdout:t_stdlib_out_channel;
mutable data:t_string;
}
let create_this cmd = let this = {
stdin=Nil;
stdout=Nil;
data=Nil;
} in
this.stdin <- VALUE (Unix.open_process_in (!cmd));
this;;

