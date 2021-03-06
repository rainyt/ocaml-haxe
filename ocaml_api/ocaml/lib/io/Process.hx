package ocaml.lib.io;

import haxe.Exception;
import ocaml.Stdlib;

using ocaml.Buffer;

/**
 * 构造一个Process对象，该对象立即运行给定的命令。
 */
class Process {
	private var stdin:Stdlib_In_channel;

	public function new(cmd) {
		stdin = Unix.open_process_in(cmd);
	}

	public function readAllString():String {
		var lines = "";
		while (true) {
			try {
				lines += Stdlib.input_line(stdin) + "\n";
			} catch (e:Exception) {
				return lines;
			}
		}
		return lines;
	}
}
