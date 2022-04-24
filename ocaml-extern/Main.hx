import sys.io.Process;
import sys.io.File;

class Main {
	static function main() {
		// OCamlExternTools.externOCaml()
		OCamlExternTools.externOCaml("ocaml/string.ml", "extern/OCamlString.hx");
	}
}
