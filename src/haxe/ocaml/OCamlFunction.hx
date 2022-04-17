package haxe.ocaml;

import haxe.macro.Context;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlFunction {
	public static function toString(expr:Expr, params:Array<Expr>):String {
		var code:Array<String> = [];
		code.push(builtInLibrary(expr, params));
		for (item in params) {
			code.push(OCamlTools.toString(item));
		}
		return code.join(" ");
	}

	public static function builtInLibrary(expr:Expr, params:Array<Expr>):String {
		var code = switch (expr.expr) {
			case EField(e, field):
			 	OCamlTools.toString(expr);
			default:
				ExprTools.toString(expr);
		}
		if (code == "trace") {
			// 使用Printf代替
			code = "Printf.printf";
		}
		return code;
	}
}
