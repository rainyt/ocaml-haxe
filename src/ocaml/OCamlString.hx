package ocaml;

/**
 * OCaml String API
 */
@:native("String")
extern class OCamlString {
	/**
	 * 拼接字符
	 * @param sep 
	 * @param list 
	 * @return String
	 */
	public static function concat(sep:String, list:Array<String>):String;
}
