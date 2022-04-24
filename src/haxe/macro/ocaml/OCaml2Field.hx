package haxe.macro.ocaml;

import haxe.macro.Type;

#if macro
class OCaml2Field {
	/**
	 * 是否由OCamlArrayCast转换的
	 * @param e 
	 * @return Bool
	 */
	public static function isOCamlArrayCast(e:TypedExpr):Bool {
		var isOCamlArrayCast:Bool = false;
		switch (e.expr) {
			case TLocal(v):
				if (OCaml2Type.toString(v.t) == "ocaml.OCamlArray") {
					isOCamlArrayCast = true;
				} else {
					var meta = v.meta.get()[0];
					if (meta != null && meta.name == "@:cast") {
						var param = ExprTools.getValue(meta.params[0]);
						if (param == "ocaml.OCamlArray")
							isOCamlArrayCast = true;
					}
				}
			default:
				return false;
		}
		return isOCamlArrayCast;
	}

	public static function toString(e:TypedExpr, fa:FieldAccess):String {
		var callName = null;
		var callClassField:ClassField = null;
		var isOCamlArrayCast = isOCamlArrayCast(e);
		switch (e.expr) {
			case TLocal(v):
				if (OCaml2Type.toString(v.t) == "ocaml.OCamlArray") {
					isOCamlArrayCast = true;
				}
			default:
		}
		switch (fa) {
			case FStatic(c, cf):
				callClassField = cf.get();
				callName = cf.toString();
				for (item in callClassField.meta.get()) {
					if (item.name == ":native") {
						callName = ExprTools.getValue(item.params[0]);
					}
				}
			case FInstance(c, params, cf):
				switch (c.toString()) {
					case "Array":
						switch (cf.toString()) {
							case "length":
								// todo 需要判断是List还是Array
								if (isOCamlArrayCast)
									return 'Array.length ${OCaml2Tools.toString(e)}';
								return 'List.length ${OCaml2Tools.toString(e)}';
						}
				}
				return "FInstance";
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
					switch (callClassField.kind) {
						case FVar(read, write):
							return "!" + callName;
						case FMethod(k):
							return callName;
					}
				}
				return call + "." + callName;
			case TInst(t, params):

			default:
				throw "Not support Field:" + e.t;
		}
		return "";
	}
}
#end
