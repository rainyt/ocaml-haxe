package ocaml.lib.io;

import haxe.Exception;
import ocaml.Stdlib;

using ocaml.Buffer;

/**
 * 构造一个Process对象，该对象立即运行给定的命令。
 */
class Process {
	public static function create(cmd:String, args:Array<String>):String {
		var text = "";
		var input = Unix.open_process_in(cmd);
		while (true) {
			try {
				text += Stdlib.input_line(input) + "\n";
			} catch (e:Exception) {
				break;
			}
		}
		return text;
	}
}
