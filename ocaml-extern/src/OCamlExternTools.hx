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
		var p = new Process("ocamlc -i " + file);
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
		var funcName = ~/external [a-z_A-Z]{1,}|val [a-z_A-Z0-9]{1,}/g;
		if (funcName.match(line)) {
			var fun = funcName.matched(0);
			var args = line.split(":")[1];
			args = args.split("=")[0];
			var funArgs = ~/[(][a-z -\\>]{1,}\)/g;
			if (funArgs.match(args))
				args = funArgs.replace(args, "fun");
			var haxeArgs = args.split("->");
			var ret = toType(haxeArgs.pop());
			var m = 0;
			if (fun.indexOf("argv") != -1)
				trace(fun, args, ret);
			for (index => value in haxeArgs) {
				if (toType(value) == "fun") {
					haxeArgs[index] = "a" + index + ":" + toType(funArgs.matched(m));
					m++;
				} else
					haxeArgs[index] = "a" + index + ":" + toType(value);
			}
			if (haxeArgs.length > 0)
				haxeCode.write('public static function ${fun.split(" ")[1]}(${haxeArgs.join(",")}):${ret};\n');
			else
				haxeCode.write('public static var ${fun.split(" ")[1]}:${ret};\n');
		}
	}

	public static function toType(type:String):String {
		type = StringTools.replace(type, " ", "");
		switch (type) {
			case "unit":
				return "Void";
			case "string", "int", "float", "bool":
				return type.charAt(0).toUpperCase() + type.substr(1).toLowerCase();
			case "bytes":
				return "haxe.io.Bytes";
			case "char":
				return "OCamlChar";
			case "fun":
				return "fun";
			case "stringarray":
				return "OCamlArray<String>";
			case "floatarray":
				return "OCamlArray<Float>";
			case "intarray":
				return "OCamlArray<Int>";
			case "stringlist":
				return "Array<String>";
			case "floatlist":
				return "Array<Float>";
			case "intlist":
				return "Array<Int>";
			default:
				if (type.indexOf("(") != -1) {
					type = StringTools.replace(type, "(", "");
					type = StringTools.replace(type, ")", "");
					var calls = type.split("->");
					for (index => value in calls) {
						calls[index] = toType(value);
					}
					return calls.join("->");
				}
				return "Dynamic";
				// return '<${type}>';
				// throw "未处理的类型:" + type;
		}
	}
}
