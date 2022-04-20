package haxe.ocaml;

import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlFor {
	public static function toString(it:Expr, expr:Expr):String {
		switch (it.expr) {
			case EBinop(op, e1, e2):
				if (op == OpIn) {
					switch (e2.expr) {
						case EBinop(op, ee1, ee2):
							if (op == OpInterval) {
								return 'for ${StringTools.replace(OCamlTools.toString(e1), "!", "")} = ${OCamlTools.toString(ee1)} to ${OCamlTools.toString(ee2)} - 1 do (${OCamlTools.toString(expr)}) done';
							}
						default:
							return "Array.iter (fun " + ExprTools.toString(e1) + " -> (" + OCamlTools.toString(expr) + ")) " + OCamlTools.toString(e2);
					}
				} else
					return "(* TODO For " + op + " *)";
			default:
				throw "异常处理";
		}
		return null;
	}
}
