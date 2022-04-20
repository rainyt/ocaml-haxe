package haxe.ocaml;

import haxe.macro.Expr;

class OCamlReturn {
	public static var exception:Array<String> = ["BOOL of bool", "STRING of string", "INT of int", "FLOAT of float"];

	public static function toString(e:Expr):String {
		// var type = OCamlType.toOCamlType(e);
		var type = OCamlRef.returnType;
		return 'ignore (raise (${type} (${OCamlTools.toString(e)})))';
	}
}
