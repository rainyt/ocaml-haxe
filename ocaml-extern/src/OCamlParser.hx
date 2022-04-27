using OCamlTools;
using StringTools;

class OCamlParser {
	public function new() {}

	private var req = ~/[a-zA-Z][a-zA-Z0-9_]{1,}/;
	private var enumsReq = ~/[A-Z][a-zA-Z0-9_]{1,}/g;
	private var paramReq = ~/[a-zA-Z0-9_]{1,}( *: *)[a-zA-Z0-9_]{1,}/g;

	public var code = "";

	public function write(code:String):Void {
		this.code += code;
	}

	public function writeToHaxeCode(haxeCode:ExternHaxe):Void {
		if (toClassName() == "Interval_timer_status")
			trace(code);
		var type = code.substr(0, code.indexOf(" "));
		haxeCode.write("// Parser " + type + "::" + StringTools.replace(code, "\n", "") + "\n");
		switch (type) {
			case "external":
				var externalReqError = ~/external \(/;
				if (externalReqError.match(code))
					return;
				if (code.indexOf("=") != -1) {
					code = code.substr(0, code.indexOf("="));
				}
				haxeCode.write(toFunction());
			case "module":
			// 暂不解析
			case "val":
				if (code.indexOf("^") != -1 || code.indexOf("@") != -1)
					return;
				haxeCode.write(toFunction() + "\n");
			case "exception":
				// 写入到meta中
				haxeCode.exceptions.push(code);
			case "type":
				// 解析类型
				if (code.indexOf("=") == -1) {
					// 没有=于号，直接extern处理
					haxeCode.writeHead("extern class " + toClassName() + "{}\n");
				} else if (code.indexOf(":") == -1) {
					// 枚举
					haxeCode.writeHead("enum " + toClassName() + " {\n");
					var es = toEnums();
					haxeCode.putHead(es.join("\n") + "\n");
					// 写入枚举
					haxeCode.putHead("}\n");
				} else if (code.indexOf(":") != -1) {
					haxeCode.putHead("extern class " + toClassName() + "{\n");
					var array = toParams();
					for (item in array) {
						haxeCode.putHead('public var ${item.name}:${item.type.toUpClassName(true)};\n');
					}
					haxeCode.putHead("}\n");
				} else {
					haxeCode.writeHead("/*\n");
					haxeCode.putHead(code + "\n");
					haxeCode.putHead("*/\n");
				}
				OCamlTypes.refs.set(toClassName(), type);
			default:
				haxeCode.write(code + "\n");
		}
	}

	public function toFunction():String {
		var c:String = code;
		var valreq = ~/val|external/;
		c = valreq.replace(c, "public static function");
		// c = StringTools.replace(c, "val", "public static function");
		var args = c.split(":");
		if (args.length == 1) {} else {
			c = args[0];
			var prams = args[1].split("->");
			if (prams.length == 1) {
				// 变量
				c = StringTools.replace(c, "function", "var");
				c += ":" + prams[0].toUpClassName(true);
			} else {
				c += "(";
				var plist = [];
				var retType:String = "Void";
				for (index => p in prams) {
					if (index != prams.length - 1) {
						plist.push("a" + index + ":" + p.toUpClassName(true));
					} else {
						retType = p.toUpClassName(true);
					}
				}
				c += plist.join(",");
				c += "):" + retType;
			}
		}
		return c + ";";
	}

	public function toParams():Array<{name:String, type:String}> {
		var array = [];
		var newCode = code.substr(code.indexOf("=") + 1);
		paramReq.map(newCode, (data) -> {
			var value = data.matched(0);
			var arr = value.split(":");
			array.push({
				name: arr[0].toParamName(),
				type: arr[1].toUpClassName(true)
			});
			return value;
		});
		return array;
	}

	public function toEnums():Array<String> {
		var newCode = code.substr(code.indexOf("=") + 1);
		if (newCode.indexOf("of") != -1) {
			newCode = newCode.substr(0, newCode.lastIndexOf("of"));
		}
		var array = [];
		enumsReq.map(newCode, (data) -> {
			var value = data.matched(0);
			array.push(value + ";");
			return value;
		});
		return array;
	}

	public function toClassName():String {
		var cName = code.substr(code.indexOf(" ") + 1);
		if (req.match(cName)) {
			return req.matched(0).toUpClassName(false);
		}
		return cName.toUpClassName(false);
	}
}
