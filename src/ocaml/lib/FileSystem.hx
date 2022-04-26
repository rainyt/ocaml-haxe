package ocaml.lib;

class FileSystem {
	public static function exists(file:String):Bool {
		return OCamlSys.file_exists(file);
	}
}
