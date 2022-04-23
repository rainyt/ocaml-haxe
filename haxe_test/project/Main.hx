package project;

import ocaml.Stdlib;
import ocaml.lib.File;

class Main {
	public static function afunc(s:String):String {
		return s;
	}

	static function main() {
		// 获取文本
		var a = "test";
		var b = "README.md";
		var content = File.getContent(b);
		var input = Stdlib.openInput(b);
		trace("太棒了：", afunc(a));
		trace("Goods!", content);
	}
}
