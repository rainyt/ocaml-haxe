type 'a t = 'a cell option
and 'a cell = { mutable count : int; mutable data : 'a data; }
and 'a data =
    Sempty
  | Scons of 'a * 'a data
  | Sapp of 'a data * 'a data
  | Slazy of 'a data Lazy.t
  | Sgen of 'a gen
  | Sbuffio : buffio -> char data
and 'a gen = { mutable curr : 'a option option; func : int -> 'a option; }
and buffio = {
  ic : in_channel;
  buff : bytes;
  mutable len : int;
  mutable ind : int;
}
exception Failure
exception Error of string
val count : 'a cell option -> int
val data : 'a cell option -> 'a data
val fill_buff : buffio -> unit
val get_data : int -> 'v data -> 'v data
val peek_data : 'v cell -> 'v option
val peek : 'a cell option -> 'a option
val junk_data : 'v cell -> unit
val junk : 'a cell option -> unit
val nget_data : int -> 'a cell -> 'a list * 'a data * int
val npeek_data : int -> 'a cell -> 'a list
val npeek : int -> 'a cell option -> 'a list
val next : 'a cell option -> 'a
val empty : 'a cell option -> unit
val iter : ('a -> 'b) -> 'a cell option -> unit
val from : (int -> 'a option) -> 'a cell option
val of_list : 'a list -> 'a cell option
val of_string : string -> char cell option
val of_bytes : bytes -> char cell option
val of_channel : in_channel -> char cell option
val iapp : 'a cell option -> 'a cell option -> 'a cell option
val icons : 'a -> 'a cell option -> 'a cell option
val ising : 'a -> 'a cell option
val lapp : (unit -> 'a cell option) -> 'a cell option -> 'a cell option
val lcons : (unit -> 'a) -> 'a cell option -> 'a cell option
val lsing : (unit -> 'a) -> 'a cell option
val sempty : 'a option
val slazy : (unit -> 'a cell option) -> 'a cell option
val dump : ('v -> unit) -> 'v t -> unit
val dump_data : ('v -> unit) -> 'v data -> unit
