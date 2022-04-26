package haxe.macro.ocaml;

class OCaml2Type {
	public static function toString(type:Type):String {
		switch (type) {
			case TInst(t, params):
				return toTypeString(t.toString());
			case TAbstract(t, params):
				return toTypeString(t.toString());
			case TFun(args, ret):
				return toTypeString(toString(ret));
			case TDynamic(t):
				return "Dynamic";
			case TAnonymous(a):
				return "Dynamic";
			case TType(t, params):
				return t.toString();
			default:
				throw "Not support Type " + type.getName();
		}
	}

	private static function toTypeString(data:String):String {
		data = StringTools.replace(data, ".", "_");
		switch (data.toLowerCase()) {
			case "haxe_io_bytes":
				return "bytes";
		}
		return data;
	}
}
