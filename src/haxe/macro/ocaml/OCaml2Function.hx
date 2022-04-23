package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;

using haxe.macro.ocaml.OCaml2Utils;

#if macro
class OCaml2Function {
	public static function toString(expr:TypedExpr, array:Array<TypedExpr>):String {
		var args:Array<String> = [];
		var funName = OCaml2Tools.toString(expr);
		switch (funName) {
			case "Haxe_log.trace":
				// 特殊处理
				var types = [];
				types.push(OCaml2Type.toString(array[0].t));
				args.push(OCaml2Tools.toString(array[0]));
				var expr2 = array[1];
				switch (expr2.expr) {
					case TObjectDecl(fields):
						var obj:Dynamic = {};
						for (item in fields) {
							if (item.name == "customParams") {
								switch (item.expr.expr) {
									case TArrayDecl(el):
										for (elitem in el) {
											types.push(OCaml2Type.toString(elitem.t));
											args.push(OCaml2Tools.toString(elitem));
										}
									default:
								}
							}
							Reflect.setProperty(obj, item.name, OCaml2Tools.toString(item.expr));
						}
					default:
				}
				for (index => value in types) {
					switch (value) {
						case "String":
							types[index] = "%s";
						case "Float":
							types[index] = "%f";
						case "Int":
							types[index] = "%i";
						case "Dynamic":
							types[index] = "{dynamic}";
						default:
							throw "Not support trace type:" + value;
					}
				}
				for (index => value in args) {
					args[index] = "(" + value + ")";
				}
				return 'Printf.printf "${types.join("")}\\n" ${args.join(" ")}';
			default:
				for (index => value in array) {
					args.push(OCaml2Tools.toString(value));
				}
				var needRef = OCaml2Tools.isHaxe2OCamlType(expr);
				if (needRef) {
					for (index => value in args) {
						args[index] = '(ref ${value})';
					}
				} else {
					for (index => value in args) {
						args[index] = '(${value})';
					}
				}
				return funName + " " + (args.length > 0 ? args.join(" ") : "()");
		}
	}
}
#end
