package haxe.macro.ocaml;

import haxe.macro.Type.TypedExpr;

/**
 * 使用OCamlGlobalMacro实现的第二轮解析工具
 */
class OCaml2Tools {
	public static function parserExpr(expr:TypedExpr):String {
		// trace(expr);
		switch (expr.expr) {
			case TLocal(v):
				return v.name;
			case TCall(e, el):
				return OCaml2Function.toString(e);
			case TReturn(e):
				return OCaml2Return.toString(e);
			case TBlock(el):
				var oc:OCaml = new OCaml();
				for (item in el) {
					oc.write(parserExpr(item) + ";\n");
				}
				return oc.code;
			case TFunction(tfunc):
				var oc = new OCaml();
				if (tfunc.args.length == 0)
					oc.write("()");
				else
					for (a in tfunc.args) {
						trace(a);
						oc.write(" " + a.v.name);
					}
				oc.write(" = try \n");
				oc.write(parserExpr(tfunc.expr));
				oc.write("with " + OCaml2Type.toString(tfunc.t).toUpperCase() + " ret -> ret");
				return oc.code;
			default:
				return '(* Not suppor ${expr.expr.getName()} *)';
				// throw "Not support " + expr.expr.getName();
		}
		return null;
	}
}
