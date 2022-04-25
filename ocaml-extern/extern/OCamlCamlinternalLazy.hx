@:native("CamlinternalLazy")
extern class OCamlCamlinternalLazy {
public static var raise_undefined:OCamlObj.T;
public static function make_forward(a0:OCamlObj.T,a1:OCamlObj.T):Void;
public static function force_lazy_block(a0:Dynamic):Dynamic;
public static function force_val_lazy_block(a0:Dynamic):Dynamic;
public static function force(a0:Dynamic):Dynamic;
public static function force_val(a0:Dynamic):Dynamic;
}