package haxe.ocaml;

import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlFor {
	public static function toString(it:Expr, expr:Expr):String {
		switch (it.expr) {
			case EBinop(op, e1, e2):
				if (op == OpIn) {
					return "Array.iter (fun " + ExprTools.toString(e1) + " -> (" + OCamlTools.toString(expr) + ")) " + OCamlTools.toString(e2);
				} else
					return "(* TODO For " + op + " *)";
			default:
				throw "异常处理";
		}
		return null;
	}
}
