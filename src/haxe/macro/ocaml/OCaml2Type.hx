package haxe.macro.ocaml;

class OCaml2Type {
	public static function toString(type:Type):String {
		switch (type) {
			case TInst(t, params):
				switch (t.toString()) {
					case "Array":
						return toString(params[0]) + " List";
					default:
						// @:native实现
						var meta = t.get().meta.get().filter(data -> {
							return data.name == ":native";
						})[0];
						if (meta != null)
							return ExprTools.getValue(meta.params[0]);
						if (!t.get().isExtern) {
							return toTypeString(t.toString(), true) + "." + t.get().name.toLowerCase() + "_this";
						}
						return toTypeString(t.toString());
				}
			case TAbstract(t, params):
				switch (t.toString()) {
					case "ocaml.OCamlArray":
						return toString(params[0]) + " Array";
					default:
						return toTypeString(t.toString());
				}
			case TFun(args, ret):
				return toTypeString(toString(ret));
			case TDynamic(t):
				return "Dynamic";
			case TAnonymous(a):
				return "Dynamic";
			case TType(t, params):
				return t.toString();
			case TMono(t):
				return t.toString();
			default:
				throw "Not support Type " + type.getName();
		}
	}

	public static function toTypeString(data:String, upChar:Bool = false):String {
		data = StringTools.replace(data, ".", "_");
		data = StringTools.replace(data, " ", "_");
		switch (data.toLowerCase()) {
			case "haxe_io_bytes":
				return "bytes";
		}
		if (upChar)
			return data.charAt(0).toUpperCase() + data.substr(1).toLowerCase();
		return data.toLowerCase();
	}
}
