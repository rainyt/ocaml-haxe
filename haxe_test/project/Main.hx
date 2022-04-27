package project;

import ocaml.lib.io.Process;

class Main {
	static function main() {
		var msg = Process.create("haxelib -help", []);
		trace(msg);
	}
}
