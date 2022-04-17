package haxe.ocaml;

import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlFunction {
	public static function toString(expr:Expr, params:Array<Expr>):String {
		var code:Array<String> = [];
		code.push(builtInLibrary(expr, params));
		for (item in params) {
			switch (item.expr) {
				case EConst(c):
					code.push(OCamlTools.toString(item));
				default:
					throw "意外未处理符号：" + item.expr.getName();
			}
		}
		return code.join(" ");
	}

	public static function builtInLibrary(expr:Expr, params:Array<Expr>):String {
		var code = switch (expr.expr) {
			case EField(e, field):
				StringTools.replace(ExprTools.toString(e), "OCaml", "") + "." + field;
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
