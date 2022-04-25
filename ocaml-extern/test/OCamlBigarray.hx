type float32_elt = Float32_elt
type float64_elt = Float64_elt
type int8_signed_elt = Int8_signed_elt
type int8_unsigned_elt = Int8_unsigned_elt
type int16_signed_elt = Int16_signed_elt
type int16_unsigned_elt = Int16_unsigned_elt
type int32_elt = Int32_elt
type int64_elt = Int64_elt
type int_elt = Int_elt
type nativeint_elt = Nativeint_elt
type complex32_elt = Complex32_elt
type complex64_elt = Complex64_elt
type ('a, 'b) kind =
    Float32 : (float, float32_elt) kind
  | Float64 : (float, float64_elt) kind
  | Int8_signed : (int, int8_signed_elt) kind
  | Int8_unsigned : (int, int8_unsigned_elt) kind
  | Int16_signed : (int, int16_signed_elt) kind
  | Int16_unsigned : (int, int16_unsigned_elt) kind
  | Int32 : (int32, int32_elt) kind
  | Int64 : (int64, int64_elt) kind
  | Int : (int, int_elt) kind
  | Nativeint : (nativeint, nativeint_elt) kind
  | Complex32 : (Complex.t, complex32_elt) kind
  | Complex64 : (Complex.t, complex64_elt) kind
  | Char : (char, int8_unsigned_elt) kind
type c_layout = C_layout_typ
type fortran_layout = Fortran_layout_typ
type 'a layout =
    C_layout : c_layout layout
  | Fortran_layout : fortran_layout layout
val float32 : (float, float32_elt) kind
val float64 : (float, float64_elt) kind
val int8_signed : (int, int8_signed_elt) kind
val int8_unsigned : (int, int8_unsigned_elt) kind
val int16_signed : (int, int16_signed_elt) kind
val int16_unsigned : (int, int16_unsigned_elt) kind
val int32 : (int32, int32_elt) kind
val int64 : (int64, int64_elt) kind
val int : (int, int_elt) kind
val nativeint : (nativeint, nativeint_elt) kind
val complex32 : (Complex.t, complex32_elt) kind
val complex64 : (Complex.t, complex64_elt) kind
val char : (char, int8_unsigned_elt) kind
val kind_size_in_bytes : ('a, 'b) kind -> int
val c_layout : c_layout layout
val fortran_layout : fortran_layout layout
module Genarray :
  sig
    type (!'a, !'b, !'c) t
    external create :
      ('a, 'b) kind -> 'c layout -> int array -> ('a, 'b, 'c) t
      = "caml_ba_create"
    external get : ('a, 'b, 'c) t -> int array -> 'a = "caml_ba_get_generic"
    external set : ('a, 'b, 'c) t -> int array -> 'a -> unit
      = "caml_ba_set_generic"
    val cloop :
      ('a, 'b, 'c) t ->
      int array -> (int array -> 'a) -> int -> int array -> unit
    val floop :
      ('a, 'b, 'c) t ->
      int array -> (int array -> 'a) -> int -> int array -> unit
    val init :
      ('a, 'b) kind ->
      't layout -> int array -> (int array -> 'a) -> ('a, 'b, 't) t
    external num_dims : ('a, 'b, 'c) t -> int = "caml_ba_num_dims"
    external nth_dim : ('a, 'b, 'c) t -> int -> int = "caml_ba_dim"
    val dims : ('a, 'b, 'c) t -> int array
    external kind : ('a, 'b, 'c) t -> ('a, 'b) kind = "caml_ba_kind"
    external layout : ('a, 'b, 'c) t -> 'c layout = "caml_ba_layout"
    external change_layout : ('a, 'b, 'c) t -> 'd layout -> ('a, 'b, 'd) t
      = "caml_ba_change_layout"
    val size_in_bytes : ('a, 'b, 'c) t -> int
    external sub_left :
      ('a, 'b, c_layout) t -> int -> int -> ('a, 'b, c_layout) t
      = "caml_ba_sub"
    external sub_right :
      ('a, 'b, fortran_layout) t -> int -> int -> ('a, 'b, fortran_layout) t
      = "caml_ba_sub"
    external slice_left :
      ('a, 'b, c_layout) t -> int array -> ('a, 'b, c_layout) t
      = "caml_ba_slice"
    external slice_right :
      ('a, 'b, fortran_layout) t -> int array -> ('a, 'b, fortran_layout) t
      = "caml_ba_slice"
    external blit : ('a, 'b, 'c) t -> ('a, 'b, 'c) t -> unit = "caml_ba_blit"
    external fill : ('a, 'b, 'c) t -> 'a -> unit = "caml_ba_fill"
  end
module Array0 :
  sig
    type ('a, 'b, 'c) t = ('a, 'b, 'c) Genarray.t
    val create : ('a, 'b) kind -> 'c layout -> ('a, 'b, 'c) Genarray.t
    val get : ('a, 'b, 'c) Genarray.t -> 'a
    val set : ('a, 'b, 'c) Genarray.t -> 'a -> unit
    external kind : ('a, 'b, 'c) t -> ('a, 'b) kind = "caml_ba_kind"
    external layout : ('a, 'b, 'c) t -> 'c layout = "caml_ba_layout"
    external change_layout : ('a, 'b, 'c) t -> 'd layout -> ('a, 'b, 'd) t
      = "caml_ba_change_layout"
    val size_in_bytes : ('a, 'b, 'c) t -> int
    external blit : ('a, 'b, 'c) t -> ('a, 'b, 'c) t -> unit = "caml_ba_blit"
    external fill : ('a, 'b, 'c) t -> 'a -> unit = "caml_ba_fill"
    val of_value :
      ('a, 'b) kind -> 'c layout -> 'a -> ('a, 'b, 'c) Genarray.t
    val init : ('a, 'b) kind -> 'c layout -> 'a -> ('a, 'b, 'c) Genarray.t
  end
module Array1 :
  sig
    type ('a, 'b, 'c) t = ('a, 'b, 'c) Genarray.t
    val create : ('a, 'b) kind -> 'c layout -> int -> ('a, 'b, 'c) Genarray.t
    external get : ('a, 'b, 'c) t -> int -> 'a = "%caml_ba_ref_1"
    external set : ('a, 'b, 'c) t -> int -> 'a -> unit = "%caml_ba_set_1"
    external unsafe_get : ('a, 'b, 'c) t -> int -> 'a
      = "%caml_ba_unsafe_ref_1"
    external unsafe_set : ('a, 'b, 'c) t -> int -> 'a -> unit
      = "%caml_ba_unsafe_set_1"
    external dim : ('a, 'b, 'c) t -> int = "%caml_ba_dim_1"
    external kind : ('a, 'b, 'c) t -> ('a, 'b) kind = "caml_ba_kind"
    external layout : ('a, 'b, 'c) t -> 'c layout = "caml_ba_layout"
    external change_layout : ('a, 'b, 'c) t -> 'd layout -> ('a, 'b, 'd) t
      = "caml_ba_change_layout"
    val size_in_bytes : ('a, 'b, 'c) t -> int
    external sub : ('a, 'b, 'c) t -> int -> int -> ('a, 'b, 'c) t
      = "caml_ba_sub"
    val slice : ('a, 'b, 't) Genarray.t -> int -> ('a, 'b, 't) Genarray.t
    external blit : ('a, 'b, 'c) t -> ('a, 'b, 'c) t -> unit = "caml_ba_blit"
    external fill : ('a, 'b, 'c) t -> 'a -> unit = "caml_ba_fill"
    val c_init : ('a, 'b, 'c) t -> int -> (int -> 'a) -> unit
    val fortran_init : ('a, 'b, 'c) t -> int -> (int -> 'a) -> unit
    val init :
      ('a, 'b) kind ->
      't layout -> int -> (int -> 'a) -> ('a, 'b, 't) Genarray.t
    val of_array :
      ('a, 'b) kind -> 't layout -> 'a array -> ('a, 'b, 't) Genarray.t
  end
module Array2 :
  sig
    type ('a, 'b, 'c) t = ('a, 'b, 'c) Genarray.t
    val create :
      ('a, 'b) kind -> 'c layout -> int -> int -> ('a, 'b, 'c) Genarray.t
    external get : ('a, 'b, 'c) t -> int -> int -> 'a = "%caml_ba_ref_2"
    external set : ('a, 'b, 'c) t -> int -> int -> 'a -> unit
      = "%caml_ba_set_2"
    external unsafe_get : ('a, 'b, 'c) t -> int -> int -> 'a
      = "%caml_ba_unsafe_ref_2"
    external unsafe_set : ('a, 'b, 'c) t -> int -> int -> 'a -> unit
      = "%caml_ba_unsafe_set_2"
    external dim1 : ('a, 'b, 'c) t -> int = "%caml_ba_dim_1"
    external dim2 : ('a, 'b, 'c) t -> int = "%caml_ba_dim_2"
    external kind : ('a, 'b, 'c) t -> ('a, 'b) kind = "caml_ba_kind"
    external layout : ('a, 'b, 'c) t -> 'c layout = "caml_ba_layout"
    external change_layout : ('a, 'b, 'c) t -> 'd layout -> ('a, 'b, 'd) t
      = "caml_ba_change_layout"
    val size_in_bytes : ('a, 'b, 'c) t -> int
    external sub_left :
      ('a, 'b, c_layout) t -> int -> int -> ('a, 'b, c_layout) t
      = "caml_ba_sub"
    external sub_right :
      ('a, 'b, fortran_layout) t -> int -> int -> ('a, 'b, fortran_layout) t
      = "caml_ba_sub"
    val slice_left :
      ('a, 'b, c_layout) Genarray.t -> int -> ('a, 'b, c_layout) Genarray.t
    val slice_right :
      ('a, 'b, fortran_layout) Genarray.t ->
      int -> ('a, 'b, fortran_layout) Genarray.t
    external blit : ('a, 'b, 'c) t -> ('a, 'b, 'c) t -> unit = "caml_ba_blit"
    external fill : ('a, 'b, 'c) t -> 'a -> unit = "caml_ba_fill"
    val c_init : ('a, 'b, 'c) t -> int -> int -> (int -> int -> 'a) -> unit
    val fortran_init :
      ('a, 'b, 'c) t -> int -> int -> (int -> int -> 'a) -> unit
    val init :
      ('a, 'b) kind ->
      't layout ->
      int -> int -> (int -> int -> 'a) -> ('a, 'b, 't) Genarray.t
    val of_array :
      ('a, 'b) kind -> 't layout -> 'a array array -> ('a, 'b, 't) Genarray.t
  end
module Array3 :
  sig
    type ('a, 'b, 'c) t = ('a, 'b, 'c) Genarray.t
    val create :
      ('a, 'b) kind ->
      'c layout -> int -> int -> int -> ('a, 'b, 'c) Genarray.t
    external get : ('a, 'b, 'c) t -> int -> int -> int -> 'a
      = "%caml_ba_ref_3"
    external set : ('a, 'b, 'c) t -> int -> int -> int -> 'a -> unit
      = "%caml_ba_set_3"
    external unsafe_get : ('a, 'b, 'c) t -> int -> int -> int -> 'a
      = "%caml_ba_unsafe_ref_3"
    external unsafe_set : ('a, 'b, 'c) t -> int -> int -> int -> 'a -> unit
      = "%caml_ba_unsafe_set_3"
    external dim1 : ('a, 'b, 'c) t -> int = "%caml_ba_dim_1"
    external dim2 : ('a, 'b, 'c) t -> int = "%caml_ba_dim_2"
    external dim3 : ('a, 'b, 'c) t -> int = "%caml_ba_dim_3"
    external kind : ('a, 'b, 'c) t -> ('a, 'b) kind = "caml_ba_kind"
    external layout : ('a, 'b, 'c) t -> 'c layout = "caml_ba_layout"
    external change_layout : ('a, 'b, 'c) t -> 'd layout -> ('a, 'b, 'd) t
      = "caml_ba_change_layout"
    val size_in_bytes : ('a, 'b, 'c) t -> int
    external sub_left :
      ('a, 'b, c_layout) t -> int -> int -> ('a, 'b, c_layout) t
      = "caml_ba_sub"
    external sub_right :
      ('a, 'b, fortran_layout) t -> int -> int -> ('a, 'b, fortran_layout) t
      = "caml_ba_sub"
    val slice_left_1 :
      ('a, 'b, c_layout) Genarray.t ->
      int -> int -> ('a, 'b, c_layout) Genarray.t
    val slice_right_1 :
      ('a, 'b, fortran_layout) Genarray.t ->
      int -> int -> ('a, 'b, fortran_layout) Genarray.t
    val slice_left_2 :
      ('a, 'b, c_layout) Genarray.t -> int -> ('a, 'b, c_layout) Genarray.t
    val slice_right_2 :
      ('a, 'b, fortran_layout) Genarray.t ->
      int -> ('a, 'b, fortran_layout) Genarray.t
    external blit : ('a, 'b, 'c) t -> ('a, 'b, 'c) t -> unit = "caml_ba_blit"
    external fill : ('a, 'b, 'c) t -> 'a -> unit = "caml_ba_fill"
    val c_init :
      ('a, 'b, 'c) t ->
      int -> int -> int -> (int -> int -> int -> 'a) -> unit
    val fortran_init :
      ('a, 'b, 'c) t ->
      int -> int -> int -> (int -> int -> int -> 'a) -> unit
    val init :
      ('a, 'b) kind ->
      't layout ->
      int ->
      int -> int -> (int -> int -> int -> 'a) -> ('a, 'b, 't) Genarray.t
    val of_array :
      ('a, 'b) kind ->
      't layout -> 'a array array array -> ('a, 'b, 't) Genarray.t
  end
external genarray_of_array0 :
  ('a, 'b, 'c) Array0.t -> ('a, 'b, 'c) Genarray.t = "%identity"
external genarray_of_array1 :
  ('a, 'b, 'c) Array1.t -> ('a, 'b, 'c) Genarray.t = "%identity"
external genarray_of_array2 :
  ('a, 'b, 'c) Array2.t -> ('a, 'b, 'c) Genarray.t = "%identity"
external genarray_of_array3 :
  ('a, 'b, 'c) Array3.t -> ('a, 'b, 'c) Genarray.t = "%identity"
val array0_of_genarray : ('a, 'b, 'c) Genarray.t -> ('a, 'b, 'c) Genarray.t
val array1_of_genarray : ('a, 'b, 'c) Genarray.t -> ('a, 'b, 'c) Genarray.t
val array2_of_genarray : ('a, 'b, 'c) Genarray.t -> ('a, 'b, 'c) Genarray.t
val array3_of_genarray : ('a, 'b, 'c) Genarray.t -> ('a, 'b, 'c) Genarray.t
external reshape :
  ('a, 'b, 'c) Genarray.t -> int array -> ('a, 'b, 'c) Genarray.t
  = "caml_ba_reshape"
val reshape_0 : ('a, 'b, 'c) Genarray.t -> ('a, 'b, 'c) Genarray.t
val reshape_1 : ('a, 'b, 'c) Genarray.t -> int -> ('a, 'b, 'c) Genarray.t
val reshape_2 :
  ('a, 'b, 'c) Genarray.t -> int -> int -> ('a, 'b, 'c) Genarray.t
val reshape_3 :
  ('a, 'b, 'c) Genarray.t -> int -> int -> int -> ('a, 'b, 'c) Genarray.t
external get1 : unit -> unit = "caml_ba_get_1"
external get2 : unit -> unit = "caml_ba_get_2"
external get3 : unit -> unit = "caml_ba_get_3"
external set1 : unit -> unit = "caml_ba_set_1"
external set2 : unit -> unit = "caml_ba_set_2"
external set3 : unit -> unit = "caml_ba_set_3"
