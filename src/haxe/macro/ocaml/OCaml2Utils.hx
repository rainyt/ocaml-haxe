package haxe.macro.ocaml;

class OCaml2Utils {
	/**
	 * 删除解引
	 * @param text 
	 * @return String
	 */
	public static function removeDeCitation(text:String):String {
		return StringTools.replace(text, "!", "");
	}
}
