package haxe.macro.ocaml;

#if macro
/**
 * 这个类，好像是多余的？？
 */
class OCaml2Ref {
	public static var types:Map<Int, Type> = [];

	/**
	 * 定义类型
	 * @param name 
	 * @param type 
	 */
	public static function retianType(id:Int, type:Type):Void {
		// trace("定义：", id, type);
		types.set(id, type);
	}

	public static function getType(id:Int):String {
		if (types.exists(id)) {
			// trace("查询：", id, types.get(id));
			return OCaml2Type.toString(types.get(id));
		}
		return null;
	}
}
#end
