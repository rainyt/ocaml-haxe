external set_id : 'a -> 'a = "caml_set_oo_id" [@@noalloc]
val copy : 'a -> 'b
type params = {
  mutable compact_table : bool;
  mutable copy_parent : bool;
  mutable clean_when_copying : bool;
  mutable retry_count : int;
  mutable bucket_small_size : int;
}
val params : params
val initial_object_size : int
type item = DummyA | DummyB | DummyC of int
val dummy_item : item
type tag
type label = int
type closure = item
type t = DummyA | DummyB | DummyC of int
type obj = t array
external ret : (obj -> 'a) -> closure = "%identity"
val public_method_label : string -> tag
module Vars :
  sig
    type key = string
    type +!'a t
    val empty : 'a t
    val is_empty : 'a t -> bool
    val mem : key -> 'a t -> bool
    val add : key -> 'a -> 'a t -> 'a t
    val update : key -> ('a option -> 'a option) -> 'a t -> 'a t
    val singleton : key -> 'a -> 'a t
    val remove : key -> 'a t -> 'a t
    val merge :
      (key -> 'a option -> 'b option -> 'c option) -> 'a t -> 'b t -> 'c t
    val union : (key -> 'a -> 'a -> 'a option) -> 'a t -> 'a t -> 'a t
    val compare : ('a -> 'a -> int) -> 'a t -> 'a t -> int
    val equal : ('a -> 'a -> bool) -> 'a t -> 'a t -> bool
    val iter : (key -> 'a -> unit) -> 'a t -> unit
    val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
    val for_all : (key -> 'a -> bool) -> 'a t -> bool
    val exists : (key -> 'a -> bool) -> 'a t -> bool
    val filter : (key -> 'a -> bool) -> 'a t -> 'a t
    val filter_map : (key -> 'a -> 'b option) -> 'a t -> 'b t
    val partition : (key -> 'a -> bool) -> 'a t -> 'a t * 'a t
    val cardinal : 'a t -> int
    val bindings : 'a t -> (key * 'a) list
    val min_binding : 'a t -> key * 'a
    val min_binding_opt : 'a t -> (key * 'a) option
    val max_binding : 'a t -> key * 'a
    val max_binding_opt : 'a t -> (key * 'a) option
    val choose : 'a t -> key * 'a
    val choose_opt : 'a t -> (key * 'a) option
    val split : key -> 'a t -> 'a t * 'a option * 'a t
    val find : key -> 'a t -> 'a
    val find_opt : key -> 'a t -> 'a option
    val find_first : (key -> bool) -> 'a t -> key * 'a
    val find_first_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val find_last : (key -> bool) -> 'a t -> key * 'a
    val find_last_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val map : ('a -> 'b) -> 'a t -> 'b t
    val mapi : (key -> 'a -> 'b) -> 'a t -> 'b t
    val to_seq : 'a t -> (key * 'a) Seq.t
    val to_rev_seq : 'a t -> (key * 'a) Seq.t
    val to_seq_from : key -> 'a t -> (key * 'a) Seq.t
    val add_seq : (key * 'a) Seq.t -> 'a t -> 'a t
    val of_seq : (key * 'a) Seq.t -> 'a t
  end
type vars = int Vars.t
module Meths :
  sig
    type key = string
    type +!'a t
    val empty : 'a t
    val is_empty : 'a t -> bool
    val mem : key -> 'a t -> bool
    val add : key -> 'a -> 'a t -> 'a t
    val update : key -> ('a option -> 'a option) -> 'a t -> 'a t
    val singleton : key -> 'a -> 'a t
    val remove : key -> 'a t -> 'a t
    val merge :
      (key -> 'a option -> 'b option -> 'c option) -> 'a t -> 'b t -> 'c t
    val union : (key -> 'a -> 'a -> 'a option) -> 'a t -> 'a t -> 'a t
    val compare : ('a -> 'a -> int) -> 'a t -> 'a t -> int
    val equal : ('a -> 'a -> bool) -> 'a t -> 'a t -> bool
    val iter : (key -> 'a -> unit) -> 'a t -> unit
    val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
    val for_all : (key -> 'a -> bool) -> 'a t -> bool
    val exists : (key -> 'a -> bool) -> 'a t -> bool
    val filter : (key -> 'a -> bool) -> 'a t -> 'a t
    val filter_map : (key -> 'a -> 'b option) -> 'a t -> 'b t
    val partition : (key -> 'a -> bool) -> 'a t -> 'a t * 'a t
    val cardinal : 'a t -> int
    val bindings : 'a t -> (key * 'a) list
    val min_binding : 'a t -> key * 'a
    val min_binding_opt : 'a t -> (key * 'a) option
    val max_binding : 'a t -> key * 'a
    val max_binding_opt : 'a t -> (key * 'a) option
    val choose : 'a t -> key * 'a
    val choose_opt : 'a t -> (key * 'a) option
    val split : key -> 'a t -> 'a t * 'a option * 'a t
    val find : key -> 'a t -> 'a
    val find_opt : key -> 'a t -> 'a option
    val find_first : (key -> bool) -> 'a t -> key * 'a
    val find_first_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val find_last : (key -> bool) -> 'a t -> key * 'a
    val find_last_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val map : ('a -> 'b) -> 'a t -> 'b t
    val mapi : (key -> 'a -> 'b) -> 'a t -> 'b t
    val to_seq : 'a t -> (key * 'a) Seq.t
    val to_rev_seq : 'a t -> (key * 'a) Seq.t
    val to_seq_from : key -> 'a t -> (key * 'a) Seq.t
    val add_seq : (key * 'a) Seq.t -> 'a t -> 'a t
    val of_seq : (key * 'a) Seq.t -> 'a t
  end
type meths = label Meths.t
module Labs :
  sig
    type key = label
    type +!'a t
    val empty : 'a t
    val is_empty : 'a t -> bool
    val mem : key -> 'a t -> bool
    val add : key -> 'a -> 'a t -> 'a t
    val update : key -> ('a option -> 'a option) -> 'a t -> 'a t
    val singleton : key -> 'a -> 'a t
    val remove : key -> 'a t -> 'a t
    val merge :
      (key -> 'a option -> 'b option -> 'c option) -> 'a t -> 'b t -> 'c t
    val union : (key -> 'a -> 'a -> 'a option) -> 'a t -> 'a t -> 'a t
    val compare : ('a -> 'a -> int) -> 'a t -> 'a t -> int
    val equal : ('a -> 'a -> bool) -> 'a t -> 'a t -> bool
    val iter : (key -> 'a -> unit) -> 'a t -> unit
    val fold : (key -> 'a -> 'b -> 'b) -> 'a t -> 'b -> 'b
    val for_all : (key -> 'a -> bool) -> 'a t -> bool
    val exists : (key -> 'a -> bool) -> 'a t -> bool
    val filter : (key -> 'a -> bool) -> 'a t -> 'a t
    val filter_map : (key -> 'a -> 'b option) -> 'a t -> 'b t
    val partition : (key -> 'a -> bool) -> 'a t -> 'a t * 'a t
    val cardinal : 'a t -> int
    val bindings : 'a t -> (key * 'a) list
    val min_binding : 'a t -> key * 'a
    val min_binding_opt : 'a t -> (key * 'a) option
    val max_binding : 'a t -> key * 'a
    val max_binding_opt : 'a t -> (key * 'a) option
    val choose : 'a t -> key * 'a
    val choose_opt : 'a t -> (key * 'a) option
    val split : key -> 'a t -> 'a t * 'a option * 'a t
    val find : key -> 'a t -> 'a
    val find_opt : key -> 'a t -> 'a option
    val find_first : (key -> bool) -> 'a t -> key * 'a
    val find_first_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val find_last : (key -> bool) -> 'a t -> key * 'a
    val find_last_opt : (key -> bool) -> 'a t -> (key * 'a) option
    val map : ('a -> 'b) -> 'a t -> 'b t
    val mapi : (key -> 'a -> 'b) -> 'a t -> 'b t
    val to_seq : 'a t -> (key * 'a) Seq.t
    val to_rev_seq : 'a t -> (key * 'a) Seq.t
    val to_seq_from : key -> 'a t -> (key * 'a) Seq.t
    val add_seq : (key * 'a) Seq.t -> 'a t -> 'a t
    val of_seq : (key * 'a) Seq.t -> 'a t
  end
type labs = bool Labs.t
type table = {
  mutable size : int;
  mutable methods : closure array;
  mutable methods_by_name : meths;
  mutable methods_by_label : labs;
  mutable previous_states :
    (meths * labs * (label * item) list * vars * label list * string list)
    list;
  mutable hidden_meths : (label * item) list;
  mutable vars : vars;
  mutable initializers : (obj -> unit) list;
}
val dummy_table : table
val table_count : int ref
val dummy_met : item
val fit_size : int -> int
val new_table : 'a array -> table
val resize : table -> int -> unit
val put : table -> int -> closure -> unit
val method_count : int ref
val inst_var_count : int ref
type meth = item
val new_method : table -> int
val get_method_label : table -> Meths.key -> label
val get_method_labels : table -> Meths.key array -> label array
val set_method : table -> Labs.key -> closure -> unit
val get_method : table -> label -> closure
val to_list : 'a array -> 'a list
val narrow :
  table -> Vars.key array -> Meths.key array -> Meths.key array -> unit
val widen : table -> unit
val new_slot : table -> int
val new_variable : table -> Vars.key -> int
val to_array : 'a array -> 'a array
val new_methods_variables :
  table -> Meths.key array -> Vars.key array -> int array
val get_variable : table -> Vars.key -> int
val get_variables : table -> Vars.key array -> int array
val add_initializer : table -> (obj -> unit) -> unit
val create_table : Meths.key array -> table
val init_class : table -> unit
val inherits :
  table ->
  Vars.key array ->
  Meths.key array ->
  Meths.key array ->
  'a * (table -> 'b -> Obj.t) * 'c * 'b -> bool -> Obj.t array
val make_class :
  Meths.key array ->
  (table -> Obj.t -> 'a) ->
  'a * (table -> Obj.t -> 'a) * (Obj.t -> 'a) * Obj.t
type init_table = { mutable env_init : t; mutable class_init : table -> t; }
val make_class_store : Meths.key array -> (table -> t) -> init_table -> unit
val dummy_class : string * int * int -> 'a * ('b -> 'c) * ('d -> 'e) * Obj.t
val create_object : table -> 'a
val create_object_opt : 'a -> table -> 'a
val iter_f : 'a -> ('a -> 'b) list -> unit
val run_initializers : obj -> table -> unit
val run_initializers_opt : 'a -> obj -> table -> obj
val create_object_and_run_initializers : 'a -> table -> 'a
external send : obj -> tag -> 'a = "%send"
external sendcache : obj -> tag -> t -> int -> 'a = "%sendcache"
external sendself : obj -> label -> 'a = "%sendself"
external get_public_method : obj -> tag -> closure = "caml_get_public_method"
  [@@noalloc]
type tables =
    Empty
  | Cons of { key : closure; mutable data : tables; mutable next : tables; }
val set_data : tables -> tables -> unit
val set_next : tables -> tables -> unit
val get_key : tables -> closure
val get_data : tables -> tables
val get_next : tables -> tables
val build_path : int -> closure array -> tables -> tables
val lookup_keys : int -> closure array -> tables -> tables
val lookup_tables : tables -> closure array -> tables
val get_const : 'a -> closure
val get_var : int -> closure
val get_env : int -> int -> closure
val get_meth : label -> closure
val set_var : int -> closure
val app_const : ('a -> 'b) -> 'a -> closure
val app_var : (t -> 'a) -> int -> closure
val app_env : (t -> 'a) -> int -> int -> closure
val app_meth : ('a -> 'b) -> label -> closure
val app_const_const : ('a -> 'b -> 'c) -> 'a -> 'b -> closure
val app_const_var : ('a -> t -> 'b) -> 'a -> int -> closure
val app_const_meth : ('a -> 'b -> 'c) -> 'a -> label -> closure
val app_var_const : (t -> 'a -> 'b) -> int -> 'a -> closure
val app_meth_const : ('a -> 'b -> 'c) -> label -> 'b -> closure
val app_const_env : ('a -> t -> 'b) -> 'a -> int -> int -> closure
val app_env_const : (t -> 'a -> 'b) -> int -> int -> 'a -> closure
val meth_app_const : label -> 'a -> closure
val meth_app_var : label -> int -> closure
val meth_app_env : label -> int -> int -> closure
val meth_app_meth : label -> label -> closure
val send_const : tag -> obj -> int -> closure
val send_var : tag -> int -> int -> closure
val send_env : tag -> int -> int -> int -> closure
val send_meth : tag -> label -> int -> closure
val new_cache : table -> int
type impl =
    GetConst
  | GetVar
  | GetEnv
  | GetMeth
  | SetVar
  | AppConst
  | AppVar
  | AppEnv
  | AppMeth
  | AppConstConst
  | AppConstVar
  | AppConstEnv
  | AppConstMeth
  | AppVarConst
  | AppEnvConst
  | AppMethConst
  | MethAppConst
  | MethAppVar
  | MethAppEnv
  | MethAppMeth
  | SendConst
  | SendVar
  | SendEnv
  | SendMeth
  | Closure of closure
val method_impl : table -> int ref -> 'a array -> closure
val set_methods : table -> Labs.key array -> unit
type stats = { classes : int; methods : int; inst_vars : int; }
val stats : unit -> stats
