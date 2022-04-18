package haxe.ocaml;

import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlType {
	/**
	 * 将类型转换为String类型
	 * @param expr 
	 * @return String
	 */
	public static function toStringType(expr:Expr):String {
		var c = OCamlRef.ref.get(ExprTools.toString(expr));
		var paramName = OCamlTools.toString(expr);
		switch (c) {
			case INT:
				return '(string_of_int ${paramName})';
			case FLOAT:
				return '(string_of_float ${paramName})';
			case BOOL:
				return '(string_of_bool ${paramName})';
			default:
		}
		return paramName;
	}
}
