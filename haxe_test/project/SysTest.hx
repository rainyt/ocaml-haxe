package project;

import ocaml.Stdlib;
import ocaml.Unix;
import ocaml.lib.FileSystem;
import ocaml.lib.File;
import ocaml.OCamlStringTools;

typedef OCamlSys = ocaml.Sys;

class SysTest {
	static function main() {
		var data = OCamlSys.os_type;
		trace("system=", data);
		trace("big_endian=", OCamlSys.big_endian);
		trace("cygwin=", OCamlSys.cygwin);
		trace("executable_name=", OCamlSys.executable_name);
		trace("int_size=", OCamlSys.int_size);
		trace("ocaml_version=", OCamlSys.ocaml_version);
		trace("word_size=", OCamlSys.word_size);
		if (OCamlSys.file_exists("test2")) {
			trace("已经存在文件夹");
		} else {
			OCamlSys.mkdir("test2", 0);
		}

		var data = "1,2,3,4,5,6";
		var array = OCamlStringTools.split_on_char(",", data);
		for (s in array) {
			trace("split:", s);
		}
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

		var input = Unix.open_process_in("echo '123123'");
		var data = Stdlib.input_line(input);
		trace("read", data);
	}
}
