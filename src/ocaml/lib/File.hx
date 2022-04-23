package ocaml.lib;

import haxe.Exception;

/**
 * 模仿Haxe的文件库
 */
class File {
	/**
	 * 读取文本数据
	 * @param path 文本路径
	 * @return String
	 */
	public static function getContent(path:String):String {
		var input = Stdlib.openInput(path);
		var context = Stdlib.inputLine(input);
		context += Stdlib.inputLine(input);
		var line = "";
		while (true) {
			try {
				line += Stdlib.inputLine(input) + "\n";
			} catch (e:Exception) {
				Stdlib.closeInput(input);
				return line;
			}
		}
		return context;
	}
}
