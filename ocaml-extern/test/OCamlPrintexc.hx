type t = exn = ..
val printers : (exn -> string option) list Atomic.t
val locfmt :
  (string -> int -> int -> int -> string -> string, unit, string, string,
   string, string)
  format6
val field : Obj.t -> int -> string
val other_fields : Obj.t -> int -> string
val fields : Obj.t -> string
val use_printers : exn -> string option
val to_string_default : exn -> string
val to_string : exn -> string
val print : ('a -> 'b) -> 'a -> 'b
val catch : ('a -> 'b) -> 'a -> 'b
type raw_backtrace_slot
type raw_backtrace_entry = private int
type raw_backtrace = raw_backtrace_entry array
val raw_backtrace_entries : 'a -> 'a
external get_raw_backtrace : unit -> raw_backtrace
  = "caml_get_exception_raw_backtrace"
external raise_with_backtrace : exn -> raw_backtrace -> 'a
  = "%raise_with_backtrace"
type backtrace_slot =
    Known_location of { is_raise : bool; filename : string;
      line_number : int; start_char : int; end_char : int; is_inline : bool;
      defname : string;
    }
  | Unknown_location of { is_raise : bool; }
external convert_raw_backtrace_slot : raw_backtrace_slot -> backtrace_slot
  = "caml_convert_raw_backtrace_slot"
val convert_raw_backtrace : raw_backtrace -> backtrace_slot array option
val format_backtrace_slot : int -> backtrace_slot -> string option
val print_exception_backtrace :
  out_channel -> backtrace_slot array option -> unit
val print_raw_backtrace : out_channel -> raw_backtrace -> unit
val print_backtrace : out_channel -> unit
val backtrace_to_string : backtrace_slot array option -> string
val raw_backtrace_to_string : raw_backtrace -> string
val backtrace_slot_is_raise : backtrace_slot -> bool
val backtrace_slot_is_inline : backtrace_slot -> bool
type location = {
  filename : string;
  line_number : int;
  start_char : int;
  end_char : int;
}
val backtrace_slot_location : backtrace_slot -> location option
val backtrace_slot_defname : backtrace_slot -> string option
val backtrace_slots : raw_backtrace -> backtrace_slot array option
val backtrace_slots_of_raw_entry :
  raw_backtrace_entry -> backtrace_slot array option
module Slot :
  sig
    type t = backtrace_slot
    val format : int -> backtrace_slot -> string option
    val is_raise : backtrace_slot -> bool
    val is_inline : backtrace_slot -> bool
    val location : backtrace_slot -> location option
    val name : backtrace_slot -> string option
  end
val raw_backtrace_length : 'a array -> int
external get_raw_backtrace_slot : raw_backtrace -> int -> raw_backtrace_slot
  = "caml_raw_backtrace_slot"
external get_raw_backtrace_next_slot :
  raw_backtrace_slot -> raw_backtrace_slot option
  = "caml_raw_backtrace_next_slot"
val get_backtrace : unit -> string
external record_backtrace : bool -> unit = "caml_record_backtrace"
external backtrace_status : unit -> bool = "caml_backtrace_status"
val register_printer : (exn -> string option) -> unit
external get_callstack : int -> raw_backtrace = "caml_get_current_callstack"
val exn_slot : 'a -> Obj.t
val exn_slot_id : 'a -> int
val exn_slot_name : 'a -> string
external get_debug_info_status : unit -> int = "caml_ml_debug_info_status"
val errors : string array
val default_uncaught_exception_handler : exn -> raw_backtrace -> unit
val uncaught_exception_handler : (exn -> raw_backtrace -> unit) ref
val set_uncaught_exception_handler : (exn -> raw_backtrace -> unit) -> unit
val empty_backtrace : raw_backtrace
val try_get_raw_backtrace : unit -> raw_backtrace
val handle_uncaught_exception' : exn -> bool -> unit
val handle_uncaught_exception : exn -> bool -> unit
external register_named_value : string -> 'a -> unit
  = "caml_register_named_value"
