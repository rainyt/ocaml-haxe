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
		trace("%i", i);
		var i2 = 2;
		i2 = 3;
		var arg = OCamlSys.argv()[0];
		trace("Fight:%i,%s", i2, arg);
		if (i2 == 3 && i2 < 2) {
			trace("true");
		} else {
			trace("false");
		}
	}
}

@:native("Sys")
extern class OCamlSys {
	public static function argv():Array<String>;
}
