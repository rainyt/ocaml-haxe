import sys.FileSystem;
import sys.io.Process;
import sys.io.File;

using StringTools;

class Main {
	static function main() {
		// OCamlExternTools.externOCaml()

		var files = FileSystem.readDirectory("ocaml");
		for (file in files) {
			var path = "ocaml/" + file;
			if (file.endsWith(".ml")) {
				file = file.replace(".ml", "");
				switch (file) {
					case "char":
						OCamlExternTools.externOCaml(path, 'extern/OCaml${file.charAt(0).toUpperCase() + file.substr(1)}Tools.hx');
					case "array":
						OCamlExternTools.externOCaml(path, 'extern/OCaml${file.charAt(0).toUpperCase() + file.substr(1)}List.hx');
					default:
						OCamlExternTools.externOCaml(path, 'extern/OCaml${file.charAt(0).toUpperCase() + file.substr(1)}.hx');
				}
			} else {
				if (!FileSystem.isDirectory(path)) {
					trace("remove ", path);
					FileSystem.deleteFile(path);
				}
			}
		}

		// OCamlExternTools.externOCaml("ocaml/string.ml", "extern/OCamlString.hx");
		// OCamlExternTools.externOCaml("ocaml/sys.ml", "extern/OCamlSys.hx");
	}
}
