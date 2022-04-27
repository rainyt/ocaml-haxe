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
			return 'Array<${StringTools.replace(code, "list", "")}>';
		}
		if (code.indexOf("array") != -1) {
			// 数组
			return 'OCamlArray<${StringTools.replace(code, "array", "")}>';
		}
		if (FileSystem.exists("extern/" + code + ".hx")) {
			return code;
		}
		if (OCamlTypes.refs.exists(code)){
			return code;
		}
		return canCastDynamic ? "Dynamic" : code;
	}
}
