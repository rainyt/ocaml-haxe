package ocaml.lib;

import ocaml.Stdlib;

using ocaml.Buffer;

/**
 * 模仿Haxe的文件API
 */
class File {
	public static function getBuffer(path:String):Buffer_T {
		var input = Stdlib.open_in(path);
		var len = Stdlib.in_channel_length(input);
		var buffer = Buffer.create(len);
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
		var data = OCamlStringTools.of_seq(Buffer.to_seq(getBuffer(path)));
		return data;
	}

	/**
	 * 储存Bytes对象到某个路径
	 * @param path 
	 * @param bytes 
	 */
	public static function saveBytes(path:String, bytes:Bytes):Void {
		var out = Stdlib.open_out(path);
		Stdlib.output_bytes(out, bytes);
		Stdlib.close_out(out);
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
