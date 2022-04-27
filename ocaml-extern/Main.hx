import sys.FileSystem;
import sys.io.Process;
import sys.io.File;

using StringTools;

class Main {
	static function main() {
		OCamlExternToolsv2.externMLI("buffer");
		OCamlExternToolsv2.externMLI("string", "OCamlStringTools");
		OCamlExternToolsv2.externMLI("unix");
		OCamlExternToolsv2.externMLI("stdlib");
		OCamlExternToolsv2.externMLI("sys");

		// OCamlExternTools.externOCaml()

		// var files = FileSystem.readDirectory("ocaml");
		// for (file in files) {
		// 	// if (file != "buffer.ml")
		// 	// 	continue;
		// 	var path = "ocaml/" + file;
		// 	if (file.endsWith(".ml")) {
		// 		file = file.replace(".ml", "");
		// 		switch (file) {
		// 			case "char":
		// 				OCamlExternTools.externOCaml(path, 'extern/OCaml${file.charAt(0).toUpperCase() + file.substr(1)}Tools.hx');
		// 			case "array":
		// 				OCamlExternTools.externOCaml(path, 'extern/OCaml${file.charAt(0).toUpperCase() + file.substr(1)}List.hx');
		// 			default:
		// 				OCamlExternTools.externOCaml(path, 'extern/OCaml${file.charAt(0).toUpperCase() + file.substr(1)}.hx');
		// 		}
		// 	} else {
		// 		if (!FileSystem.isDirectory(path)) {
		// 			if (!file.endsWith(".ml") && !file.endsWith(".mli"))
		// 				FileSystem.deleteFile(path);
		// 		}
		// 	}
		// }

		// OCamlExternTools.externOCaml("ocaml/string.ml", "extern/OCamlString.hx");
		// OCamlExternTools.externOCaml("ocaml/sys.ml", "extern/OCamlSys.hx");
	}
}
