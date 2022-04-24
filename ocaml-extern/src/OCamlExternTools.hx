package;

import sys.io.File;
import sys.io.Process;

/**
 * 将OCaml文件转为haxe extern
 */
class OCamlExternTools {
	public static var haxeCode:ExternHaxe;

	/**
	 * 转换OCaml实现
	 * @param file ml文件
	 * @param out 输出haxe文件
	 */
	public static function externOCaml(file:String, out:String):Void {
		haxeCode = new ExternHaxe();
		var nName = StringTools.replace(file, "ocaml/", "");
		nName = StringTools.replace(nName, ".ml", "");
		nName = nName.charAt(0).toUpperCase() + nName.substr(1);
		var cName = StringTools.replace(out, "extern/", "");
		cName = StringTools.replace(cName, ".hx", "");
		haxeCode.write('@:native("${nName}")\n');
		haxeCode.write("extern class " + cName + " {\n");
		var p = new Process("ocamlc -i ocaml/string.ml");
		var mlcontent = p.stdout.readAll().toString();
		File.saveContent("test/" + out.substr(out.lastIndexOf("/") + 1), mlcontent);
		// 开始处理Extern实现
		var lines = mlcontent.split("\n");
		for (line in lines) {
			parserLine(line);
		}
		haxeCode.write("}");
		trace("out:", out);
		File.saveContent(out, haxeCode.code);
	}

	public static function parserLine(line:String):Void {
		var funcName = ~/external [a-z_A-Z]{1,}|val [a-z_A-Z]{1,}/g;
		if (funcName.match(line)) {
			var fun = funcName.matched(0);
			var args = line.split(":")[1];
			args = args.split("=")[0];
			var haxeArgs = args.split("->");
			var ret = toType(haxeArgs.pop());
			for (index => value in haxeArgs) {
				haxeArgs[index] = "a" + index + ":" + toType(value);
			}
			haxeCode.write('public static function ${fun.split(" ")[1]}(${haxeArgs.join(",")}):${ret};\n');
		}
	}

	public static function toType(type:String):String {
		type = StringTools.replace(type, " ", "");
		switch (type) {
			case "unit":
				return "Void";
			case "string", "int", "float", "bool":
				return type.charAt(0).toUpperCase() + type.substr(1).toLowerCase();
			case "char", "bytes":
				return "Dynamic";
			default:
				return "Dynamic";
				// return '<${type}>';
				// throw "未处理的类型:" + type;
		}
	}
}
