package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;

#if macro
class OCaml2Return {
	public static function toString(expr:TypedExpr):String {
		var type = OCaml2Type.toString(expr.t).toUpperCase();
		OCaml2Tools.currentOCaml.writeHead('exception ${type} of ${type.toLowerCase()}\n');
		return 'ignore (raise (${type} (${OCaml2Tools.toString(expr)})))';
	}
}
#end
