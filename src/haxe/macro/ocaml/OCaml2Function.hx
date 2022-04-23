package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;

class OCaml2Function {
	public static function toString(expr:TypedExpr, array:Array<TypedExpr>):String {
		var args = [];
		var funName = OCaml2Tools.toString(expr);
		switch (funName) {
			case "Haxe_log.trace":
				for (index => value in array) {
					args.push(OCaml2Tools.toString(value));
				}
				return funName + " " + args.join(" ");
			default:
				for (index => value in array) {
					args.push(OCaml2Tools.toString(value));
				}
				return funName + " " + args.join(" ");
		}
	}
}
