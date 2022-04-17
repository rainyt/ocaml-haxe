package haxe.ocaml;

import haxe.macro.Printer;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlTools {
	public static function toString(expr:Expr):String {
		switch (expr.expr) {
			case EField(e, field):
				trace(e, field);
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
						return "!" + ExprTools.toString(expr);
					default:
						return ExprTools.toString(expr);
				}
			default:
				throw "意外符号：" + expr.expr.getName();
		}
		return null;
	}

	public static function toOp(op:Binop):String {
		switch (op) {
			case OpAssign:
				return ":=";
			default:
				return new Printer("").printBinop(op);
		}
	}
}
