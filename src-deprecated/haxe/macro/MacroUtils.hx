package haxe.macro;

import haxe.macro.Expr.FieldType;

class MacroUtils {
	public static function iterFieldType(t:FieldType, cb:Expr->Void = null, afterCb:Expr->Void = null):Void {
		switch (t) {
			case FVar(t, e):
				parserExprIter(e, cb, afterCb);
			case FFun(f):
				parserExprIter(f.expr, cb, afterCb);
			case FProp(get, set, t, e):
				parserExprIter(e, cb, afterCb);
		}
	}

	/**
	 * 递归处理Expr
	 * @param expr 
	 */
	private static function parserExprIter(expr:Expr, cb:Expr->Void = null, afterCb:Expr->Void = null):Void {
		if (cb != null)
			cb(expr);
		ExprTools.iter(expr, function(e) {
			parserExprIter(e, cb, afterCb);
		});
		if (afterCb != null) {
			afterCb(expr);
		}
	}
}
