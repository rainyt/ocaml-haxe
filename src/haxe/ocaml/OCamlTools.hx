package haxe.ocaml;

import haxe.macro.Context;
import haxe.macro.Printer;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlTools {
	public static function toString(expr:Expr):String {
		switch (expr.expr) {
			// case EField(e, field):
			// 	var type = Context.getType(ExprTools.toString(e));
			// 	trace("type=", type);
			// trace(e, field);
			case EBinop(op, e1, e2):
				var opTag = toOp(op);
				if (opTag == ":=")
					return ExprTools.toString(e1) + ' ${opTag} ' + toString(e2);
				return toString(e1) + ' ${opTag} ' + toString(e2);
			case ECall(e, params):
				return OCamlFunction.toString(e, params);
			case EArray(e1, e2):
				return toString(e1) + '.(${toString(e2)})';
			case EConst(c):
				switch (c) {
					case CIdent(s):
						// todo 存在不需要!的情况，如for(s in array)
						return "!" + ExprTools.toString(expr);
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
				return 'if (${toString(econd)}) then ${toString(eif)} ${eelse != null ? "else " + toString(eelse) : ""}';
			case EFor(it, expr):
				return OCamlFor.toString(it, expr);
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
