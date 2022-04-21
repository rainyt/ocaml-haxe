package project;

import ocaml.OCamlSys;

class OCamlArrayTest {
	static function main() {
		var array = OCamlSys.args;
		for (s in array) {
			trace("%s", s);
		}
		for (s in 0...array.length) {
			var value = array[s];
			trace("%i%s\n", s, value);
		}
		trace("%s\n", array[0]);
	}
}
