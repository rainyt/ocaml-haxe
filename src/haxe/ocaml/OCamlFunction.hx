package haxe.ocaml;

import haxe.macro.Context;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlFunction {
	public static function toString(expr:Expr, params:Array<Expr>):String {
		var code:Array<String> = [];
		code.push(builtInLibrary(expr, params));
		for (item in params) {
			switch (item.expr) {
				case EConst(c):
					code.push(OCamlTools.toString(item));
				default:
					return '(* TODO ${item.expr.getName();} *)';
			}
		}
		return code.join(" ");
	}

	public static function builtInLibrary(expr:Expr, params:Array<Expr>):String {
		var code = switch (expr.expr) {
			case EField(e, field):
				var type = Context.getType(ExprTools.toString(e));
				switch (type) {
					case TInst(t, params):
						// 兼容@:native实现
						var mate = t.get().meta.get().filter((data) -> data.name.indexOf(":native") != -1);
						if (mate.length > 0) {
							return ExprTools.getValue(mate[0].params[0]) + "." + field;
						}
					default:
						return "(* TODO type " + type.getName() + " *)";
				}
				ExprTools.toString(e) + "." + field;
			default:
				ExprTools.toString(expr);
		}
		if (code == "trace") {
			// 使用Printf代替
			code = "Printf.printf";
		}
		return code;
	}
}
