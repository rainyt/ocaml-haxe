typedef CamlinternalModShape  = Dynamic;

@:native("CamlinternalMod")
extern class OCamlCamlinternalMod {
public static function make_forward(a0:OCamlObj.ObjT,a1:OCamlObj.ObjT):Void;
public static function overwrite(a0:OCamlObj.ObjT,a1:OCamlObj.ObjT):Void;
public static function overwrite_closure(a0:OCamlObj.ObjT,a1:OCamlObj.ObjT):Void;
public static function init_mod(a0:Dynamic,a1:Dynamic):OCamlObj.ObjT;
public static function update_mod(a0:Dynamic,a1:OCamlObj.ObjT,a2:OCamlObj.ObjT):Void;
}