package ocaml;

@:native("Sys")
extern class OCamlSys {
	public static function argv():Array<String>;
}
