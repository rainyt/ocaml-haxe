package ocaml.lib;

typedef FileStat = {}

class FileSystem {
	/**
	 * 判断文件是否存在
	 * @param file 
	 * @return Bool
	 */
	public static function exists(file:String):Bool {
		return OCamlSys.file_exists(file);
	}

	/**
	 * 创建一个文件夹
	 * @param path 
	 */
	public static function createDirectory(path:String):Void {
		OCamlSys.mkdir(path, 0);
	}

	/**
	 * 删除一个文件夹
	 * @param dir 
	 */
	public static function deleteDirectory(dir:String):Void {
		OCamlSys.rmdir(dir);
	}

	/**
	 * 删除一个文件
	 * @param file 
	 */
	public static function deleteFile(file:String):Void {
		OCamlSys.remove(file);
	}

	/**
	 * 返回relPath指定的文件或目录的完整路径，该路径相对于当前工作目录。将遵循符号链接，路径将正常化。
	 * @param relPath 
	 * @return String
	 */
	public static function fullPath(relPath:String):String {
		return OCamlSys.executable_name + "/" + relPath;
	}

	/**
	 * 判断是否为一个文件夹
	 * @param path 
	 * @return Bool
	 */
	public static function isDirectory(path:String):Bool {
		return OCamlSys.is_directory(path);
	}

	// /**
	//  * 读取文件夹列表
	//  * @param path 
	//  * @return Array<String>
	//  */
	// public static function readDirectory(path:String):Array<String> {
	// 	return [];
	// }

	/**
	 * 将path指定的文件或目录重命名/移动到newPath。如果path不是有效的文件系统条目，或者无法访问，或者如果newPath无法访问，则会抛出异常。
	 * @param path 
	 * @param newPath 
	 */
	public static function rename(path:String, newPath:String):Void {
		OCamlSys.rename(path, newPath);
	}

	// /**
	//  * 返回path指定的文件或目录FileStat信息。
	//  * @param path 
	//  * @return FileStat
	//  */
	// public static function stat(path:String):FileStat {
	// 	return null;
	// }
}
