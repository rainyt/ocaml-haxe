package haxe.ocaml;

import haxe.macro.ExprTools;
import haxe.macro.Expr;

class OCamlRef {
	/**
	 * 引用关系
	 */
	public static var ref:Map<String, OCamlClassType> = [];

	public static function retainType(name:String, type:ComplexType):Void {
		trace(type);
		switch (type) {
			case TPath(p):
				switch (p.name) {
					case "Int":
						ref.set(name, INT);
						return;
					case "Float":
						ref.set(name, FLOAT);
						return;
					case "String":
						ref.set(name, STRING);
						return;
					case "Bool":
						ref.set(name, BOOL);
						return;
					case "Array":
						ref.set(name, DYNAMIC);
					default:
						throw "未处理的类型";
				}
			default:
				throw "Not support other type";
		}
	}

	/**
	 * 保存引用方法
	 * @param varFunc 
	 */
	public static function retainFunc(name:String, varFunc:Function):Void {
		trace(name);
		if (varFunc.ret == null)
			throw "OCaml function need return value.";
		switch (varFunc.ret) {
			case TPath(p):
				switch (p.name) {
					case "Int":
						trace("int");
						ref.set(name, INT);
						return;
					case "Float":
						trace("float");
						ref.set(name, FLOAT);
						return;
					case "String":
						trace("string");
						ref.set(name, STRING);
						return;
				}
			default:
				throw "not support " + varFunc.ret;
		}
		ref.set(name, DYNAMIC);
	}

	/**
	 * 保持引用变量
	 * @param expr 
	 */
	public static function retain(varExpr:Var):Void {
		// 这里是推导实现
		switch (varExpr.expr.expr) {
			case EConst(c):
				switch (c) {
					case CInt(v):
						ref.set(varExpr.name, INT);
					case CFloat(f):
						ref.set(varExpr.name, FLOAT);
					case CString(s, kind):
						ref.set(varExpr.name, STRING);
					case CIdent(s):
						// throw s;
						ref.set(varExpr.name, DYNAMIC);
					case CRegexp(r, opt):
						throw "OCaml Not support Regexp!";
				}
			case ECall(e, params):
				// todo 方法应该继续推导
				ref.set(varExpr.name, DYNAMIC);
			case EBlock(e):
				ref.set(varExpr.name, DYNAMIC);
			case EObjectDecl(fields):
				ref.set(varExpr.name, DYNAMIC);
			case EBinop(op, e1, e2):
				// todo 这里应该继续推导
				ref.set(varExpr.name, FLOAT);
			case EArrayDecl(values):
				ref.set(varExpr.name, LIST);
			case EField(e, field):
				ref.set(varExpr.name, DYNAMIC);
			default:
				throw "未实现的推导：" + varExpr.name + ":" + varExpr.expr.expr.getName();
		}
	}

	/**
	 * 释放引用
	 * @param expr 
	 */
	public static function release(varExpr:Var):Void {}

	/**
	 * 是否为某个类型，这里跟类型推导有关系
	 * @param name 
	 * @return Bool
	 */
	public static function isType(e:Expr, type:OCamlClassType):Bool {
		var name = ExprTools.toString(e);
		if (name.indexOf("(") != -1)
			name = name.substr(0, name.indexOf("("));
		var exprType = OCamlType.toOCamlType(e);
		if (exprType == type)
			return true;
		if (ref.exists(name))
			return ref.get(name) == type;
		return false;
	}
}

enum OCamlClassType {
	INT;
	FLOAT;
	BOOL;
	STRING;
	LIST;
	DYNAMIC;
}
