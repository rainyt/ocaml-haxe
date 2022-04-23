package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;

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
					}
				}
				return 'Printf.printf "${types.join("")}\\n" ${args.join(" ")}';
			default:
				for (index => value in array) {
					args.push(OCaml2Tools.toString(value));
				}
				return funName + " " + args.join(" ");
		}
	}
}

#end