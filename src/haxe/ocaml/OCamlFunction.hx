package haxe.ocaml;

import haxe.macro.Context;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlFunction {
	public static function toString(expr:Expr, params:Array<Expr>):String {
		var code:Array<String> = [];
		var funcCode = builtInLibrary(expr, params);
		code.push(funcCode);
		if (funcCode.indexOf("::") == -1)
			for (item in params) {
				var type = OCamlType.toOCamlType(item);
				switch (item.expr) {
					case EConst(c):
						if (type == LIST)
							code.push(ExprTools.toString(item));
						else
							code.push(OCamlTools.toString(item));
					case ECast(e, t):
						code.push('(${OCamlTools.toString(item)})');
					case EBinop(op, e1, e2):
						code.push('(${OCamlTools.toString(item)})');
					case ECall(e, params):
						code.push('(${OCamlTools.toString(item)})');
					default:
						code.push(OCamlTools.toString(item));
				}
			}
		if (params.length == 0) {
			code.push("()");
		}
		return code.join(" ");
	}

	public static function builtInLibrary(expr:Expr, params:Array<Expr>):String {
		var code = switch (expr.expr) {
			case EField(e, field):
				if (field == "push") {
					return '${ExprTools.toString(e)} := ${OCamlTools.toString(params[0])} :: !${ExprTools.toString(e)}';
				}
				OCamlTools.toString(expr);
			default:
				ExprTools.toString(expr);
		}
		trace(code);
		switch (code) {
			case "trace":
				code = "Printf.printf";
			case "push":
				code = "123";
		}
		return code;
	}
}
