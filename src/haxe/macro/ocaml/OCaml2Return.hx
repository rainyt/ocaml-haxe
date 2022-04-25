package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;

#if macro
class OCaml2Return {
	public static function toString(expr:TypedExpr):String {
		var type = OCaml2Type.toString(OCaml2Tools.getCurrentReturnType()).toUpperCase();
		switch (expr.expr) {
			case TLocal(v):
			default:
		}
		switch (type) {
			case "OCAMLCHAR":
				OCaml2Tools.currentOCaml.writeHead('exception ${type} of char\n');
			default:
				OCaml2Tools.currentOCaml.writeHead('exception ${type} of ${type.toLowerCase()}\n');
		}
		return 'ignore (raise (${type} (${OCaml2Tools.toString(expr, false, OCaml2Tools.getCurrentReturnType())})))';
	}
}
#end
