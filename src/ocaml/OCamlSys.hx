package ocaml;

@:native("Sys")
extern class OCamlSys {
    
    @:native("argv")
	public static var args:OCamlArray<String>;

    public static function time():Float;
}
