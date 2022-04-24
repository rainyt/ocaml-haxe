package project;

import ocaml.OCamlSys;
import ocaml.Stdlib;
import ocaml.lib.File;
import project.MathTest;
import project.Test;

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
		trace("HelloWorld:", afunc(Stdlib.inputLine(input)));
		trace("Goods!", content);

		var array = OCamlSys.args;
		for (item in array) {
			trace(item);
		}

		var list = [1, 2, 3, 4, 5];
		list.push(6);
		list.push(7);
		list.push(8);
		list.push(9);
		for (i in list) {
			trace(i);
		}
	}
}
