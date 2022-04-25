package project;

class Main {
	static function main() {
		trace("system=", OCamlSys.os_type);
		trace("big_endian=", OCamlSys.big_endian);
		trace("cygwin=", OCamlSys.cygwin);
		trace("executable_name=", OCamlSys.executable_name);
		trace("int_size=", OCamlSys.int_size);
		trace("ocaml_version=", OCamlSys.ocaml_version);
		trace("word_size=", OCamlSys.word_size);
		OCamlSys.mkdir("test2",0);
	}
}
