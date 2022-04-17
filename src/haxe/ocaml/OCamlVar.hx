package haxe.ocaml;

import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlVar {
	public static function toString(item:Var):String {
		var code = 'let ${item.name}=ref ';
		switch (item.expr.expr) {
			case EConst(c):
				code += OCamlTools.toString(item.expr);
			case ECall(e, params):
				code += "(" + OCamlFunction.toString(e, params) + ")";
			case EArray(e1, e2):
				trace(e1, e2);
				code += OCamlTools.toString(item.expr);
			default:
				throw "意外符号：" + item.expr.expr.getName();
		}
		code += " in";
		return code;
	}
}
