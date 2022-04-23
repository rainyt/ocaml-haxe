package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;

class OCaml2Return {
	public static function toString(expr:TypedExpr):String {
		var type = OCaml2Type.toString(expr.t).toUpperCase();
		return 'ignore (raise (${type} (${OCaml2Tools.toString(expr)})))';
	}
}
