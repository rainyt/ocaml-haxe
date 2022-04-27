import sys.io.Process;
import sys.FileSystem;
import sys.io.File;

using StringTools;
using OCamlTools;

class OCamlExternToolsv2 {
	public static var haxeCode:ExternHaxe;

	public static var className:String;

	public static function externMLI(ocamlFile:String, rename:String = null):Void {
		OCamlTypes.refs.clear();
		haxeCode = new ExternHaxe();
		className = ocamlFile;
		className = className.charAt(0).toUpperCase() + className.substr(1);
		className = rename != null ? rename : className;
		haxeCode.write("@:exceptions\n");
		haxeCode.write('@:native("${ocamlFile.toUpClassName(false)}")\n');
		haxeCode.write("extern class " + className + "{\n");

		if (FileSystem.exists("ocaml/" + ocamlFile + ".mli")) {
			parserFile("ocaml/" + ocamlFile + ".mli");
		} else {
			// 如果存在ml文件，则优先处理ml文件
			if (false && FileSystem.exists("ocaml/" + ocamlFile + ".mli2")) {} else {
				if (!FileSystem.exists("ocaml/_" + ocamlFile + ".ml")) {
					File.copy("ocaml/" + ocamlFile + ".ml", "ocaml/_" + ocamlFile + ".ml");
				}
				var cmd = "ocamlc -i " + "ocaml/_" + ocamlFile + ".ml";
				trace("cmd=", cmd);
				var p = new Process(cmd);
				var mlcontent = p.stdout.readAll().toString();
				File.saveContent("ocaml/" + ocamlFile + ".mli2", mlcontent);
			}
			parserFile("ocaml/" + ocamlFile + ".mli2");
		}
	}

	private static function parserFile(path:String):Void {
		trace("parser file:", path);
		var content = File.getContent(path);
		var descReq = ~/\(\*(.|\n)*?\*\)/g;
		content = descReq.replace(content, "");
		// 格式化掉空字符串
		var spaces = content.split("\n");
		var newcontent = [];
		var coreReq = ~/^external [\w]*|^type [\w]*|^exception [\w]*|^val [\w]*|^module [\w]*/;
		var parser:OCamlParser = null;
		// 如果是module,则需要end结尾
		var isModule = false;
		for (s in spaces) {
			if (s != "") {
				if (isModule) {
					if (s.toParamName() == "end" || s.indexOf("=") != -1) {
						isModule = false;
					} else {
						continue;
					}
				}
				newcontent.push(s);
				if (coreReq.match(s)) {
					if (parser != null) {
						// trace("最终生成", parser.code + "\n\n");
						parser.writeToHaxeCode(haxeCode);
					}
					parser = new OCamlParser(className);
					parser.write(s + "\n");
					if (-1 != s.indexOf("module")) {
						isModule = true;
					}
					// trace(s);
				} else if (parser != null) {
					parser.write(s + "\n");
					// trace(s);
				}
			}
		}
		haxeCode.write("}");
		haxeCode.code = haxeCode.code.replace("@:exceptions", haxeCode.toExceptionMate());
		haxeCode.writeHead("package ocaml;\n");
		content = newcontent.join("\n");
		File.saveContent("test.ml", content);
		File.saveContent("extern/ocaml/" + className + ".hx", haxeCode.code);
	}
}
