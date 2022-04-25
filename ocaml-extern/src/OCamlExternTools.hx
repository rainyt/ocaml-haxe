package;

import sys.io.File;
import sys.io.Process;

using StringTools;

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
		var p = new Process("ocamlc -i " + file);
		var mlcontent = p.stdout.readAll().toString();
		File.saveContent("test/" + out.substr(out.lastIndexOf("/") + 1), mlcontent);

		// 类型获取
		var tReg = ~/type[a-zA-Z = {\n:;_]{1,}}|type[a-zA-Z = {:;_]{1,}/g;
		if (tReg.match(mlcontent)) {
			tReg.map(mlcontent, (data) -> {
				var value = data.matched(0);
				trace(file, value);
				var typeName = ~/type[a-zA-Z = {\n:;_]{1,}=/g;
				if (!typeName.match(value))
					return value;
				var tName = typeName.matched(0);
				tName = tName.replace("type ", "");
				if (value.indexOf("{") == -1) {
					if (tName.indexOf("=") != -1) {
						tName = tName.substr(0, tName.indexOf("="));
					}
					haxeCode.write('typedef ${nName + tName.charAt(0).toUpperCase() + tName.substr(1)} = ${toType(value.split("=")[1])};\n\n');
				} else
					haxeCode.write('typedef ${nName + tName.charAt(0).toUpperCase() + tName.substr(1)} {\n');
				var paramReg = ~/[a-zA-Z0-9_]{1,} : [a-zA-Z0-9_]{1,}/g;
				paramReg.map(value, (param) -> {
					var value = param.matched(0);
					trace("参数：", value);
					var args = value.split(":");
					haxeCode.write('${args[0]}:${toType(args[1])},\n');
					return value;
				});
				if (value.indexOf("{") != -1)
					haxeCode.write("}\n\n");
				return value;
			});
		}

		haxeCode.write('@:native("${nName}")\n');
		haxeCode.write("extern class " + cName + " {\n");

		// 开始处理Extern实现
		var lines = mlcontent.split("\n");
		for (line in lines) {
			parserLine(line);
		}
		haxeCode.write("}");
		// trace("out:", out);
		File.saveContent(out, haxeCode.code);
	}

	public static function parserLine(line:String):Void {
		var funcName = ~/external [a-z_A-Z0-9]{1,}|val [a-z_A-Z0-9]{1,}/g;
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
				if (type.indexOf("*") != -1 || type.indexOf("Seq.") != -1 || type.indexOf("'") != -1)
					return "Dynamic";
				if (type.indexOf(".") != -1) {
					var types = type.split(".");
					var nName = types[0];
					return "OCaml" + types[0] + "." + ${nName} + types[1].charAt(0).toUpperCase() + types[1].substr(1);
				}
				return "Dynamic";
				// return '<${type}>';
				// throw "未处理的类型:" + type;
		}
	}
}
