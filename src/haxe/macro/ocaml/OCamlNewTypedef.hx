package haxe.macro.ocaml;

import haxe.macro.Type.ClassType;

class OCamlNewTypedef {
	public static function define(type:ClassType):String {
		var oc:OCaml = new OCaml();
		oc.write("\ntype " + type.name.toLowerCase() + "_this");
		var f = type.fields.get();
		if (f.length > 0) {
			oc.write("={\n");
			for (item in f) {
				var e = item.kind;
				switch (e) {
					case FVar(read, write):
						oc.write(item.name + ":" + OCaml2Type.toString(item.type) + "\n");
					default:
				}
			}
			oc.write("}");
		}
		return oc.code;
	}
}
