import ocaml.OCamlSys;

@:build(OCamlMacro.build())
class Test {
	public static var data:String = "";

	public static function call1():Int {
		var a = 1;
		var b = 2;
		return 0 + a + b;
	}

	static function main() {
		var value2 = call1();
		var i = value2;
		trace("%i\n", i);
		var i2 = 2;
		i2 = 3;
		// 访问OCaml API
		var arg = OCamlSys.argv();
		trace("Fight:%i,%s\n", i2, arg[0]);
		// 判断语法
		if (i2 == 3 && i2 < 2) {
			trace("true\n");
		} else {
			trace("false\n");
		}
		trace("%s", arg[0]);
		// For循环处理
		for (s in arg) {
			trace("%s", s);
		}
	}
}
