type mutable_char_set = bytes
val create_char_set : unit -> bytes
val add_in_char_set : bytes -> char -> unit
val freeze_char_set : bytes -> string
val rev_char_set : string -> string
val is_in_char_set : string -> char -> bool
type ('a, 'b, 'c, 'd, 'e, 'f) param_format_ebb =
    Param_format_EBB :
      ('x -> 'a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> 
      ('a, 'b, 'c, 'd, 'e, 'f) param_format_ebb
val pad_of_pad_opt : int option -> ('a, 'a) CamlinternalFormatBasics.padding
val prec_of_prec_opt :
  int option -> ('a, 'a) CamlinternalFormatBasics.precision
val param_format_of_ignored_format :
  ('a, 'b, 'c, 'd, 'y, 'x) CamlinternalFormatBasics.ignored ->
  ('x, 'b, 'c, 'y, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('a, 'b, 'c, 'd, 'e, 'f) param_format_ebb
type ('b, 'c) acc_formatting_gen =
    Acc_open_tag of ('b, 'c) acc
  | Acc_open_box of ('b, 'c) acc
and ('b, 'c) acc =
    Acc_formatting_lit of ('b, 'c) acc *
      CamlinternalFormatBasics.formatting_lit
  | Acc_formatting_gen of ('b, 'c) acc * ('b, 'c) acc_formatting_gen
  | Acc_string_literal of ('b, 'c) acc * string
  | Acc_char_literal of ('b, 'c) acc * char
  | Acc_data_string of ('b, 'c) acc * string
  | Acc_data_char of ('b, 'c) acc * char
  | Acc_delay of ('b, 'c) acc * ('b -> 'c)
  | Acc_flush of ('b, 'c) acc
  | Acc_invalid_arg of ('b, 'c) acc * string
  | End_of_acc
type ('a, 'b) heter_list =
    Cons : 'c * ('a, 'b) heter_list -> ('c -> 'a, 'b) heter_list
  | Nil : ('b, 'b) heter_list
type ('a, 'b, 'c, 'd, 'e, 'f) padding_fmtty_ebb =
    Padding_fmtty_EBB : ('x, 'y) CamlinternalFormatBasics.padding *
      ('y, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty -> ('x, 'b, 'c,
                                                                  'd, 'e, 'f)
                                                                 padding_fmtty_ebb
type ('a, 'b, 'c, 'd, 'e, 'f) padprec_fmtty_ebb =
    Padprec_fmtty_EBB : ('x, 'y) CamlinternalFormatBasics.padding *
      ('y, 'z) CamlinternalFormatBasics.precision *
      ('z, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty -> ('x, 'b, 'c,
                                                                  'd, 'e, 'f)
                                                                 padprec_fmtty_ebb
type ('a, 'b, 'c, 'e, 'f) padding_fmt_ebb =
    Padding_fmt_EBB : ('g, 'x -> 'a) CamlinternalFormatBasics.padding *
      ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> ('x, 'b, 'c,
                                                                'e, 'f)
                                                               padding_fmt_ebb
type ('a, 'b, 'c, 'e, 'f) precision_fmt_ebb =
    Precision_fmt_EBB : ('g, 'x -> 'a) CamlinternalFormatBasics.precision *
      ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> ('x, 'b, 'c,
                                                                'e, 'f)
                                                               precision_fmt_ebb
type ('p, 'b, 'c, 'e, 'f) padprec_fmt_ebb =
    Padprec_fmt_EBB : ('x, 'y) CamlinternalFormatBasics.padding *
      ('y, 'p -> 'a) CamlinternalFormatBasics.precision *
      ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> ('p, 'b, 'c,
                                                                'e, 'f)
                                                               padprec_fmt_ebb
type ('b, 'c, 'e, 'f) fmt_ebb =
    Fmt_EBB :
      ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> ('b, 'c, 'e,
                                                                'f)
                                                               fmt_ebb
type ('a, 'b, 'c, 'd, 'e, 'f) fmt_fmtty_ebb =
    Fmt_fmtty_EBB : ('a, 'b, 'c, 'd, 'y, 'x) CamlinternalFormatBasics.fmt *
      ('x, 'b, 'c, 'y, 'e, 'f) CamlinternalFormatBasics.fmtty -> ('a, 'b, 'c,
                                                                  'd, 'e, 'f)
                                                                 fmt_fmtty_ebb
type ('a, 'b, 'c, 'd, 'e, 'f) fmtty_fmt_ebb =
    Fmtty_fmt_EBB : ('a, 'b, 'c, 'd, 'y, 'x) CamlinternalFormatBasics.fmtty *
      ('x, 'b, 'c, 'y, 'e, 'f) fmt_fmtty_ebb -> ('a, 'b, 'c, 'd, 'e, 'f)
                                                fmtty_fmt_ebb
type fmtty_ebb =
    Fmtty_EBB :
      ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty -> fmtty_ebb
type padding_ebb =
    Padding_EBB : ('a, 'b) CamlinternalFormatBasics.padding -> padding_ebb
type precision_ebb =
    Precision_EBB :
      ('a, 'b) CamlinternalFormatBasics.precision -> precision_ebb
val default_float_precision :
  'a * CamlinternalFormatBasics.float_kind_conv -> int
external format_float : string -> float -> string = "caml_format_float"
external format_int : string -> int -> string = "caml_format_int"
external format_int32 : string -> int32 -> string = "caml_int32_format"
external format_nativeint : string -> nativeint -> string
  = "caml_nativeint_format"
external format_int64 : string -> int64 -> string = "caml_int64_format"
external hexstring_of_float : float -> int -> char -> string
  = "caml_hexstring_of_float"
type buffer = { mutable ind : int; mutable bytes : bytes; }
val buffer_create : int -> buffer
val buffer_check_size : buffer -> int -> unit
val buffer_add_char : buffer -> char -> unit
val buffer_add_string : buffer -> string -> unit
val buffer_contents : buffer -> string
val char_of_iconv : CamlinternalFormatBasics.int_conv -> char
val char_of_fconv :
  ?cF:char -> 'a * CamlinternalFormatBasics.float_kind_conv -> char
val char_of_counter : CamlinternalFormatBasics.counter -> char
val bprint_char_set : buffer -> string -> unit
val bprint_padty : buffer -> CamlinternalFormatBasics.padty -> unit
val bprint_ignored_flag : buffer -> bool -> unit
val bprint_pad_opt : buffer -> int option -> unit
val bprint_padding :
  buffer -> ('a, 'b) CamlinternalFormatBasics.padding -> unit
val bprint_precision :
  buffer -> ('a, 'b) CamlinternalFormatBasics.precision -> unit
val bprint_iconv_flag : buffer -> CamlinternalFormatBasics.int_conv -> unit
val bprint_int_fmt :
  buffer ->
  bool ->
  CamlinternalFormatBasics.int_conv ->
  ('a, 'b) CamlinternalFormatBasics.padding ->
  ('c, 'd) CamlinternalFormatBasics.precision -> unit
val bprint_altint_fmt :
  buffer ->
  bool ->
  CamlinternalFormatBasics.int_conv ->
  ('a, 'b) CamlinternalFormatBasics.padding ->
  ('c, 'd) CamlinternalFormatBasics.precision -> char -> unit
val bprint_fconv_flag :
  buffer ->
  CamlinternalFormatBasics.float_flag_conv *
  CamlinternalFormatBasics.float_kind_conv -> unit
val bprint_float_fmt :
  buffer ->
  bool ->
  CamlinternalFormatBasics.float_flag_conv *
  CamlinternalFormatBasics.float_kind_conv ->
  ('a, 'b) CamlinternalFormatBasics.padding ->
  ('c, 'd) CamlinternalFormatBasics.precision -> unit
val string_of_formatting_lit :
  CamlinternalFormatBasics.formatting_lit -> string
val bprint_char_literal : buffer -> char -> unit
val bprint_string_literal : buffer -> string -> unit
val bprint_fmtty :
  buffer ->
  ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k, 'l)
  CamlinternalFormatBasics.fmtty_rel -> unit
val int_of_custom_arity :
  ('a, 'b, 'c) CamlinternalFormatBasics.custom_arity -> int
val bprint_fmt :
  buffer -> ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> unit
val string_of_fmt :
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> string
type (_, _) eq = Refl : ('a, 'a) eq
val symm :
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1, 'a2, 'b2, 'c2, 'd2, 'e2, 'f2)
  CamlinternalFormatBasics.fmtty_rel ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2, 'a1, 'b1, 'c1, 'd1, 'e1, 'f1)
  CamlinternalFormatBasics.fmtty_rel
val fmtty_rel_det :
  ('a1, 'b, 'c, 'd1, 'e1, 'f1, 'a2, 'b, 'c, 'd2, 'e2, 'f2)
  CamlinternalFormatBasics.fmtty_rel ->
  (('f1, 'f2) eq -> ('a1, 'a2) eq) * (('a1, 'a2) eq -> ('f1, 'f2) eq) *
  (('e1, 'e2) eq -> ('d1, 'd2) eq) * (('d1, 'd2) eq -> ('e1, 'e2) eq)
val trans :
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1, 'a2, 'b2, 'c2, 'd2, 'e2, 'f2)
  CamlinternalFormatBasics.fmtty_rel ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2, 'a3, 'b3, 'c3, 'd3, 'e3, 'f3)
  CamlinternalFormatBasics.fmtty_rel ->
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1, 'a3, 'b3, 'c3, 'd3, 'e3, 'f3)
  CamlinternalFormatBasics.fmtty_rel
val fmtty_of_formatting_gen :
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.formatting_gen ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty
val fmtty_of_fmt :
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty
val fmtty_of_custom :
  ('a, 'x, 'y) CamlinternalFormatBasics.custom_arity ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('y, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty
val fmtty_of_ignored_format :
  ('a, 'b, 'c, 'd, 'y, 'x) CamlinternalFormatBasics.ignored ->
  ('x, 'b, 'c, 'y, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty
val fmtty_of_padding_fmtty :
  ('x, 'a) CamlinternalFormatBasics.padding ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('x, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty
val fmtty_of_precision_fmtty :
  ('x, 'a) CamlinternalFormatBasics.precision ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('x, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty
exception Type_mismatch
val type_padding :
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('a, 'b, 'c, 'd, 'e, 'f) padding_fmtty_ebb
val type_padprec :
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('y, 'z) CamlinternalFormatBasics.precision ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('a, 'b, 'c, 'd, 'e, 'f) padprec_fmtty_ebb
val type_format :
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1) CamlinternalFormatBasics.fmt ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2) CamlinternalFormatBasics.fmtty ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2) CamlinternalFormatBasics.fmt
val type_format_gen :
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1) CamlinternalFormatBasics.fmt ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2) CamlinternalFormatBasics.fmtty ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2) fmt_fmtty_ebb
val type_formatting_gen :
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1) CamlinternalFormatBasics.formatting_gen ->
  ('f1, 'b1, 'c1, 'e1, 'e2, 'f2) CamlinternalFormatBasics.fmt ->
  ('a3, 'b3, 'c3, 'd3, 'e3, 'f3) CamlinternalFormatBasics.fmtty ->
  ('a3, 'b3, 'c3, 'd3, 'e3, 'f3) fmt_fmtty_ebb
val type_ignored_param :
  ('x, 'y, 'z, 't, 'q, 'p) CamlinternalFormatBasics.ignored ->
  ('p, 'y, 'z, 'q, 'u, 'v) CamlinternalFormatBasics.fmt ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('a, 'b, 'c, 'd, 'e, 'f) fmt_fmtty_ebb
val type_ignored_param_one :
  ('a2, 'b2, 'c2, 'd2, 'd2, 'a2) CamlinternalFormatBasics.ignored ->
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1) CamlinternalFormatBasics.fmt ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2) CamlinternalFormatBasics.fmtty ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2) fmt_fmtty_ebb
val type_ignored_format_substitution :
  ('w, 'x, 'y, 'z, 's, 'p) CamlinternalFormatBasics.fmtty ->
  ('p, 'x, 'y, 's, 't, 'u) CamlinternalFormatBasics.fmt ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('a, 'b, 'c, 'd, 'e, 'f) fmtty_fmt_ebb
val recast :
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1) CamlinternalFormatBasics.fmt ->
  ('a1, 'b1, 'c1, 'd1, 'e1, 'f1, 'a2, 'b2, 'c2, 'd2, 'e2, 'f2)
  CamlinternalFormatBasics.fmtty_rel ->
  ('a2, 'b2, 'c2, 'd2, 'e2, 'f2) CamlinternalFormatBasics.fmt
val fix_padding : CamlinternalFormatBasics.padty -> int -> string -> string
val fix_int_precision : int -> string -> string
val string_to_caml_string : string -> string
val format_of_iconv : CamlinternalFormatBasics.int_conv -> string
val format_of_iconvL : CamlinternalFormatBasics.int_conv -> string
val format_of_iconvl : CamlinternalFormatBasics.int_conv -> string
val format_of_iconvn : CamlinternalFormatBasics.int_conv -> string
val format_of_fconv :
  CamlinternalFormatBasics.float_flag_conv *
  CamlinternalFormatBasics.float_kind_conv -> int -> string
val transform_int_alt : CamlinternalFormatBasics.int_conv -> string -> string
val convert_int : CamlinternalFormatBasics.int_conv -> int -> string
val convert_int32 : CamlinternalFormatBasics.int_conv -> int32 -> string
val convert_nativeint :
  CamlinternalFormatBasics.int_conv -> nativeint -> string
val convert_int64 : CamlinternalFormatBasics.int_conv -> int64 -> string
val convert_float :
  CamlinternalFormatBasics.float_flag_conv *
  CamlinternalFormatBasics.float_kind_conv -> int -> float -> string
val format_caml_char : char -> string
val string_of_fmtty :
  ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k, 'l)
  CamlinternalFormatBasics.fmtty_rel -> string
val make_printf :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc -> ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> 'a
val make_ignored_param :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc ->
  ('a, 'b, 'c, 'd, 'y, 'x) CamlinternalFormatBasics.ignored ->
  ('x, 'b, 'c, 'y, 'e, 'f) CamlinternalFormatBasics.fmt -> 'a
val make_from_fmtty :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc ->
  ('a, 'b, 'c, 'd, 'y, 'x) CamlinternalFormatBasics.fmtty ->
  ('x, 'b, 'c, 'y, 'e, 'f) CamlinternalFormatBasics.fmt -> 'a
val make_invalid_arg :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc -> ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> 'a
val make_padding :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('x, 'z -> 'a) CamlinternalFormatBasics.padding -> ('z -> string) -> 'x
val make_int_padding_precision :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('y, 'z -> 'a) CamlinternalFormatBasics.precision ->
  (CamlinternalFormatBasics.int_conv -> 'z -> string) ->
  CamlinternalFormatBasics.int_conv -> 'x
val make_float_padding_precision :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('y, float -> 'a) CamlinternalFormatBasics.precision ->
  CamlinternalFormatBasics.float_conv -> 'x
val make_custom :
  (('b, 'c) acc -> 'f) ->
  ('b, 'c) acc ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('a, 'x, 'y) CamlinternalFormatBasics.custom_arity -> 'x -> 'y
val const : 'a -> 'b -> 'a
val make_iprintf :
  ('state -> 'f) ->
  'state -> ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt -> 'a
val fn_of_padding_precision :
  ('state -> 'f) ->
  'state ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('y, 'z -> 'a) CamlinternalFormatBasics.precision -> 'x
val fn_of_custom_arity :
  ('state -> 'f) ->
  'state ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('a, 'x, 'y) CamlinternalFormatBasics.custom_arity -> 'y
val output_acc : out_channel -> (out_channel, unit) acc -> unit
val bufput_acc : Buffer.t -> (Buffer.t, unit) acc -> unit
val strput_acc : Buffer.t -> (unit, string) acc -> unit
val failwith_message :
  ('a, unit, string, 'b, 'c, 'd) CamlinternalFormatBasics.format6 -> 'a
val open_box_of_string : string -> int * CamlinternalFormatBasics.block_type
val make_padding_fmt_ebb :
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('g, 'b, 'c, 'e, 'f) padding_fmt_ebb
val make_precision_fmt_ebb :
  ('x, 'y) CamlinternalFormatBasics.precision ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('g, 'b, 'c, 'e, 'f) precision_fmt_ebb
val make_padprec_fmt_ebb :
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('z, 't) CamlinternalFormatBasics.precision ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('g, 'b, 'c, 'e, 'f) padprec_fmt_ebb
val fmt_ebb_of_string :
  ?legacy_behavior:bool -> string -> ('a, 'b, 'c, 'd) fmt_ebb
val format_of_string_fmtty :
  string ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmtty ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.format6
val format_of_string_format :
  string ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.format6 ->
  ('a, 'b, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.format6
