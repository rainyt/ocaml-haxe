import sys.FileSystem;
import sys.io.File;

using StringTools;

class OCamlTools {
	public static function toParamName(code:String):String {
		code = StringTools.replace(code, "\n", "");
		return StringTools.replace(code, " ", "");
	}

	public static function toUpClassName(code:String, canCastDynamic:Bool):String {
		if (code.indexOf("#>") != -1) {
			// 是一个方法
			var c = [];
			code = code.replace("(", "");
			code = code.replace(")", "");
			var cs = code.split("#>");
			for (s in cs) {
				c.push(toUpClassName(s, true));
			}
			return c.join("->");
		}

		code = toParamName(code);
		code = code.charAt(0).toUpperCase() + code.substr(1);

		switch (code) {
			case "Int", "Bool", "Float", "String":
				return code;
		}

		if (code.indexOf("?") != -1 || code.indexOf("(") != -1 || code.indexOf(")") != -1) {
			return "Dynamic";
		} else if (code.indexOf("*") != -1) {
			return "Dynamic";
		} else if (code.indexOf("'") != -1) {
			// 暂未做解析
			return "Dynamic";
		}
		if (code == "Unit") {
			return "Void";
		}
		if (code.indexOf("list") != -1) {
			// 数组
			return 'Array<${toUpClassName(StringTools.replace(code, "list", ""), true)}>';
		}
		if (code.indexOf("array") != -1) {
			// 数组
			return 'OCamlArray<${toUpClassName(StringTools.replace(code, "array", ""), true)}>';
		}
		if (FileSystem.exists("extern/ocaml/" + code + ".hx")) {
			return code;
		}
		if (OCamlTypes.refs.exists(OCamlExternToolsv2.className + "_" + code)) {
			return OCamlExternToolsv2.className + "_" + code;
		}
		return canCastDynamic ? "Dynamic" : code;
	}
}
