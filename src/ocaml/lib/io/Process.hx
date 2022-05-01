package ocaml.lib.io;

import haxe.Exception;
import ocaml.Stdlib;

using ocaml.Buffer;

/**
 * 构造一个Process对象，该对象立即运行给定的命令。
 */
class Process {
	public var stdin:Stdlib_In_channel;

	public var process2:Process2;

	public var name2:String;

	public function new(cmd) {
		stdin = Unix.open_process_in(cmd);
		process2 = new Process2();
	}

	public function readAllString(msg:String):String {
		var lines = "";
		var p = new Process2();
		trace(p.name);
		while (true) {
			try {
				lines += Stdlib.input_line(stdin) + "\n";
			} catch (e:Exception) {
				return msg + lines + msg;
			}
		}
		return msg + lines + msg;
	}

	public function getProcess2():Process2 {
		return process2;
	}
}

class Process2 {
	public var name:String = "123123123";

	public var name2:String = null;

	public function new() {
	}
}
