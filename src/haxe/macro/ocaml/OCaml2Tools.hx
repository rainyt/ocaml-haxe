package haxe.macro.ocaml;

import haxe.macro.Type;

#if macro
/**
 * 使用OCamlGlobalMacro实现的第二轮解析工具
 */
class OCaml2Tools {
	/**
	 * 当前类型
	 */
	public static var currentType:ClassType;

	/**
	 * 编译为OCaml语法
	 * @param expr 
	 * @return String
	 */
	public static function toString(expr:TypedExpr):String {
		switch (expr.expr) {
			case TBinop(op, e1, e2):
				return OCaml2Binop.toString(op, e1, e2);
			case TArrayDecl(el):
				var oc = new OCaml();
				oc.write("[");
				var ret = [];
				for (index => value in el) {
					ret.push(toString(value));
				}
				oc.write(ret.join(";"));
				oc.write("]");
				return oc.code;
			case TObjectDecl(fields):
				var oc = new OCaml();
				oc.write("{");
				var params = [];
				for (item in fields) {
					params.push(item.name + ":" + toString(item.expr));
				}
				oc.write(params.join(";"));
				oc.write("}");
				return oc.code;
			// return fields.toString();
			case TTypeExpr(m):
				switch (m) {
					case TClassDecl(c):
						var code = c.toString();
						code = StringTools.replace(code, ".", "_");
						code = code.toLowerCase();
						code = code.charAt(0).toUpperCase() + code.substr(1);
						return code;
					default:
						throw "Not support TTypeExpr:" + m;
				}
			case TField(e, fa):
				// var t = Context.getType("ocaml.lib.File");
				// trace(fa,t);
				// return fa.getParameters()[0] + ".__" + fa.getParameters()[1];
				return OCaml2Field.toString(e, fa);
			// return toString(e) + "." + fa.getParameters()[1];
			case TConst(c):
				switch (c) {
					case TInt(i):
						return Std.string(i);
					case TString(s):
						s = StringTools.replace(s, "\n", "\\n");
						s = StringTools.replace(s, "\r", "\\r");
						s = StringTools.replace(s, "\t", "\\t");
						return '"${s}"';
					default:
						throw "Not support TConst:" + c;
				}
			case TVar(v, expr):
				// OCaml2Ref.retianType(v.name, v.t);
				return 'let ${v.name} = ref ${toString(expr)} in';
			case TLocal(v):
				return "!" + v.name;
			case TCall(e, el):
				return '(${OCaml2Function.toString(e, el)})';
			case TReturn(e):
				return OCaml2Return.toString(e) + ";" + toString(e);
			case TBlock(el):
				var oc:OCaml = new OCaml();
				for (item in el) {
					var code = toString(item);
					if (code == "")
						continue;
					oc.write(code);
					if (code.length - 2 != code.lastIndexOf("*)") && code.length - 2 != code.lastIndexOf("in")) {
						oc.write(";\n");
					} else {
						oc.write("\n");
					}
				}
				return oc.code;
			case TFunction(tfunc):
				var oc = new OCaml();
				var type = OCaml2Type.toString(tfunc.t).toUpperCase();
				if (tfunc.args.length == 0)
					oc.write("()");
				else
					for (a in tfunc.args) {
						oc.write(" " + a.v.name);
					}
				if (type != "VOID")
					oc.write(" = try \n");
				else
					oc.write(" = ");
				oc.write(toString(tfunc.expr));
				if (type != "VOID")
					oc.write("with " + OCaml2Type.toString(tfunc.t).toUpperCase() + " ret -> ret");
				return oc.code;
			default:
				return '(* Not suppor ${expr.expr.getName()} *)';
				// throw "Not support " + expr.expr.getName();
		}
		return null;
	}

	/**
	 * 是否为Haxe转OCaml文件
	 * @param expr 
	 * @return Bool
	 */
	public static function isHaxe2OCamlType(expr:TypedExpr):Bool {
		switch (expr.expr) {
			case TField(e, fa):
				// trace(e.t);
				switch (e.t) {
					case TType(t, params):
						var type = Context.getType(t.get().module);
						switch (type) {
							case TInst(t, params):
								return OCamlGlobalMacro.mlCompileEReg.match(t.get().module);
							default:
						}
					default:
				}
			default:
		}
		return false;
	}
}
#end
