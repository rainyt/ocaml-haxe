package ocaml;

@:native("Sys")
extern class OCamlSys {
    
    @:native("argv")
	public static var args:Array<String>;

    public static function time():Float;
}
