package project;

import ocaml.OCamlSys;
import ocaml.Stdlib;
import ocaml.lib.File;

using OCamlString;

class MainTest1 {
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
		list.push(123);
		list.push(7);
		list.push(8);
		list.push(9);
		list = list.concat([10, 11, 12]);
		for (i in list) {
			trace(i);
		}

		var content2 = "test";
		content2 = content2.concat(["1", "2", "3", "4"]);
		trace("拼接后：", content2);

		var content2 = OCamlString.concat("test", ["123", "123", "123"]);
		trace("拼接字符串：", content2);
		trace(content2.index("3"));
		trace("文本的长度：" + content.length);

		var list = OCamlString.split_on_char("\n", content);
		for (s in list) {
			trace("切割了？", s);
		}

		// todo 子方法需要兼容
		// content := String.map (fun a -> a) !content;
		content = OCamlString.map(function(data) {
			trace("解析", data);
			var a:OCamlChar = "\n";
			while (true) {
				trace("我看心情退出");
				break;
			}
			if (a == data)
				return data;
			return "2";
		}, content);
		trace("发生了什么？", content);
	}
}
