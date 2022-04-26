package project;

import ocaml.lib.FileSystem;
import ocaml.lib.File;

class Main {
	static function call():String {
		while (true) {
			return "false";
		}
		return "true";
	}

	static function main() {
		var data = "1,2,3,4,5,6";
		var array = OCamlString.split_on_char(",", data);
		for (s in array) {
			trace("拆分后：", s);
		}
		trace("文本的长度:", data.length, call());

		trace("文本内容：", File.getContent("build.hxml"));

		File.copy("build.hxml", "build-copy.hxml");
		if (FileSystem.exists("../test-2.mp4"))
			trace("已经存在");
		else
			File.copy("../test.mp4", "../test-2.mp4");
		trace("拷贝完毕");
	}
}
