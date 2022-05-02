import ocaml.Str;
import ocaml.Str.Str_Regexp;

/**
 * 正则API模仿
 */
class Ereg {
	public var ocamlEreg:Str_Regexp;

	public var mode:String;

	public function new(a1:String, b1:String) {
		trace("create Ereg:", a1, ",", b1);
		ocamlEreg = Str.regexp(a1);
		this.mode = b1;
	}

	/**
	 * 替换运算
	 * @param s 
	 * @param by 
	 * @return String
	 */
	public function replace(s:String, by:String):String {
		if (mode == "g") {
			var data = Str.global_replace(ocamlEreg, by, s);
			return data;
		}
		return Str.replace_first(ocamlEreg, by, s);
	}

	/**
	 * map api
	 * @param s 
	 * @param cb 
	 */
	public function map(s:String, cb:Ereg->String):Void {
		cb(this);
	}

	public function matched(index:Int):String {
		return "";
	}
}
