package project;

import ocaml.OCamlSys;

class OCamlArrayTest {
	static function main() {
		var array = OCamlSys.args;
		for (s in array) {
			trace("%s\n", s);
		}
		trace("%s\n", array[0]);
	}
}
