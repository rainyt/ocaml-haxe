package haxe.macro.ocaml;

import haxe.macro.Type;

using haxe.macro.ocaml.OCaml2Utils;

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
				var readType = OCaml2Ref.getType(v.id);
				if(readType == null)
					return false;
				isOCamlArrayCast = readType.indexOf(" Array") != -1;
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
							case "push":
								return '${OCaml2Tools.toString(e).removeDeCitation()} := ${OCaml2Tools.toString(e)} @';
							case "concat":
								return '${OCaml2Tools.toString(e)} @ ';
							default:
								throw "Not support FInstance api:" + cf;
						}
					case "String":
						switch (cf.toString()) {
							case "length":
								return '${c.toString()}.${cf.toString()} ${OCaml2Tools.toString(e)}';
						}
					default:
						// todo，如果是变量，应该直接访问，而方法应该保持现状
						var field = TypeTools.findField(c.get(), cf.toString(), false);
						var fieldValue = OCaml2Tools.toString(e);
						var cget = c.get();
						if (!cget.isExtern) {
							switch (field.kind) {
								case FVar(read, write):
									return 'match ${fieldValue}.${cf.toString()} with | Nil -> raise Not_found | VALUE v -> v';
								case FMethod(k):
									return OCaml2Type.toTypeString(cget.module, true) + '.${cf.toString()}';
							}
						}
						if (field != null)
							return '${fieldValue}.${cf.toString()}';
						return '${c.toString()}.${cf.toString()} ${fieldValue}';
				}
			case FAnon(cf):
				trace(cf);
				return "(* FAnon *)";
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

			case TAnonymous(a):
				switch (e.expr) {
					case TTypeExpr(m):
						switch (m) {
							case TClassDecl(c):
								var array = c.get().meta.get().filter((data) -> data.name == ":native");
								if (array.length > 0) {
									callName = '${ExprTools.getValue(array[0].params[0])}.${callName}';
								} else {
									callName = '${c.toString()}.${callName}';
								}
							default:
								throw "Not support TAnonymous.Type.TClassDecl" + m;
						}
					default:
						throw "Not support TAnonymous.Type:" + e;
				}
				return callName;
			default:
				throw "Not support Field:" + e.t;
		}
		return "";
	}
}
#end
