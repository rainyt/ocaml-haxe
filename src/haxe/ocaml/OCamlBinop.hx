package haxe.ocaml;

import haxe.macro.Printer;
import haxe.macro.ExprTools;
import haxe.macro.Expr;
import haxe.macro.Expr.Binop;

class OCamlBinop {
	public static function toString(op:Binop, e1:Expr, e2:Expr):String {
		var opTag = toOp(op);
		var left = ExprTools.toString(e1);
		var struct = false;
		if (left.indexOf(".") != -1)
			struct = true;
		switch (opTag) {
			case "+=":
				if (struct)
					return "!" + left + ' <- String.concat "" [!${left};${OCamlType.toStringType(e2)}]';
				return '${left} := String.concat "" [!${left};${OCamlType.toStringType(e2)}]';
			case "+":
				// todo 这里需要判断类型，如果是字符串，则使用^，如果是数字，则使用+
				if (OCamlRef.isType(e1, STRING) || OCamlRef.isType(e2, STRING)) {
					return '${OCamlType.toStringType(e1)} ^ ${OCamlType.toStringType(e2)}';
				} else if (OCamlRef.isType(e1, FLOAT) && OCamlRef.isType(e2, FLOAT)) {
					return '${OCamlTools.toString(e1)} +. ${OCamlTools.toString(e2)}';
				}
			case ":=":
				if (struct)
					return "!" + left + ' <- ' + OCamlTools.toString(e2);
				return left + ' ${opTag} ' + OCamlTools.toString(e2);
		}
		return OCamlTools.toString(e1) + ' ${opTag} ' + OCamlTools.toString(e2);
	}

	public static function toOp(op:Binop):String {
		switch (op) {
			case OpMod:
				return "mod";
			case OpEq:
				return "=";
			case OpAssign:
				return ":=";
			default:
				return new Printer("").printBinop(op);
		}
	}
}
