package haxe.ocaml;

import haxe.ocaml.OCamlRef.OCamlClass;
import haxe.macro.Context;
import haxe.macro.Printer;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlTools {
	public static function toString(expr:Expr):String {
		switch (expr.expr) {
			case EField(e, field):
				return OCamlField.toString(e, field);
			case EBinop(op, e1, e2):
				var opTag = toOp(op);
				switch (opTag) {
					case "+":
						// todo 这里需要判断类型，如果是字符串，则使用^，如果是数字，则使用+
						var param1 = ExprTools.toString(e1);
						var param2 = ExprTools.toString(e2);
						if (OCamlRef.isString(param1) || OCamlRef.isString(param2)) {
							return '${OCamlType.toStringType(e1)} ^ ${OCamlType.toStringType(e2)}';
						}
					case ":=":
						return ExprTools.toString(e1) + ' ${opTag} ' + toString(e2);
				}
				return toString(e1) + ' ${opTag} ' + toString(e2);
			case ECall(e, params):
				return OCamlFunction.toString(e, params);
			case EArray(e1, e2):
				return toString(e1) + '.(${toString(e2)})';
			case EConst(c):
				switch (c) {
					case CIdent(s):
						// 存在不需要!的情况，如for(s in array)
						var name = ExprTools.toString(expr);
						return (OCamlRef.ref.exists(name) ? "!" : "") + name;
					default:
						return ExprTools.toString(expr);
				}
			case EBlock(exprs):
				var code = ["("];
				for (item in exprs) {
					code.push(toString(item));
				}
				code.push(")");
				return code.join("\n");
			case EIf(econd, eif, eelse):
				return "(* EIf *)\n" + 'if (${toString(econd)}) then ${toString(eif)} ${eelse != null ? "else " + toString(eelse) : ""}';
			case EFor(it, expr):
				return "(* For *)\n" + OCamlFor.toString(it, expr);
			default:
				return '(* OCamlTools.TODO ${expr.expr.getName();} *)';
		}
		return null;
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

	public static function toT(index:Int):String {
		var code = "\t";
		for (i in 0...index) {
			code += "\t";
		}
		return code;
	}
}
