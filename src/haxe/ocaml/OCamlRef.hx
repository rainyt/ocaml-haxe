package haxe.ocaml;

import haxe.macro.Expr;

class OCamlRef {
	/**
	 * 引用关系
	 */
	public static var ref:Map<String, OCamlClass> = [];

	/**
	 * 保持引用
	 * @param expr 
	 */
	public static function retain(varExpr:Var):Void {
		// trace("定义", varExpr.name, varExpr, varExpr.type);
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
     * 是否为字符串
     * @param name 
     * @return Bool
     */
    public static function isString(name:String):Bool{
        if(ref.exists(name))
            return ref.get(name) == STRING;
        return false;
    }
}

enum OCamlClass {
	INT;
	FLOAT;
	BOOL;
	STRING;
	DYNAMIC;
}
