package haxe.macro.ocaml;

class OCaml {
	public var code:String = "";

	public var log:String = "";

	public var heads:Array<String> = [];

	public function new() {}

	public function write(code:String):Void {
		this.code += code;
	}

	public function writeHead(code:String):Void {
		if (heads.indexOf(code) == -1) {
			heads.push(code);
			this.code = code + this.code;
		}
	}

	public function writeDebugLog(log:String):Void {
		this.log += log;
	}
}
