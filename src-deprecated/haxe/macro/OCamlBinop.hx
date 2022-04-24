package haxe.macro;

import haxe.macro.Printer;
import haxe.macro.ExprTools;
import haxe.macro.Expr;
import haxe.macro.Expr.Binop;

class OCamlBinop {
	public static function toString(op:Binop, e1:Expr, e2:Expr):String {
		var opTag = toOp(op);
		var left = ExprTools.toString(e1);
		var type1 = OCamlType.toOCamlType(e1);
		var type2 = OCamlType.toOCamlType(e2);
		if(type1 == STRING || type2 == STRING){
			type1 = STRING;
		}
		else if(type1 == INT && type2 == FLOAT || opTag == "/"){
			type1 = FLOAT;
		}
		var struct = false;
		if (left.indexOf(".") != -1)
			struct = true;
		switch (opTag) {
			case "+=", "-=", "/=", "*=":
				switch (type1) {
					case INT:
						return '${left} := ${OCamlType.toIntType(e1)} ${opTag.charAt(0)} (${OCamlType.toIntType(e2)})';
					case FLOAT:
						return '${left} := ${OCamlType.toFloatType(e1)} ${opTag.charAt(0)}. (${OCamlType.toFloatType(e2)})';
					case STRING,DYNAMIC:
						if (struct)
							return "!" + left + ' <- String.concat "" [${OCamlType.toStringType(e1)};${OCamlType.toStringType(e2)}]';
						return '${left} := String.concat "" [${OCamlType.toStringType(e1)};${OCamlType.toStringType(e2)}]';
					default:
				}
			case "+", "-", "/", "*":
				// todo 这里需要判断类型，如果是字符串，则使用^，如果是数字，则使用+
				switch (type1) {
					case INT:
						return '${OCamlType.toIntType(e1)} ${opTag} ${OCamlType.toIntType(e2)}';
					case FLOAT:
						return '${OCamlType.toFloatType(e1)} ${opTag}. ${OCamlType.toFloatType(e2)}';
					case STRING:
						return '${OCamlType.toStringType(e1)} ^ ${OCamlType.toStringType(e2)}';
					default:
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
