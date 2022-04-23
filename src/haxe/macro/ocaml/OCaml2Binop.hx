package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;
import haxe.macro.Expr.Binop;

using haxe.macro.ocaml.OCaml2Utils;

#if macro
class OCaml2Binop {
	public static function toString(op:Binop, e1:TypedExpr, e2:TypedExpr):String {
		var opTag = toOp(op);
		var type1 = OCaml2Type.toString(e1.t);
		switch (opTag) {
			case "+=", "-=", "/=", "*=":
				switch (type1) {
					case "String":
						if (opTag.charAt(0) != "+")
							throw "Strint not support op:" + opTag.charAt(0);
						return OCaml2Tools.toString(e1).removeDeCitation() + " := " + OCaml2Tools.toString(e1) + ' ^ ' + OCaml2Tools.toString(e2);
					case "Float":
                        
					case "Int":

					default:
						throw "Not support type:" + type1;
				}
		}
		return OCaml2Tools.toString(e1).removeDeCitation() + ' ${opTag} ' + OCaml2Tools.toString(e2);
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
