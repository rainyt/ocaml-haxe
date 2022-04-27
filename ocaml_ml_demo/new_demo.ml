
type process_self = {
  input : in_channel;
  data: string
}

let createSelf this cmd args detached =
   this.input = (Unix.open_process_in (!cmd));
   this.data = "123123";
;;

