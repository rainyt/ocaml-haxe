package project;

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
	}
}