type ('a, 'b, 'c, 'd, 'e, 'f) format6 = ('a, 'b, 'c, 'd, 'e, 'f) format6
module type SCANNING =
  sig
    type in_channel
    type scanbuf = in_channel
    type file_name = string
    val stdin : in_channel
    val stdib : in_channel
    val next_char : scanbuf -> char
    val invalidate_current_char : scanbuf -> unit
    val peek_char : scanbuf -> char
    val checked_peek_char : scanbuf -> char
    val store_char : int -> scanbuf -> char -> int
    val skip_char : int -> scanbuf -> int
    val ignore_char : int -> scanbuf -> int
    val token : scanbuf -> string
    val reset_token : scanbuf -> unit
    val char_count : scanbuf -> int
    val line_count : scanbuf -> int
    val token_count : scanbuf -> int
    val eof : scanbuf -> bool
    val end_of_input : scanbuf -> bool
    val beginning_of_input : scanbuf -> bool
    val name_of_input : scanbuf -> string
    val open_in : file_name -> in_channel
    val open_in_bin : file_name -> in_channel
    val from_file : file_name -> in_channel
    val from_file_bin : file_name -> in_channel
    val from_string : string -> in_channel
    val from_function : (unit -> char) -> in_channel
    val from_channel : Stdlib.in_channel -> in_channel
    val close_in : in_channel -> unit
    val memo_from_channel : Stdlib.in_channel -> in_channel
  end
module Scanning : SCANNING
type ('a, 'b, 'c, 'd) scanner =
    ('a, Scanning.in_channel, 'b, 'c, 'a -> 'd, 'd) format6 -> 'c
exception Scan_failure of string
val bad_input : string -> 'a
val bad_input_escape : char -> 'a
val bad_token_length : string -> 'a
val bad_end_of_input : string -> 'a
val bad_float : unit -> 'a
val bad_hex_float : unit -> 'a
val character_mismatch_err : char -> char -> string
val character_mismatch : char -> char -> 'a
val skip_whites : Scanning.scanbuf -> unit
val check_char : Scanning.scanbuf -> char -> unit
val check_this_char : Scanning.scanbuf -> char -> unit
val check_newline : Scanning.scanbuf -> unit
val token_char : Scanning.scanbuf -> char
val token_string : Scanning.scanbuf -> string
val token_bool : Scanning.scanbuf -> bool
type integer_conversion =
    B_conversion
  | D_conversion
  | I_conversion
  | O_conversion
  | U_conversion
  | X_conversion
val integer_conversion_of_char : char -> integer_conversion
val token_int_literal : integer_conversion -> Scanning.scanbuf -> string
val token_int : integer_conversion -> Scanning.scanbuf -> int
val token_float : Scanning.scanbuf -> float
external nativeint_of_string : string -> nativeint
  = "caml_nativeint_of_string"
external int32_of_string : string -> int32 = "caml_int32_of_string"
external int64_of_string : string -> int64 = "caml_int64_of_string"
val token_nativeint : integer_conversion -> Scanning.scanbuf -> nativeint
val token_int32 : integer_conversion -> Scanning.scanbuf -> int32
val token_int64 : integer_conversion -> Scanning.scanbuf -> int64
val scan_decimal_digit_star : int -> Scanning.scanbuf -> int
val scan_decimal_digit_plus : int -> Scanning.scanbuf -> int
val scan_digit_star : (char -> bool) -> int -> Scanning.scanbuf -> int
val scan_digit_plus :
  string -> (char -> bool) -> int -> Scanning.scanbuf -> int
val is_binary_digit : char -> bool
val scan_binary_int : int -> Scanning.scanbuf -> int
val is_octal_digit : char -> bool
val scan_octal_int : int -> Scanning.scanbuf -> int
val is_hexa_digit : char -> bool
val scan_hexadecimal_int : int -> Scanning.scanbuf -> int
val scan_unsigned_decimal_int : int -> Scanning.scanbuf -> int
val scan_sign : int -> Scanning.scanbuf -> int
val scan_optionally_signed_decimal_int : int -> Scanning.scanbuf -> int
val scan_unsigned_int : int -> Scanning.scanbuf -> int
val scan_optionally_signed_int : int -> Scanning.scanbuf -> int
val scan_int_conversion :
  integer_conversion -> int -> Scanning.scanbuf -> int
val scan_fractional_part : int -> Scanning.scanbuf -> int
val scan_exponent_part : int -> Scanning.scanbuf -> int
val scan_integer_part : int -> Scanning.scanbuf -> int
val scan_float : int -> int -> Scanning.scanbuf -> int * int
val check_case_insensitive_string :
  int -> Scanning.scanbuf -> (unit -> unit) -> string -> int
val scan_hex_float : int -> int -> Scanning.scanbuf -> int
val scan_caml_float_rest : int -> int -> Scanning.scanbuf -> int
val scan_caml_float : int -> int -> Scanning.scanbuf -> int
val scan_string : char option -> int -> Scanning.scanbuf -> int
val scan_char : int -> Scanning.scanbuf -> int
val char_for_backslash : char -> char
val decimal_value_of_char : char -> int
val char_for_decimal_code : char -> char -> char -> char
val hexadecimal_value_of_char : char -> int
val char_for_hexadecimal_code : char -> char -> char
val check_next_char : string -> int -> Scanning.scanbuf -> char
val check_next_char_for_char : int -> Scanning.scanbuf -> char
val check_next_char_for_string : int -> Scanning.scanbuf -> char
val scan_backslash_char : int -> Scanning.scanbuf -> int
val scan_caml_char : int -> Scanning.scanbuf -> int
val scan_caml_string : int -> Scanning.scanbuf -> int
val scan_bool : Scanning.scanbuf -> int
val scan_chars_in_char_set :
  CamlinternalFormatBasics.char_set ->
  char option -> int -> Scanning.scanbuf -> unit
val scanf_bad_input : Scanning.scanbuf -> exn -> 'a
val get_counter : Scanning.scanbuf -> CamlinternalFormatBasics.counter -> int
val width_of_pad_opt : int option -> int
val stopper_of_formatting_lit :
  CamlinternalFormatBasics.formatting_lit -> char * string
val take_format_readers :
  (('d, 'e) CamlinternalFormat.heter_list -> 'e) ->
  ('a, Scanning.in_channel, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  'd
val take_fmtty_format_readers :
  (('d, 'e) CamlinternalFormat.heter_list -> 'e) ->
  ('a, Scanning.in_channel, 'c, 'd, 'x, 'y) CamlinternalFormatBasics.fmtty ->
  ('y, Scanning.in_channel, 'c, 'x, 'e, 'f) CamlinternalFormatBasics.fmt ->
  'd
val take_ignored_format_readers :
  (('d, 'e) CamlinternalFormat.heter_list -> 'e) ->
  ('a, Scanning.in_channel, 'c, 'd, 'x, 'y) CamlinternalFormatBasics.ignored ->
  ('y, Scanning.in_channel, 'c, 'x, 'e, 'f) CamlinternalFormatBasics.fmt ->
  'd
val make_scanf :
  Scanning.in_channel ->
  ('a, Scanning.in_channel, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('d, 'e) CamlinternalFormat.heter_list ->
  ('a, 'f) CamlinternalFormat.heter_list
val pad_prec_scanf :
  Scanning.in_channel ->
  ('a, Scanning.in_channel, 'c, 'd, 'e, 'f) CamlinternalFormatBasics.fmt ->
  ('d, 'e) CamlinternalFormat.heter_list ->
  ('x, 'y) CamlinternalFormatBasics.padding ->
  ('y, 'z -> 'a) CamlinternalFormatBasics.precision ->
  (int -> int -> Scanning.in_channel -> 't) ->
  (Scanning.in_channel -> 'z) -> ('x, 'f) CamlinternalFormat.heter_list
type 'a kscanf_result = Args of 'a | Exc of exn
val kscanf :
  Scanning.scanbuf ->
  (Scanning.scanbuf -> exn -> 'a) ->
  ('b, Scanning.in_channel, 'c, 'd, 'b -> 'a, 'a)
  CamlinternalFormatBasics.format6 -> 'd
val kbscanf :
  Scanning.scanbuf ->
  (Scanning.scanbuf -> exn -> 'a) ->
  ('b, Scanning.in_channel, 'c, 'd, 'b -> 'a, 'a)
  CamlinternalFormatBasics.format6 -> 'd
val bscanf :
  Scanning.scanbuf ->
  ('a, Scanning.in_channel, 'b, 'c, 'a -> 'd, 'd)
  CamlinternalFormatBasics.format6 -> 'c
val ksscanf :
  string ->
  (Scanning.scanbuf -> exn -> 'a) ->
  ('b, Scanning.in_channel, 'c, 'd, 'b -> 'a, 'a)
  CamlinternalFormatBasics.format6 -> 'd
val sscanf :
  string ->
  ('a, Scanning.in_channel, 'b, 'c, 'a -> 'd, 'd)
  CamlinternalFormatBasics.format6 -> 'c
val scanf :
  ('a, Scanning.in_channel, 'b, 'c, 'a -> 'd, 'd)
  CamlinternalFormatBasics.format6 -> 'c
val bscanf_format :
  Scanning.in_channel ->
  ('a, 'b, 'c, 'd, 'e, 'f) format6 ->
  (('a, 'b, 'c, 'd, 'e, 'f) format6 -> 'g) -> 'g
val sscanf_format :
  string ->
  ('a, 'b, 'c, 'd, 'e, 'f) format6 ->
  (('a, 'b, 'c, 'd, 'e, 'f) format6 -> 'g) -> 'g
val format_from_string :
  string ->
  ('a, 'b, 'c, 'd, 'e, 'f) format6 -> ('a, 'b, 'c, 'd, 'e, 'f) format6
val unescaped : string -> string
val kfscanf :
  in_channel ->
  (Scanning.scanbuf -> exn -> 'a) ->
  ('b, Scanning.in_channel, 'c, 'd, 'b -> 'a, 'a)
  CamlinternalFormatBasics.format6 -> 'd
val fscanf :
  in_channel ->
  ('a, Scanning.in_channel, 'b, 'c, 'a -> 'd, 'd)
  CamlinternalFormatBasics.format6 -> 'c
