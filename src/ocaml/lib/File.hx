package ocaml.lib;

import haxe.macro.ocaml.OCaml;
import haxe.io.Bytes;
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
		var input = OCamlStdlib.open_in(path);
		var line = "";
		while (true) {
			try {
				line += OCamlStdlib.input_line(input) + "\n";
			} catch (e:Exception) {
				OCamlStdlib.close_in(input);
				return line;
			}
		}
		return line;
	}

	/**
	 * 将所有chars转换成Bytes
	 * @param chars 
	 * @return Bytes
	 */
	public static function toBytes(chars:Array<Int>):Bytes {
		var index = 0;
		var b = OCamlBytes.create(chars.length);
		for (char in chars) {
			OCamlBytes.set(b, index, OCamlCharTools.chr(char));
			index++;
		}
		return b;
	}

	/**
	 * 获取Bytes二进制数据
	 * @param path 
	 * @return Bytes
	 */
	public static function getBytes(path:String):Bytes {
		var input = OCamlStdlib.open_in(path);
		var chars:Array<Int> = [];
		while (true) {
			try {
				var readChar = OCamlStdlib.input_byte(input);
				chars.push(readChar);
			} catch (e:Exception) {
				OCamlStdlib.close_in(input);
				return toBytes(chars);
			}
		}
		return toBytes(chars);
	}

	/**
	 * 储存Bytes对象到某个路径
	 * @param path 
	 * @param bytes 
	 */
	public static function saveBytes(path:String, bytes:haxe.io.Bytes):Void {
		var out = OCamlStdlib.open_out(path);
		OCamlStdlib.output_bytes(out, bytes);
		OCamlStdlib.close_out(out);
	}

	/**
	 * 将某个文件拷贝到某个路径
	 * @param srcPath 
	 * @param dstPath 
	 */
	public static function copy(srcPath:String, dstPath:String):Void {
		var bytes = getBytes(srcPath);
		saveBytes(dstPath, bytes);
	}
}
