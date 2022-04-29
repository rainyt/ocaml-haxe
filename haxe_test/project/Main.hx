package project;

import ocaml.Stdlib;
import ocaml.lib.io.Process;

class Main {
	static function main() {
		var process = new Process("ocaml -help");
		var data = Stdlib.input_line(process.stdin);
		trace("data=", data);

		var process2 = new Process("haxelib -help");
		// Call process2.readAllString();
		trace("__11 ", process2.readAllString("Message:"));
	}
}
