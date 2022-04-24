package haxe.macro.ocaml;

#if macro
/**
 * 这个类，好像是多余的？？
 */
class OCaml2Ref {
	public static var types:Map<String, ClassRef> = [];

	/**
	 * 定义类型
	 * @param name 
	 * @param type 
	 */
	public static function retianType(name:String, type:Type):Void {
		var curModule = OCaml2Tools.currentType.module;
		if (!types.exists(curModule)) {
			types.set(curModule, new ClassRef());
		}
		types.get(curModule).ref.set(name, type);
	}
}

class ClassRef {
	public var ref:Map<String, Type> = [];

	public function new() {}
}
#end
