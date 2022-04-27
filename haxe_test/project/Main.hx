package project;

import ocaml.OCamlStringTools;
import ocaml.OCamlString;
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
		var array = OCamlStringTools.split_on_char(",", data);
		for (s in array) {
			trace("split:", s);
		}
		trace("data.length=:", data.length, call());

		trace("data=", File.getContent("build.hxml"));

		File.copy("build.hxml", "build-copy.hxml");
		if (FileSystem.exists("../test-2.mp4"))
			trace("exists");
		else
			File.copy("../test.mp4", "../test-2.mp4");
		trace("copy success");

		var files = FileSystem.readDirectory("./");
		for (s in files) {
			var stat = FileSystem.stat(s);
			trace("file:", s, "   create time:", stat.st_ctime);
		}

		ocaml.Sys.command("123");
	}
}
