package ocaml.lib.io;

import haxe.Exception;
import ocaml.Stdlib;

using ocaml.Buffer;

/**
 * 构造一个Process对象，该对象立即运行给定的命令。
 */
class Process {
	public var stdin:Stdlib_In_channel;

	public var stdout:Stdlib_Out_channel;

	public var data:String;

	public function new(cmd) {
		stdin = Unix.open_process_in(cmd);
	}
}
