package haxe.macro;

import haxe.macro.Context;
import haxe.macro.ExprTools;
import haxe.macro.Expr;
import haxe.macro.TypeTools;

class OCamlRef {
	/**
	 * 引用关系
	 */
	public static var ref:Map<String, OCamlClassType> = [];

	/**
	 * 当前解析的返回对象
	 */
	public static var returnType:OCamlClassType;

	public static function retainType(name:String, type:ComplexType):Void {
		if (type == null) {
			throw "Type is null by " + Context.getLocalClass() + "." + name;
		}
		switch (type) {
			case TPath(p):
				switch (p.name) {
					case "Int":
						ref.set(name, INT);
					case "Float":
						ref.set(name, FLOAT);
					case "String":
						ref.set(name, STRING);
					case "Bool":
						ref.set(name, BOOL);
					case "Array":
						ref.set(name, LIST);
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
		if (varFunc.ret == null)
			throw "OCaml function need return value.";
		switch (varFunc.ret) {
			case TPath(p):
				switch (p.name) {
					case "Bool":
						ref.set(name, BOOL);
					case "Int":
						ref.set(name, INT);
					case "Float":
						ref.set(name, FLOAT);
					case "String":
						ref.set(name, STRING);
					default:
						ref.set(name, DYNAMIC);
				}
			default:
				throw "not support " + varFunc.ret;
		}
		returnType = ref.get(name);
	}

	/**
	 * 保持引用变量
	 * @param expr 
	 */
	public static function retain(varExpr:Var):Void {
		// 这里是推导实现
		// trace("定义：", varExpr.expr);
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
						ref.set(varExpr.name, ref.get(s));
					case CRegexp(r, opt):
						throw "OCaml Not support Regexp!";
				}
			case ECall(e, params):
				// todo 方法应该继续推导
				ref.set(varExpr.name, OCamlType.toOCamlType(e));
			case EBlock(e):
				ref.set(varExpr.name, DYNAMIC);
			case EObjectDecl(fields):
				ref.set(varExpr.name, DYNAMIC);
			case EBinop(op, e1, e2):
				ref.set(varExpr.name, OCamlType.toOCamlType(e1));
			case EArrayDecl(values):
				ref.set(varExpr.name, LIST);
			case EField(e, field):
				var type = try Context.getType(ExprTools.toString(e)) catch (_) null;
				if (type != null) {
					var ocType = OCamlType.toType(type, field);
					ref.set(varExpr.name, ocType);
				} else
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
	ARRAY;
	DYNAMIC;
}
