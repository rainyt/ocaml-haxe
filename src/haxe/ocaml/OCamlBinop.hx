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
				var param1 = ExprTools.toString(e1);
				var param2 = ExprTools.toString(e2);
				if (OCamlRef.isString(param1) || OCamlRef.isString(param2)) {
					return '${OCamlType.toStringType(e1)} ^ ${OCamlType.toStringType(e2)}';
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
			case OpEq:
				return "=";
			case OpAssign:
				return ":=";
			default:
				return new Printer("").printBinop(op);
		}
	}
}
