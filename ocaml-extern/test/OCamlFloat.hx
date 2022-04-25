external neg : float -> float = "%negfloat"
external add : float -> float -> float = "%addfloat"
external sub : float -> float -> float = "%subfloat"
external mul : float -> float -> float = "%mulfloat"
external div : float -> float -> float = "%divfloat"
external rem : float -> float -> float = "caml_fmod_float" "fmod" [@@unboxed]
  [@@noalloc]
external fma : float -> float -> float -> float = "caml_fma_float" "caml_fma"
  [@@unboxed] [@@noalloc]
external abs : float -> float = "%absfloat"
val zero : float
val one : float
val minus_one : float
val infinity : float
val neg_infinity : float
val nan : float
val is_finite : float -> bool
val is_infinite : float -> bool
val is_nan : float -> bool
val pi : float
val max_float : float
val min_float : float
val epsilon : float
external of_int : int -> float = "%floatofint"
external to_int : float -> int = "%intoffloat"
external of_string : string -> float = "caml_float_of_string"
val of_string_opt : string -> float option
val to_string : float -> string
type fpclass =
  fpclass =
    FP_normal
  | FP_subnormal
  | FP_zero
  | FP_infinite
  | FP_nan
external classify_float : (float [@unboxed]) -> fpclass
  = "caml_classify_float" "caml_classify_float_unboxed" [@@noalloc]
external pow : float -> float -> float = "caml_power_float" "pow" [@@unboxed]
  [@@noalloc]
external sqrt : float -> float = "caml_sqrt_float" "sqrt" [@@unboxed]
  [@@noalloc]
external exp : float -> float = "caml_exp_float" "exp" [@@unboxed]
  [@@noalloc]
external log : float -> float = "caml_log_float" "log" [@@unboxed]
  [@@noalloc]
external log10 : float -> float = "caml_log10_float" "log10" [@@unboxed]
  [@@noalloc]
external expm1 : float -> float = "caml_expm1_float" "caml_expm1" [@@unboxed]
  [@@noalloc]
external log1p : float -> float = "caml_log1p_float" "caml_log1p" [@@unboxed]
  [@@noalloc]
external cos : float -> float = "caml_cos_float" "cos" [@@unboxed]
  [@@noalloc]
external sin : float -> float = "caml_sin_float" "sin" [@@unboxed]
  [@@noalloc]
external tan : float -> float = "caml_tan_float" "tan" [@@unboxed]
  [@@noalloc]
external acos : float -> float = "caml_acos_float" "acos" [@@unboxed]
  [@@noalloc]
external asin : float -> float = "caml_asin_float" "asin" [@@unboxed]
  [@@noalloc]
external atan : float -> float = "caml_atan_float" "atan" [@@unboxed]
  [@@noalloc]
external atan2 : float -> float -> float = "caml_atan2_float" "atan2"
  [@@unboxed] [@@noalloc]
external hypot : float -> float -> float = "caml_hypot_float" "caml_hypot"
  [@@unboxed] [@@noalloc]
external cosh : float -> float = "caml_cosh_float" "cosh" [@@unboxed]
  [@@noalloc]
external sinh : float -> float = "caml_sinh_float" "sinh" [@@unboxed]
  [@@noalloc]
external tanh : float -> float = "caml_tanh_float" "tanh" [@@unboxed]
  [@@noalloc]
external trunc : float -> float = "caml_trunc_float" "caml_trunc" [@@unboxed]
  [@@noalloc]
external round : float -> float = "caml_round_float" "caml_round" [@@unboxed]
  [@@noalloc]
external ceil : float -> float = "caml_ceil_float" "ceil" [@@unboxed]
  [@@noalloc]
external floor : float -> float = "caml_floor_float" "floor" [@@unboxed]
  [@@noalloc]
val is_integer : float -> bool
external next_after : float -> float -> float = "caml_nextafter_float"
  "caml_nextafter" [@@unboxed] [@@noalloc]
val succ : float -> float
val pred : float -> float
external copy_sign : float -> float -> float = "caml_copysign_float"
  "caml_copysign" [@@unboxed] [@@noalloc]
external sign_bit : (float [@unboxed]) -> bool = "caml_signbit_float"
  "caml_signbit" [@@noalloc]
external frexp : float -> float * int = "caml_frexp_float"
external ldexp :
  (float [@unboxed]) -> (int [@untagged]) -> (float [@unboxed])
  = "caml_ldexp_float" "caml_ldexp_float_unboxed" [@@noalloc]
external modf : float -> float * float = "caml_modf_float"
type t = float
external compare : float -> float -> int = "%compare"
val equal : float -> float -> bool
val min : float -> float -> float
val max : float -> float -> float
val min_max : float -> float -> float * float
val min_num : float -> float -> float
val max_num : float -> float -> float
val min_max_num : float -> float -> float * float
external seeded_hash_param : int -> int -> int -> float -> int = "caml_hash"
  [@@noalloc]
val hash : float -> int
module Array :
  sig
    type t = floatarray
    external length : t -> int = "%floatarray_length"
    external get : t -> int -> float = "%floatarray_safe_get"
    external set : t -> int -> float -> unit = "%floatarray_safe_set"
    external create : int -> t = "caml_floatarray_create"
    external unsafe_get : t -> int -> float = "%floatarray_unsafe_get"
    external unsafe_set : t -> int -> float -> unit
      = "%floatarray_unsafe_set"
    val unsafe_fill : t -> int -> int -> float -> unit
    external unsafe_blit : t -> int -> t -> int -> int -> unit
      = "caml_floatarray_blit" [@@noalloc]
    val check : t -> int -> int -> string -> unit
    val make : int -> float -> t
    val init : int -> (int -> float) -> t
    val append : t -> t -> t
    val ensure_ge : int -> int -> int
    val sum_lengths : int -> t list -> int
    val concat : t list -> t
    val sub : t -> int -> int -> t
    val copy : t -> t
    val fill : t -> int -> int -> float -> unit
    val blit : t -> int -> t -> int -> int -> unit
    val to_list : t -> float list
    val of_list : float list -> t
    val iter : (float -> 'a) -> t -> unit
    val iter2 : (float -> float -> 'a) -> t -> t -> unit
    val map : (float -> float) -> t -> t
    val map2 : (float -> float -> float) -> t -> t -> t
    val iteri : (int -> float -> 'a) -> t -> unit
    val mapi : (int -> float -> float) -> t -> t
    val fold_left : ('a -> float -> 'a) -> 'a -> t -> 'a
    val fold_right : (float -> 'a -> 'a) -> t -> 'a -> 'a
    val exists : (float -> bool) -> t -> bool
    val for_all : (float -> bool) -> t -> bool
    val mem : float -> t -> bool
    val mem_ieee : float -> t -> bool
    exception Bottom of int
    val sort : (float -> float -> int) -> t -> unit
    val cutoff : int
    val stable_sort : (float -> float -> int) -> t -> unit
    val fast_sort : (float -> float -> int) -> t -> unit
    val to_seq : t -> float Seq.t
    val to_seqi : t -> (int * float) Seq.t
    val of_rev_list : float list -> t
    val of_seq : float Seq.t -> t
    val map_to_array : (float -> 'a) -> t -> 'a array
    val map_from_array : ('a -> float) -> 'a array -> t
  end
module ArrayLabels = Array
