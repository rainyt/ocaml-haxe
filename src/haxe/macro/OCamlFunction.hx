package haxe.macro;

import haxe.macro.Context;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlFunction {
	public static function toString(expr:Expr, params:Array<Expr>):String {
		var code:Array<String> = [];
		var funcCode = builtInLibrary(expr, params);
		code.push(funcCode);
		if (funcCode.indexOf("@") == -1)
			for (item in params) {
				var type = OCamlType.toOCamlType(item);
				// trace("OCamlRef.ref", ExprTools.toString(expr),item, OCamlRef.ref);
				// trace("判断是否needRef", expr);
				// var needRef = OCamlRef.exists(ExprTools.toString(expr));
				var needRef = OCamlRef.needRef(expr, item);
				switch (item.expr) {
					case EConst(c):
						if (type == LIST)
							code.push((needRef ? "" : "!") + ExprTools.toString(item));
						else
							code.push('(${needRef ? "ref " : ""}${OCamlTools.toString(item)})');
					// code.push('(${needRef ? "ref " : ""}${OCamlTools.toString(item)})');
					case ECast(e, t):
						code.push('(${needRef ? "ref " : ""}${OCamlTools.toString(item)})');
					case EBinop(op, e1, e2):
						code.push('(${OCamlTools.toString(item)})');
					case ECall(e, params):
						code.push('(${OCamlTools.toString(item)})');
					default:
						var ret = OCamlTools.toString(item);
						if (ret.indexOf("[") != -1) {
							ret = '(ref ${ret})';
						}
						code.push(ret);
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
				switch (field) {
					case "push":
						return '${ExprTools.toString(e)} := !${ExprTools.toString(e)} @ [${OCamlTools.toString(params[0])}]';
					case "concat":
						return '!${ExprTools.toString(e)} @ ${OCamlTools.toString(params[0])}';
				}
				OCamlTools.toString(expr);
			default:
				ExprTools.toString(expr);
		}
		switch (code) {
			case "trace":
				code = "Printf.printf";
		}
		return code;
	}
}
