package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;
import haxe.macro.Expr.Binop;

using haxe.macro.ocaml.OCaml2Utils;
using haxe.macro.ocaml.OCaml2Type;

#if macro
class OCaml2Binop {
	public static function toString(op:Binop, e1:TypedExpr, e2:TypedExpr):String {
		var opTag = toOp(op);
		var type1 = OCaml2Type.toString(e1.t);
		var type2 = OCaml2Type.toString(e2.t);
		if (type2 == "String" || type1 == "String") {
			type1 = "String";
		} else if (type2 == "Float" || type1 == "Float") {
			type1 = "Float";
		} else if (type1 == "Int" && opTag.charAt(0) == "/") {
			type1 = "Float";
		}
		type1 = type1.toTypeString(true);
		switch (opTag) {
			case "+=", "-=", "/=", "*=":
				switch (type1) {
					case "String":
						if (opTag.charAt(0) != "+")
							throw "Strint not support op:" + opTag.charAt(0);
						return OCaml2Tools.toString(e1).removeDeCitation() + " := " + OCaml2Tools.toStringByType(e1, "String") + ' ^ '
							+ OCaml2Tools.toStringByType(e2, "String");
					case "Float":
						return OCaml2Tools.toString(e1).removeDeCitation() + " := " + OCaml2Tools.toStringByType(e1, "Float") + ' ${opTag.charAt(0)}. '
							+ OCaml2Tools.toStringByType(e2, "Float");
					case "Int":
						return OCaml2Tools.toString(e1).removeDeCitation() + " := " + OCaml2Tools.toStringByType(e1, "Int") + ' ${opTag.charAt(0)} '
							+ OCaml2Tools.toStringByType(e2, "Int");
					default:
						throw "Not support type:" + type1;
				}
			case "+", "-", "/", "*":
				switch (type1) {
					case "String":
						return OCaml2Tools.toStringByType(e1, "String") + ' ^ ' + OCaml2Tools.toStringByType(e2, "String");
					case "Float":
						return OCaml2Tools.toStringByType(e1, "Float") + ' ${opTag}. ' + OCaml2Tools.toStringByType(e2, "Float");
					case "Int":
						return OCaml2Tools.toStringByType(e1, "Int") + ' ${opTag} ' + OCaml2Tools.toStringByType(e2, "Int");
					default:
						throw "Not support type:" + type1;
				}
			case ":=":
				// trace(e1.expr);
				switch (e1.expr) {
					case TField(e, fa):
						switch (e.expr) {
							case TConst(c):
								switch (c) {
									case TThis:
										var tname = "";
										switch (fa) {
											case FInstance(c, params, cf):
												tname = cf.toString();
											default:
										}
										return 'this.${tname} <- VALUE ${OCaml2Tools.toString(e2)}';
									default:
								}
							default:
						}
					default:
				}
				var self = OCaml2Tools.toString(e1).removeDeCitation();
				var c = self + ' ${opTag} ' + OCaml2Tools.toString(e2);
				return c;
		}
		return OCaml2Tools.toString(e1, e2.t) + ' ${opTag} ' + OCaml2Tools.toString(e2, false, e1.t);
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
#end
