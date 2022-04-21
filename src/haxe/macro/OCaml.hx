package haxe.macro;

class OCaml {

	public var code:String = "";

	public function new() {}

	public function write(code:String):Void {
		this.code += code;
	}
}
