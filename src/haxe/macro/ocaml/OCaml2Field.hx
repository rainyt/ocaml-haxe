package haxe.macro.ocaml;

import haxe.macro.Type;

#if macro
class OCaml2Field {
	public static function toString(e:TypedExpr, fa:FieldAccess):String {
		var callName = null;
		switch (fa) {
			case FStatic(c, cf):
				callName = cf.toString();
				for (item in cf.get().meta.get()) {
					if (item.name == ":native") {
						callName = ExprTools.getValue(item.params[0]);
					}
				}
			default:
				throw "Not support FieldAccess:" + fa;
		}
		switch (e.t) {
			case TType(t, params):
				var ctype = t.get();
				var type = Context.getType(ctype.module);
				switch (type) {
					case TInst(t, a):
						var type2 = t.get();
						// var field = TypeTools.findField(type2, callName, true);
						for (index => value in type2.meta.get()) {
							if (value.name == ":native") {
								return ExprTools.getValue(value.params[0]) + "." + callName;
							}
						}
					default:
				}
				var call = ctype.module;
				call = StringTools.replace(call, ".", "_");
				call = call.toLowerCase();
				call = call.charAt(0).toUpperCase() + call.substr(1);

				// call，需要确认是否为当前类型，如果是，则无需定义
				if (OCaml2Tools.currentType.module == ctype.module) {
					return callName;
				}
				return call + "." + callName;
			default:
				throw "Not support Field:" + e.t;
		}
		return "";
	}
}
#end
