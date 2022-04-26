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
				OCaml2Tools.currentOCaml.writeHead('exception ${type} of ${parseType(type.toLowerCase())}\n');
		}
		return 'ignore (raise (${type} (${OCaml2Tools.toString(expr, false, OCaml2Tools.getCurrentReturnType())})))';
	}

	public static function parseType(type:String):String {
		type = StringTools.replace(type, "_", ".");
		if (type.indexOf(".") != -1) {
			var arr = type.split(".");
			return arr[0].charAt(0).toUpperCase() + arr[0].substr(1) + "." + arr[1];
		}
		return type;
	}
}
#end
