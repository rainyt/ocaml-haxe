typedef Bigarray_Int_elt  = Dynamic;

typedef Bigarray_Nativeint_elt  = Dynamic;

typedef Bigarray_C_layout  = Dynamic;

typedef Bigarray_Fortran_layout  = Dynamic;

@:native("Bigarray")
extern class OCamlBigarray {
public static var float32:Dynamic;
public static var float64:Dynamic;
public static var int8_signed:Dynamic;
public static var int8_unsigned:Dynamic;
public static var int16_signed:Dynamic;
public static var int16_unsigned:Dynamic;
public static var int32:Dynamic;
public static var int64:Dynamic;
public static var int:Dynamic;
public static var nativeint:Dynamic;
public static var complex32:Dynamic;
public static var complex64:Dynamic;
public static var char:Dynamic;
public static function kind_size_in_bytes(a0:Dynamic):Int;
public static var c_layout:Dynamic;
public static var fortran_layout:Dynamic;
public static var create:Dynamic;
public static function get(a0:Dynamic,a1:OCamlArray<Int>):Dynamic;
public static function set(a0:Dynamic,a1:OCamlArray<Int>,a2:Dynamic):Void;
public static var cloop:Dynamic;
public static var floop:Dynamic;
public static var init:Dynamic;
public static function num_dims(a0:Dynamic):Int;
public static function nth_dim(a0:Dynamic,a1:Int):Int;
public static function dims(a0:Dynamic):OCamlArray<Int>;
public static var kind:Dynamic;
public static function layout(a0:Dynamic):Dynamic;
public static var change_layout:Dynamic;
public static function size_in_bytes(a0:Dynamic):Int;
public static var sub_left:Dynamic;
public static var sub_right:Dynamic;
public static var slice_left:Dynamic;
public static var slice_right:Dynamic;
public static function blit(a0:Dynamic):Void;
public static function fill(a0:Dynamic,a1:Dynamic):Void;
public static var create:Dynamic;
public static function get(a0:Dynamic):Dynamic;
public static function set(a0:Dynamic,a1:Dynamic):Void;
public static var kind:Dynamic;
public static function layout(a0:Dynamic):Dynamic;
public static var change_layout:Dynamic;
public static function size_in_bytes(a0:Dynamic):Int;
public static function blit(a0:Dynamic):Void;
public static function fill(a0:Dynamic,a1:Dynamic):Void;
public static var of_value:Dynamic;
public static var init:Dynamic;
public static var create:Dynamic;
public static function get(a0:Dynamic,a1:Int):Dynamic;
public static function set(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function unsafe_get(a0:Dynamic,a1:Int):Dynamic;
public static function unsafe_set(a0:Dynamic,a1:Int,a2:Dynamic):Void;
public static function dim(a0:Dynamic):Int;
public static var kind:Dynamic;
public static function layout(a0:Dynamic):Dynamic;
public static var change_layout:Dynamic;
public static function size_in_bytes(a0:Dynamic):Int;
public static var sub:Dynamic;
public static var slice:Dynamic;
public static function blit(a0:Dynamic):Void;
public static function fill(a0:Dynamic,a1:Dynamic):Void;
public static function c_init(a0:Dynamic->Int->Int->Dynamic):Void;
public static function fortran_init(a0:Dynamic->Int->Int->Dynamic):Void;
public static var init:Dynamic;
public static var of_array:Dynamic;
public static var create:Dynamic;
public static function get(a0:Dynamic,a1:Int,a2:Int):Dynamic;
public static function set(a0:Dynamic,a1:Int,a2:Int,a3:Dynamic):Void;
public static function unsafe_get(a0:Dynamic,a1:Int,a2:Int):Dynamic;
public static function unsafe_set(a0:Dynamic,a1:Int,a2:Int,a3:Dynamic):Void;
public static function dim1(a0:Dynamic):Int;
public static function dim2(a0:Dynamic):Int;
public static var kind:Dynamic;
public static function layout(a0:Dynamic):Dynamic;
public static var change_layout:Dynamic;
public static function size_in_bytes(a0:Dynamic):Int;
public static var sub_left:Dynamic;
public static var sub_right:Dynamic;
public static var slice_left:Dynamic;
public static var slice_right:Dynamic;
public static function blit(a0:Dynamic):Void;
public static function fill(a0:Dynamic,a1:Dynamic):Void;
public static function c_init(a0:Dynamic->Int->Int->Int->Int->Dynamic):Void;
public static var fortran_init:Dynamic;
public static var init:Dynamic;
public static var of_array:Dynamic;
public static var create:Dynamic;
public static function get(a0:Dynamic,a1:Int,a2:Int,a3:Int):Dynamic;
public static function set(a0:Dynamic,a1:Int,a2:Int,a3:Int,a4:Dynamic):Void;
public static function unsafe_get(a0:Dynamic,a1:Int,a2:Int,a3:Int):Dynamic;
public static function unsafe_set(a0:Dynamic,a1:Int,a2:Int,a3:Int,a4:Dynamic):Void;
public static function dim1(a0:Dynamic):Int;
public static function dim2(a0:Dynamic):Int;
public static function dim3(a0:Dynamic):Int;
public static var kind:Dynamic;
public static function layout(a0:Dynamic):Dynamic;
public static var change_layout:Dynamic;
public static function size_in_bytes(a0:Dynamic):Int;
public static var sub_left:Dynamic;
public static var sub_right:Dynamic;
public static var slice_left_1:Dynamic;
public static var slice_right_1:Dynamic;
public static var slice_left_2:Dynamic;
public static var slice_right_2:Dynamic;
public static function blit(a0:Dynamic):Void;
public static function fill(a0:Dynamic,a1:Dynamic):Void;
public static var c_init:Dynamic;
public static var fortran_init:Dynamic;
public static var init:Dynamic;
public static var of_array:Dynamic;
public static var genarray_of_array0:Dynamic;
public static var genarray_of_array1:Dynamic;
public static var genarray_of_array2:Dynamic;
public static var genarray_of_array3:Dynamic;
public static var array0_of_genarray:Dynamic;
public static var array1_of_genarray:Dynamic;
public static var array2_of_genarray:Dynamic;
public static var array3_of_genarray:Dynamic;
public static var reshape:Dynamic;
public static var reshape_0:Dynamic;
public static var reshape_1:Dynamic;
public static var reshape_2:Dynamic;
public static var reshape_3:Dynamic;
public static function get1(a0:Void):Void;
public static function get2(a0:Void):Void;
public static function get3(a0:Void):Void;
public static function set1(a0:Void):Void;
public static function set2(a0:Void):Void;
public static function set3(a0:Void):Void;
}