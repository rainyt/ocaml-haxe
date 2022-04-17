package ocaml;

@:native("Sys")
extern class OCamlSys {
    
    @:native("argv")
	public static function args():Array<String>;
}
