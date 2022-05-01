package project;

import ocaml.Stdlib;
import ocaml.lib.io.Process;

class Main {
	static function main() {
		var process = new Process("ocaml -help");
		var data = Stdlib.input_line(process.stdin);
		trace("data=", data);

		var process2 = new Process("haxelib -help");
		var data2 = process2.readAllString(">>>><<<");
		trace(process2.getProcess2().name);
	}
}
