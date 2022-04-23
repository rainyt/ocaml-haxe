package ocaml.lib;

/**
 * 模仿Haxe的文件库
 */
class File {
	public static function getContent(path:String):String {
		var input = Stdlib.openInput(path);
		var context = Stdlib.inputLine(input);
		context += Stdlib.inputLine(input);
		var line = "";
		while (true) {
			line += Stdlib.inputLine(input) + "\n";
		}
		// var content = Stdlib.inputLine(input) + "\n";
		// return content;
		return context;
	}
}
