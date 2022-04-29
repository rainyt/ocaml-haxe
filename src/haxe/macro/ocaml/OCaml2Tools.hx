package haxe.macro.ocaml;

import haxe.macro.Type;

using haxe.macro.ocaml.OCaml2Utils;
using haxe.macro.ocaml.OCaml2Type;

#if macro
/**
 * 使用OCamlGlobalMacro实现的第二轮解析工具
 */
class OCaml2Tools {
	/**
	 * 是否定义方法
	 */
	public static var parserDefineFunc:Bool = false;

	/**
	 * 当前类型
	 */
	public static var currentType:ClassType;

	/**
	 * 当前定义
	 */
	public static var currentField:ClassField;

	/**
	 * 当前的脚本编译器
	 */
	public static var currentOCaml:OCaml;

	/**
	 * 上一个lastBlockExpr，如IF While等
	 */
	public static var lastBlockExpr:TypedExpr;

	/**
	 * 方法返回值解析列表
	 */
	public static var funcTypeList:Array<Type> = [];

	/**
	 * 获取当前方法的返回值
	 * @return Type
	 */
	public static function getCurrentReturnType():Type {
		return funcTypeList[funcTypeList.length - 1];
	}

	public static function toStringByType(expr:TypedExpr, type:String):String {
		var selfType = OCaml2Type.toString(expr.t);
		switch (type) {
			case "String":
				switch (selfType) {
					case "Float":
						return '(string_of_float (${toString(expr)}))';
					case "Int":
						return '(string_of_int (${toString(expr)}))';
				}
			case "Float":
				switch (selfType) {
					case "String":
						return '(float_of_string (${toString(expr)}))';
					case "Int":
						return '(float_of_int (${toString(expr)}))';
				}
			case "Int":
				switch (selfType) {
					case "Float":
						return '(int_of_float (${toString(expr)}))';
					case "String":
						return '(int_of_string (${toString(expr)}))';
				}
			default:
				throw "Not support toStringByType type:" + type;
		}
		return toString(expr);
	}

	/**
	 * 编译为OCaml语法
	 * @param expr 
	 * @param ref 是否ref中
	 * @return String
	 */
	public static function toString(expr:TypedExpr, ref:Bool = false, castType:Type = null):String {
		if (expr == null) {
			return "(* expr is null? *)";
		}
		switch (expr.expr) {
			case TNew(c, params, el):
				// trace(c, params, el);
				var oc:OCaml = new OCaml();
				oc.write('${c.toString().toTypeString(true)}.create_this ');
				var needRef = OCaml2Tools.isHaxe2OCamlType(expr);
				for (e in el) {
					oc.write("(" + (needRef ? "ref " : "") + toString(e) + ")");
				}
				return oc.code;
			case TTry(e, catches):
				var oc:OCaml = new OCaml();
				oc.write("try\n" + toString(e) + "with _ -> \n");
				for (item in catches) {
					oc.write(toString(item.expr));
				}
				oc.write("()");
				return oc.code;
			case TBreak:
				return "break := false";
			case TIf(econd, eif, eelse):
				lastBlockExpr = expr;
				var code = 'if (${toString(econd)}) then (\n${toString(eif)} ${eelse != null ? ")else(" + toString(eelse) + ")" : ")"}';
				lastBlockExpr = null;
				return code;
			case TArray(e1, e2):
				// todo 这里需要判断Array或者List
				var type = OCaml2Type.toString(e1.t);
				switch (type) {
					case "ocaml.OCamlArray":
						return '${toString(e1)}.(${toString(e2)})';
				}
				var isOCamlArrayCast = OCaml2Field.isOCamlArrayCast(e1);
				if (isOCamlArrayCast) {
					return '${toString(e1)}.(${toString(e2)})';
				}
				return 'List.nth ${toString(e1)} (${toString(e2)})';
			case TUnop(op, postFix, e):
				var oc = new OCaml();
				if (!ref)
					oc.write('${toString(e).removeDeCitation()} := ');
				var type = OCaml2Type.toString(e.t);
				switch (op) {
					case OpDecrement:
						switch (type) {
							case "Int":
								oc.write('${toString(e)} - 1');
							case "Float":
								oc.write('${toString(e)} -. 1.');
							default:
								throw "Not support op " + op;
						}
					case OpIncrement:
						// ++
						switch (type) {
							case "Int":
								oc.write('${toString(e)} + 1');
							case "Float":
								oc.write('${toString(e)} +. 1.');
							default:
								throw "Not support op " + op;
						}
					default:
						throw "未处理的运算符：" + op;
				}
				return oc.code;
			case TParenthesis(e):
				return toString(e);
			case TWhile(econd, e, normalWhile):
				lastBlockExpr = expr;
				var oc:OCaml = new OCaml();
				oc.write('let break = ref true in while (!break && (${toString(econd)})) do\n');
				if (e.expr.getName() == "TBlock") {
					switch (e.expr) {
						case TBlock(exprs):
							oc.write(toString(e));
						default:
					}
				} else
					oc.write(toString(e));
				oc.write(" done");
				lastBlockExpr = null;
				return oc.code;
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
				return OCaml2Field.toString(e, fa);
			case TConst(c):
				switch (c) {
					case TBool(b):
						return Std.string(b);
					case TInt(i):
						return Std.string(i);
					case TString(s):
						s = StringTools.replace(s, "\n", "\\n");
						s = StringTools.replace(s, "\r", "\\r");
						s = StringTools.replace(s, "\t", "\\t");
						if (castType != null) {
							if (OCaml2Type.toString(castType) == "ocaml_Char")
								return '\'${s}\'';
						}
						return '"${s}"';
					case TFloat(s):
						return Std.string(s);
					case TNull:
						return "None";
					case TThis:
						return "this";
					default:
						throw "Not support TConst:" + c;
				}
			case TVar(v, expr):
				var name = v.name;
				name = StringTools.replace(name, "`", "_g");
				if (expr != null)
					switch (expr.expr) {
						case TCast(e, m):
							OCaml2Ref.retianType(v.id, e.t);
						default:
							if (v.name == "a")
								trace("定义", v.id, v.t);
							OCaml2Ref.retianType(v.id, v.t);
					}
				// 临时变量都是经过Cast处理的
				return 'let ${name} = ref (${toString(expr, true, v.t)}) in';

			case TCast(e, m):
				// todo 这里的m会不存在
				return toString(e, false, castType);
			case TLocal(v):
				var name = v.name;
				name = StringTools.replace(name, "`", "_g");
				switch (v.t) {
					case TAbstract(t, params):
						switch (t.toString()) {
							case "ocaml_Char":
								return (OCaml2Ref.getType(v.id) != null ? "!" : "") + name;
						}
					default:
				}
				return "!" + name;
			case TCall(e, el):
				return '(${OCaml2Function.toString(e, el)})';
			case TReturn(e):
				// todo 如果是IF分支，则不应该加后面的返回值
				if (lastBlockExpr != null) {
					switch (lastBlockExpr.expr) {
						case TWhile(econd, e2, normalWhile):
							return OCaml2Return.toString(e);
						case TIf(econd, eif, eelse):
							return OCaml2Return.toString(e);
						default:
					}
				}
				return OCaml2Return.toString(e) + ";" + toString(e, false, OCaml2Tools.getCurrentReturnType());
			case TBlock(el):
				var oc:OCaml = new OCaml();
				for (item in el) {
					var code = toString(item);
					if (code == null)
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
				OCaml2Tools.funcTypeList.push(tfunc.t);
				if (OCaml2Tools.parserDefineFunc) {
					parserDefineFunc = false;
					var oc = new OCaml();
					var type = OCaml2Type.toString(tfunc.t).toUpperCase();
					if (tfunc.args.length == 0)
						oc.write("()");
					else
						for (a in tfunc.args) {
							oc.write(" " + a.v.name);
						}
					if (type != "VOID") {
						oc.write(" = try \n");
					} else {
						oc.write(" = ");
						if (currentField.name == "new") {
							oc.write(OCamlNewTypedef.createThis(currentType));
						} else if (tfunc.args.length == 0) {
							oc.write("let start_time = Sys.time() in\n");
						}
					}
					oc.write(toString(tfunc.expr, false, tfunc.t));
					if (type != "VOID") {
						oc.write("with " + OCaml2Type.OCaml2Type.toString(tfunc.t).toTypeString().toUpperCase() + " ret -> ret");
					} else if (currentField.name == "new") {
						oc.write("this");
					} else if (tfunc.args.length == 0) {
						oc.write('Printf.printf "runtime:%fs" (Sys.time() -. start_time)');
					}
					OCaml2Tools.funcTypeList.pop();
					return oc.code;
				} else {
					var oc = new OCaml();
					var type = OCaml2Type.toString(tfunc.t).toUpperCase();
					oc.write("fun");
					var type = OCaml2Type.toString(tfunc.t).toUpperCase();
					if (tfunc.args.length == 0)
						oc.write("()");
					else
						for (a in tfunc.args) {
							oc.write(" " + a.v.name);
						}
					oc.write(" -> ");
					oc.write(" try \n");
					oc.write(toString(tfunc.expr, false, tfunc.t));
					oc.write("with " + OCaml2Type.toString(tfunc.t).toUpperCase() + " ret -> ret");
					OCaml2Tools.funcTypeList.pop();
					return '${oc.code}';
				}
			default:
				return '(* Not suppor ${expr.expr.getName()} *)\n';
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
		var type:Type = null;
		switch (expr.expr) {
			case TNew(c, params, el):
				type = Context.getType(c.get().module);
			case TField(e, fa):
				// trace(e.t);
				switch (e.t) {
					case TType(t, params):
						type = Context.getType(t.get().module);
					default:
				}
			default:
		}
		if (type != null) {
			switch (type) {
				case TInst(t, params):
					return OCamlGlobalMacro.mlCompileEReg.match(t.get().module);
				default:
			}
		}
		return false;
	}
}
#end
