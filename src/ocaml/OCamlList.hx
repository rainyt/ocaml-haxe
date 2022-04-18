package ocaml;

@:native("List")
extern class OCamlList {
	@:native("nth")
	public static function at(list:Array<Dynamic>, index:Int):Dynamic;
}
