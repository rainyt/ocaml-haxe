using StringTools;

class ExternHaxe {
	public var code:String = "";

	public var exceptions:Array<String> = [];

	public var index:Int = 0;

	public function new() {}

	public function write(code:String):Void {
		this.code += code;
	}

	public function writeHead(code:String):Void {
		this.code = code + this.code;
		index = code.length;
	}

	public function putHead(code:String):Void {
		var start = this.code.substr(0, index);
		var end = this.code.substr(index);
		this.code = start + code + end;
		index += code.length;
	}

	public function toExceptionMate():String {
		var c = "";
		for (i => s in exceptions) {
			s = s.replace("\n", "");
			s = '@:exceptions("${s}")';
			exceptions[i] = s;
		}
		return exceptions.join("\n");
	}
}
