package haxe.macro;

import haxe.macro.OCamlRef.OCamlClassType;
import haxe.macro.Context;
import haxe.macro.Printer;
import haxe.macro.ExprTools;
import haxe.macro.Expr;

using haxe.macro.OCamlTools;

class OCamlTools {
	public static function toString(expr:Expr):String {
		if (expr == null)
			return "";
		switch (expr.expr) {
			case EMeta(s, e):
				if (s.name.indexOf(":") == -1) {
					// 没有:的都是标签变量
					return '~${s.name}:${toString(e)}';
				}
				return toString(e);
			case ESwitch(e, cases, edef):
				var oc = new OCaml();
				oc.write('let _ = (match ${toString(e)} with\n');
				for (item in cases) {
					var params = item.values[0];
					oc.write('| ${toString(params)} -> ${toString(item.expr)} \n');
				}
				if (edef == null) {
					oc.write('| _->()');
				} else {
					oc.write('| _->(${toString(edef)})');
				}
				oc.write(") in ()");
				return oc.code;
			case EVars(vars):
				var oc = new OCaml();
				for (item in vars) {
					oc.write("let " + item.name + " = " + toString(item.expr));
				}
				return oc.code;
			case EBreak:
				return "break := false";
			case EUnop(op, postFix, e):
				var type = OCamlType.toOCamlType(e);
				switch (op) {
					case OpDecrement:
						switch (type) {
							case INT:
								return '${toString(e).unDeCitation()} := ${toString(e)} - 1';
							case FLOAT:
								return '${toString(e).unDeCitation()} := ${toString(e)} -. 1.';
							default:
								throw "Not support op " + op;
						}
					case OpIncrement:
						// ++
						switch (type) {
							case INT:
								return '${toString(e).unDeCitation()} := ${toString(e)} + 1';
							case FLOAT:
								return '${toString(e).unDeCitation()} := ${toString(e)} +. 1.';
							default:
								throw "Not support op " + op;
						}
					default:
						throw "未处理的运算符：" + op;
				}

			case EWhile(econd, e, normalWhile):
				var oc:OCaml = new OCaml();
				oc.write('let break = ref true in while (!break && (${toString(econd)})) do\n');
				if (e.expr.getName() == "EBlock") {
					switch (e.expr) {
						case EBlock(exprs):
							for (e in exprs) {
								switch (e.expr) {
									case EVars(vars):
										oc.write(toString(e) + " in\n");
									default:
										oc.write(toString(e) + ";\n");
								}
							}
						default:
					}
				} else
					oc.write(toString(e));
				oc.write("done");
				return oc.code;
			case ECast(e, t):
				switch (t) {
					case TPath(p):
						switch (p.name) {
							case "Int":
								return OCamlType.toIntType(e);
							case "String":
								return OCamlType.toStringType(e);
							case "Float":
								return OCamlType.toFloatType(e);
							default:
								throw "未处理的类型：" + p.name;
						}
					default:
						throw "Not support other type cast.";
				}
				return toString(e);
			case EReturn(e):
				return OCamlReturn.toString(e);
			case EParenthesis(e):
				return '(${toString(e)})';
			case EArrayDecl(values):
				var array:Array<String> = [];
				for (item in values) {
					var value = toString(item);
					array.push(value);
				}
				return '[${array.join(";")}]';
			case EObjectDecl(fields):
				var code = new OCaml();
				code.write("{");
				for (item in fields) {
					code.write(item.field + "=" + toString(item.expr) + ";");
				}
				code.write("}");
				return code.code;
			case EField(e, field):
				return OCamlField.toString(e, field);
			case EBinop(op, e1, e2):
				return OCamlBinop.toString(op, e1, e2);
			case ECall(e, params):
				return OCamlFunction.toString(e, params);
			case EArray(e1, e2):
				// 兼容List
				if (OCamlRef.isType(e1, LIST))
					return '(List.nth ${toString(e1)} ${toString(e2)})';
				return toString(e1) + '.(${toString(e2)})';
			case EConst(c):
				switch (c) {
					case CIdent(s):
						// 存在不需要!的情况，如for(s in array)
						var name = ExprTools.toString(expr);
						return (OCamlRef.ref.exists(name) ? "!" : "") + name;
					default:
						return ExprTools.toString(expr);
				}
			case EBlock(exprs):
				var code = ["("];
				for (item in exprs) {
					switch (item.expr) {
						case EVars(vars):
							code.push(toString(item) + " in");
						default:
							var codeData = toString(item);
							if (codeData.lastIndexOf("in") == codeData.length - 2) code.push(codeData + ""); else code.push(codeData + ";");
					}
				}
				code.push(")");
				return code.join("\n");
			case EIf(econd, eif, eelse):
				return 'if (${toString(econd)}) then ${toString(eif)} ${eelse != null ? "else " + toString(eelse) : ""}';
			case EFor(it, expr):
				return OCamlFor.toString(it, expr);
			default:
				return '(* OCamlTools.TODO ${expr.expr.getName()} *)';
		}
		return null;
	}

	public static function toT(index:Int):String {
		var code = "\t";
		for (i in 0...index) {
			code += "\t";
		}
		return code;
	}

	public static function unDeCitation(str:String):String {
		return StringTools.replace(str, "!", "");
	}
}
