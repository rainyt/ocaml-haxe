package ocaml;

@:native("Stdlib")
extern class Stdlib {

    @:native("open_in")
	public static function openInput(path:String):InputChannel;

    @:native("input_line")
    public static function inputLine(input:InputChannel):String;

}

extern class InputChannel {}
