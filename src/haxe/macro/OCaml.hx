package haxe.macro;

class OCaml {
	public var code:String = "";

	public var log:String = "";

	public function new() {}

	public function write(code:String):Void {
		this.code += code;
	}

	public function writeDebugLog(log:String):Void {
		this.log += log;
	}
}
