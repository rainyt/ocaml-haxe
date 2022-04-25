val id : 'a -> 'a
module Size :
  sig
    type t
    val to_int : t -> int
    val of_int : int -> t
    val zero : t
    val unknown : t
    val is_known : t -> bool
  end
type box_type =
  CamlinternalFormatBasics.block_type =
    Pp_hbox
  | Pp_vbox
  | Pp_hvbox
  | Pp_hovbox
  | Pp_box
  | Pp_fits
type pp_token =
    Pp_text of string
  | Pp_break of { fits : string * int * string;
      breaks : string * int * string;
    }
  | Pp_tbreak of int * int
  | Pp_stab
  | Pp_begin of int * box_type
  | Pp_end
  | Pp_tbegin of tbox
  | Pp_tend
  | Pp_newline
  | Pp_if_newline
  | Pp_open_tag of stag
  | Pp_close_tag
and stag = ..
and tbox = Pp_tbox of int list ref
type tag = string
type stag += String_tag of tag
type pp_queue_elem = {
  mutable size : Size.t;
  token : pp_token;
  length : int;
}
type pp_queue = pp_queue_elem Queue.t
type pp_scan_elem = { left_total : int; queue_elem : pp_queue_elem; }
type pp_format_elem = { box_type : box_type; width : int; }
type formatter = {
  pp_scan_stack : pp_scan_elem Stack.t;
  pp_format_stack : pp_format_elem Stack.t;
  pp_tbox_stack : tbox Stack.t;
  pp_tag_stack : stag Stack.t;
  pp_mark_stack : stag Stack.t;
  mutable pp_margin : int;
  mutable pp_min_space_left : int;
  mutable pp_max_indent : int;
  mutable pp_space_left : int;
  mutable pp_current_indent : int;
  mutable pp_is_new_line : bool;
  mutable pp_left_total : int;
  mutable pp_right_total : int;
  mutable pp_curr_depth : int;
  mutable pp_max_boxes : int;
  mutable pp_ellipsis : string;
  mutable pp_out_string : string -> int -> int -> unit;
  mutable pp_out_flush : unit -> unit;
  mutable pp_out_newline : unit -> unit;
  mutable pp_out_spaces : int -> unit;
  mutable pp_out_indent : int -> unit;
  mutable pp_print_tags : bool;
  mutable pp_mark_tags : bool;
  mutable pp_mark_open_tag : stag -> string;
  mutable pp_mark_close_tag : stag -> string;
  mutable pp_print_open_tag : stag -> unit;
  mutable pp_print_close_tag : stag -> unit;
  pp_queue : pp_queue;
}
type formatter_stag_functions = {
  mark_open_stag : stag -> string;
  mark_close_stag : stag -> string;
  print_open_stag : stag -> unit;
  print_close_stag : stag -> unit;
}
type formatter_out_functions = {
  out_string : string -> int -> int -> unit;
  out_flush : unit -> unit;
  out_newline : unit -> unit;
  out_spaces : int -> unit;
  out_indent : int -> unit;
}
val pp_enqueue : formatter -> pp_queue_elem -> unit
val pp_clear_queue : formatter -> unit
val pp_infinity : int
val pp_output_string : formatter -> string -> unit
val pp_output_newline : formatter -> unit
val pp_output_spaces : formatter -> int -> unit
val pp_output_indent : formatter -> int -> unit
val format_pp_text : formatter -> int -> string -> unit
val format_string : formatter -> string -> unit
val break_new_line : formatter -> string * int * string -> int -> unit
val break_line : formatter -> int -> unit
val break_same_line : formatter -> string * int * string -> unit
val pp_force_break_line : formatter -> unit
val pp_skip_token : formatter -> unit
val format_pp_token : formatter -> int -> pp_token -> unit
val advance_left : formatter -> unit
val enqueue_advance : formatter -> pp_queue_elem -> unit
val enqueue_string_as : formatter -> Size.t -> string -> unit
val enqueue_string : formatter -> string -> unit
val initialize_scan_stack : pp_scan_elem Stack.t -> unit
val set_size : formatter -> bool -> unit
val scan_push : formatter -> bool -> pp_queue_elem -> unit
val pp_open_box_gen : formatter -> int -> box_type -> unit
val pp_open_sys_box : formatter -> unit
val pp_close_box : formatter -> unit -> unit
val pp_open_stag : formatter -> stag -> unit
val pp_close_stag : formatter -> unit -> unit
val pp_open_tag : formatter -> tag -> unit
val pp_close_tag : formatter -> unit -> unit
val pp_set_print_tags : formatter -> bool -> unit
val pp_set_mark_tags : formatter -> bool -> unit
val pp_get_print_tags : formatter -> unit -> bool
val pp_get_mark_tags : formatter -> unit -> bool
val pp_set_tags : formatter -> bool -> unit
val pp_get_formatter_stag_functions :
  formatter -> unit -> formatter_stag_functions
val pp_set_formatter_stag_functions :
  formatter -> formatter_stag_functions -> unit
val pp_rinit : formatter -> unit
val clear_tag_stack : formatter -> unit
val pp_flush_queue : formatter -> bool -> unit
val pp_print_as_size : formatter -> Size.t -> string -> unit
val pp_print_as : formatter -> int -> string -> unit
val pp_print_string : formatter -> string -> unit
val pp_print_int : formatter -> int -> unit
val pp_print_float : formatter -> float -> unit
val pp_print_bool : formatter -> bool -> unit
val pp_print_char : formatter -> char -> unit
val pp_open_hbox : formatter -> unit -> unit
val pp_open_vbox : formatter -> int -> unit
val pp_open_hvbox : formatter -> int -> unit
val pp_open_hovbox : formatter -> int -> unit
val pp_open_box : formatter -> int -> unit
val pp_print_newline : formatter -> unit -> unit
val pp_print_flush : formatter -> unit -> unit
val pp_force_newline : formatter -> unit -> unit
val pp_print_if_newline : formatter -> unit -> unit
val pp_print_custom_break :
  formatter ->
  fits:string * int * string -> breaks:string * int * string -> unit
val pp_print_break : formatter -> int -> int -> unit
val pp_print_space : formatter -> unit -> unit
val pp_print_cut : formatter -> unit -> unit
val pp_open_tbox : formatter -> unit -> unit
val pp_close_tbox : formatter -> unit -> unit
val pp_print_tbreak : formatter -> int -> int -> unit
val pp_print_tab : formatter -> unit -> unit
val pp_set_tab : formatter -> unit -> unit
val pp_set_max_boxes : formatter -> int -> unit
val pp_get_max_boxes : formatter -> unit -> int
val pp_over_max_boxes : formatter -> unit -> bool
val pp_set_ellipsis_text : formatter -> string -> unit
val pp_get_ellipsis_text : formatter -> unit -> string
val pp_limit : int -> int
val pp_set_min_space_left : formatter -> int -> unit
val pp_set_max_indent : formatter -> int -> unit
val pp_get_max_indent : formatter -> unit -> int
val pp_set_margin : formatter -> int -> unit
type geometry = { max_indent : int; margin : int; }
val validate_geometry : geometry -> (unit, string) result
val check_geometry : geometry -> bool
val pp_get_margin : formatter -> unit -> int
val pp_set_full_geometry : formatter -> geometry -> unit
val pp_set_geometry : formatter -> max_indent:int -> margin:int -> unit
val pp_safe_set_geometry : formatter -> max_indent:int -> margin:int -> unit
val pp_get_geometry : formatter -> unit -> geometry
val pp_update_geometry : formatter -> (geometry -> geometry) -> unit
val pp_set_formatter_out_functions :
  formatter -> formatter_out_functions -> unit
val pp_get_formatter_out_functions :
  formatter -> unit -> formatter_out_functions
val pp_set_formatter_output_functions :
  formatter -> (string -> int -> int -> unit) -> (unit -> unit) -> unit
val pp_get_formatter_output_functions :
  formatter -> unit -> (string -> int -> int -> unit) * (unit -> unit)
val display_newline : formatter -> unit -> unit
val blank_line : string
val display_blanks : formatter -> int -> unit
val display_indent : formatter -> int -> unit
val pp_set_formatter_out_channel : formatter -> out_channel -> unit
val default_pp_mark_open_tag : stag -> string
val default_pp_mark_close_tag : stag -> string
val default_pp_print_open_tag : 'a -> unit
val default_pp_print_close_tag : 'a -> unit
val pp_make_formatter :
  (string -> int -> int -> unit) ->
  (unit -> unit) ->
  (unit -> unit) -> (int -> unit) -> (int -> unit) -> formatter
val formatter_of_out_functions : formatter_out_functions -> formatter
val make_formatter :
  (string -> int -> int -> unit) -> (unit -> unit) -> formatter
val formatter_of_out_channel : out_channel -> formatter
val formatter_of_buffer : Buffer.t -> formatter
val pp_buffer_size : int
val pp_make_buffer : unit -> Buffer.t
val stdbuf : Buffer.t
val std_formatter : formatter
val err_formatter : formatter
val str_formatter : formatter
val flush_buffer_formatter : Buffer.t -> formatter -> string
val flush_str_formatter : unit -> string
type symbolic_output_item =
    Output_flush
  | Output_newline
  | Output_string of string
  | Output_spaces of int
  | Output_indent of int
type symbolic_output_buffer = {
  mutable symbolic_output_contents : symbolic_output_item list;
}
val make_symbolic_output_buffer : unit -> symbolic_output_buffer
val clear_symbolic_output_buffer : symbolic_output_buffer -> unit
val get_symbolic_output_buffer :
  symbolic_output_buffer -> symbolic_output_item list
val flush_symbolic_output_buffer :
  symbolic_output_buffer -> symbolic_output_item list
val add_symbolic_output_item :
  symbolic_output_buffer -> symbolic_output_item -> unit
val formatter_of_symbolic_output_buffer : symbolic_output_buffer -> formatter
val open_hbox : unit -> unit
val open_vbox : int -> unit
val open_hvbox : int -> unit
val open_hovbox : int -> unit
val open_box : int -> unit
val close_box : unit -> unit
val open_tag : tag -> unit
val close_tag : unit -> unit
val open_stag : stag -> unit
val close_stag : unit -> unit
val print_as : int -> string -> unit
val print_string : string -> unit
val print_int : int -> unit
val print_float : float -> unit
val print_char : char -> unit
val print_bool : bool -> unit
val print_break : int -> int -> unit
val print_cut : unit -> unit
val print_space : unit -> unit
val force_newline : unit -> unit
val print_flush : unit -> unit
val print_newline : unit -> unit
val print_if_newline : unit -> unit
val open_tbox : unit -> unit
val close_tbox : unit -> unit
val print_tbreak : int -> int -> unit
val set_tab : unit -> unit
val print_tab : unit -> unit
val set_margin : int -> unit
val get_margin : unit -> int
val set_max_indent : int -> unit
val get_max_indent : unit -> int
val set_geometry : max_indent:int -> margin:int -> unit
val safe_set_geometry : max_indent:int -> margin:int -> unit
val get_geometry : unit -> geometry
val update_geometry : (geometry -> geometry) -> unit
val set_max_boxes : int -> unit
val get_max_boxes : unit -> int
val over_max_boxes : unit -> bool
val set_ellipsis_text : string -> unit
val get_ellipsis_text : unit -> string
val set_formatter_out_channel : out_channel -> unit
val set_formatter_out_functions : formatter_out_functions -> unit
val get_formatter_out_functions : unit -> formatter_out_functions
val set_formatter_output_functions :
  (string -> int -> int -> unit) -> (unit -> unit) -> unit
val get_formatter_output_functions :
  unit -> (string -> int -> int -> unit) * (unit -> unit)
val set_formatter_stag_functions : formatter_stag_functions -> unit
val get_formatter_stag_functions : unit -> formatter_stag_functions
val set_print_tags : bool -> unit
val get_print_tags : unit -> bool
val set_mark_tags : bool -> unit
val get_mark_tags : unit -> bool
val set_tags : bool -> unit
val pp_print_list :
  ?pp_sep:(formatter -> unit -> unit) ->
  (formatter -> 'a -> unit) -> formatter -> 'a list -> unit
val pp_print_seq_in :
  pp_sep:('a -> unit -> 'b) -> ('a -> 'c -> 'd) -> 'a -> 'c Seq.t -> unit
val pp_print_seq :
  ?pp_sep:(formatter -> unit -> unit) ->
  (formatter -> 'a -> 'b) -> formatter -> (unit -> 'a Seq.node) -> unit
val pp_print_text : formatter -> string -> unit
val pp_print_option :
  ?none:('a -> unit -> unit) -> ('a -> 'b -> unit) -> 'a -> 'b option -> unit
val pp_print_result :
  ok:('a -> 'b -> 'c) ->
  error:('a -> 'd -> 'c) -> 'a -> ('b, 'd) result -> 'c
val compute_tag : (formatter -> 'a -> 'b) -> 'a -> string
val output_formatting_lit :
  formatter -> CamlinternalFormatBasics.formatting_lit -> unit
val output_acc :
  formatter -> (formatter, unit) CamlinternalFormat.acc -> unit
val strput_acc : formatter -> (unit, string) CamlinternalFormat.acc -> unit
val kfprintf :
  (formatter -> 'a) ->
  formatter ->
  ('b, formatter, unit, unit, unit, 'a) CamlinternalFormatBasics.format6 ->
  'b
val ikfprintf :
  ('a -> 'b) ->
  'a -> ('c, 'd, 'e, 'f, 'g, 'b) CamlinternalFormatBasics.format6 -> 'c
val ifprintf :
  'a -> ('b, 'c, 'd, 'e, 'f, unit) CamlinternalFormatBasics.format6 -> 'b
val fprintf :
  formatter ->
  ('a, formatter, unit, unit, unit, unit) CamlinternalFormatBasics.format6 ->
  'a
val printf :
  ('a, formatter, unit, unit, unit, unit) CamlinternalFormatBasics.format6 ->
  'a
val eprintf :
  ('a, formatter, unit, unit, unit, unit) CamlinternalFormatBasics.format6 ->
  'a
val kdprintf :
  ((formatter -> unit) -> 'a) ->
  ('b, formatter, unit, unit, unit, 'a) CamlinternalFormatBasics.format6 ->
  'b
val dprintf :
  ('a, formatter, unit, unit, unit, formatter -> unit)
  CamlinternalFormatBasics.format6 -> 'a
val ksprintf :
  (string -> 'a) ->
  ('b, unit, string, string, string, 'a) CamlinternalFormatBasics.format6 ->
  'b
val sprintf :
  ('a, unit, string, string, string, string) CamlinternalFormatBasics.format6 ->
  'a
val kasprintf :
  (string -> 'a) ->
  ('b, formatter, unit, unit, unit, 'a) CamlinternalFormatBasics.format6 ->
  'b
val asprintf :
  ('a, formatter, unit, unit, unit, string) CamlinternalFormatBasics.format6 ->
  'a
val flush_standard_formatters : unit -> unit
val pp_set_all_formatter_output_functions :
  formatter ->
  out:(string -> int -> int -> unit) ->
  flush:(unit -> unit) ->
  newline:(unit -> unit) -> spaces:(int -> unit) -> unit
val pp_get_all_formatter_output_functions :
  formatter ->
  unit ->
  (string -> int -> int -> unit) * (unit -> unit) * (unit -> unit) *
  (int -> unit)
val set_all_formatter_output_functions :
  out:(string -> int -> int -> unit) ->
  flush:(unit -> unit) ->
  newline:(unit -> unit) -> spaces:(int -> unit) -> unit
val get_all_formatter_output_functions :
  unit ->
  (string -> int -> int -> unit) * (unit -> unit) * (unit -> unit) *
  (int -> unit)
val bprintf : Buffer.t -> ('a, formatter, unit) format -> 'a
val kprintf :
  (string -> 'a) ->
  ('b, unit, string, string, string, 'a) CamlinternalFormatBasics.format6 ->
  'b
type formatter_tag_functions = {
  mark_open_tag : tag -> string;
  mark_close_tag : tag -> string;
  print_open_tag : tag -> unit;
  print_close_tag : tag -> unit;
}
val pp_set_formatter_tag_functions :
  formatter -> formatter_tag_functions -> unit
val pp_get_formatter_tag_functions :
  formatter -> unit -> formatter_tag_functions
val set_formatter_tag_functions : formatter_tag_functions -> unit
val get_formatter_tag_functions : unit -> formatter_tag_functions
