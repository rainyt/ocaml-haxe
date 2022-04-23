package haxe.macro.ocaml;

class OCaml2Type {
	public static function toString(type:Type):String {
		switch (type) {
			case TInst(t, params):
				return t.toString();
			case TAbstract(t, params):
				return t.toString();
			case TDynamic(t):
				return "Dynamic";
			default:
				throw "Not support Type " + type.getName();
		}
	}
}
