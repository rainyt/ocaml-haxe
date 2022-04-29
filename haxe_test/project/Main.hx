package project;

import ocaml.Stdlib;
import ocaml.lib.io.Process;

class Main {
	static function main() {
		var process = new Process("ocaml -help");
		var data = Stdlib.input_line(process.stdin);
		trace("data=", data);

		var process2 = new Process("haxelib -help");
		var data2 = Stdlib.input_line(process2.stdin);
		trace("data2=", data2); 
		// trace(msg);
	}
}
