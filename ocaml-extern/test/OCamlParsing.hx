type parser_env = {
  mutable s_stack : int array;
  mutable v_stack : Obj.t array;
  mutable symb_start_stack : Lexing.position array;
  mutable symb_end_stack : Lexing.position array;
  mutable stacksize : int;
  mutable stackbase : int;
  mutable curr_char : int;
  mutable lval : Obj.t;
  mutable symb_start : Lexing.position;
  mutable symb_end : Lexing.position;
  mutable asp : int;
  mutable rule_len : int;
  mutable rule_number : int;
  mutable sp : int;
  mutable state : int;
  mutable errflag : int;
}
type parse_tables = {
  actions : (parser_env -> Obj.t) array;
  transl_const : int array;
  transl_block : int array;
  lhs : string;
  len : string;
  defred : string;
  dgoto : string;
  sindex : string;
  rindex : string;
  gindex : string;
  tablesize : int;
  table : string;
  check : string;
  error_function : string -> unit;
  names_const : string;
  names_block : string;
}
exception YYexit of Obj.t
exception Parse_error
type parser_input =
    Start
  | Token_read
  | Stacks_grown_1
  | Stacks_grown_2
  | Semantic_action_computed
  | Error_detected
type parser_output =
    Read_token
  | Raise_parse_error
  | Grow_stacks_1
  | Grow_stacks_2
  | Compute_semantic_action
  | Call_error_function
external parse_engine :
  parse_tables -> parser_env -> parser_input -> Obj.t -> parser_output
  = "caml_parse_engine"
external set_trace : bool -> bool = "caml_set_parser_trace"
val env : parser_env
val grow_stacks : unit -> unit
val clear_parser : unit -> unit
val current_lookahead_fun : (Obj.t -> bool) ref
val yyparse :
  parse_tables -> int -> (Lexing.lexbuf -> 'a) -> Lexing.lexbuf -> 'b
val peek_val : parser_env -> int -> 'a
val symbol_start_pos : unit -> Lexing.position
val symbol_end_pos : unit -> Lexing.position
val rhs_start_pos : int -> Lexing.position
val rhs_end_pos : int -> Lexing.position
val symbol_start : unit -> int
val symbol_end : unit -> int
val rhs_start : int -> int
val rhs_end : int -> int
val is_current_lookahead : 'a -> bool
val parse_error : string -> unit
