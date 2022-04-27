import sys.FileSystem;
import sys.io.File;

class OCamlTools {
	public static function toParamName(code:String):String {
		code = StringTools.replace(code, "\n", "");
		return StringTools.replace(code, " ", "");
	}

	public static function toUpClassName(code:String, canCastDynamic:Bool):String {
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
		if (FileSystem.exists("extern/" + code + ".hx")) {
			return code;
		}
		if (OCamlTypes.refs.exists(OCamlExternToolsv2.className + "_" + code)) {
			return OCamlExternToolsv2.className + "_" + code;
		}
		return canCastDynamic ? "Dynamic" : code;
	}
}
