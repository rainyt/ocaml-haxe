package ocaml.lib;

import haxe.macro.ocaml.OCaml;
import haxe.io.Bytes;
import haxe.Exception;

using OCamlBuffer;

/**
 * 模仿Haxe的文件库
 */
class File {
	public static function getBuffer(path:String):OCamlBuffer {
		var input = OCamlStdlib.open_in(path);
		var len = OCamlStdlib.in_channel_length(input);
		var buffer:OCamlBuffer = OCamlBuffer.create(len);
		buffer.add_channel(input, len);
		return buffer;
	}

	/**
	 * 获取Bytes二进制数据
	 * @param path 
	 * @return Bytes
	 */
	public static function getBytes(path:String):Bytes {
		return getBuffer(path).to_bytes();
	}

	/**
	 * 读取文本数据
	 * @param path 文本路径
	 * @return String
	 */
	public static function getContent(path:String):String {
		var data = OCamlString.of_seq(OCamlBuffer.to_seq(getBuffer(path)));
		return data;
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
