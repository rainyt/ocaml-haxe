package ocaml;

extern class Sys {
    
    @:native("argv")
	public static function args():Array<String>;
}
