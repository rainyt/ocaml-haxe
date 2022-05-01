package haxe.macro.ocaml;

import haxe.macro.Type.ClassType;

using StringTools;

#if macro
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
						// 追加Null定义
						var type = OCaml2Type.toString(item.type);
						var toTypedefType = "t_" + type.replace(".", "_").toLowerCase();
						oc.writeHead('type ${toTypedefType} = \n| Nil\n| VALUE of ${type}\n');
						oc.write("mutable " + item.name + ":" + toTypedefType + ";\n");
					default:
				}
			}
			oc.write("}");
		}
		return oc.code;
	}

	public static function createThis(type:ClassType):String {
		var oc:OCaml = new OCaml();
		var f = type.fields.get();
		if (f.length > 0) {
			oc.write("let this = {\n");
			for (item in f) {
				var e = item.kind;
				switch (e) {
					case FVar(read, write):
						// 追加Null定义
						var type = OCaml2Type.toString(item.type);
						var toTypedefType = "t_" + type.replace(".", "_").toLowerCase();
						var itemValue = OCaml2Tools.toString(item.expr());
						if (itemValue != "Nil") {
							itemValue = "VALUE " + itemValue;
						}
						oc.write(item.name + "=" + itemValue + ";\n");
					// oc.writeHead('type ${toTypedefType} = \n| Nil\n| OBJ of ${type}\n');
					// oc.write(item.name + ":" + toTypedefType + ";\n");
					default:
				}
			}
			oc.write("} in\n");
		}
		return oc.code;
	}
}
#end
