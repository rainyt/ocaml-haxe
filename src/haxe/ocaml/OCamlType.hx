package haxe.ocaml;

import haxe.macro.TypeTools;
import haxe.ocaml.OCamlRef.OCamlClassType;
import haxe.macro.Type;
import haxe.macro.Context;
import haxe.macro.ExprTools;
import haxe.macro.Expr;
import haxe.ocaml.OCaml;

class OCamlType {
	/**
	 * 类型定义
	 */
	public static var types:Map<String, OCamlTypeDef> = [];

	/**
	 * 将类型转换为String类型
	 * @param expr 
	 * @return String
	 */
	public static function toFloatType(expr:Expr):String {
		var c = OCamlRef.ref.get(ExprTools.toString(expr));
		var paramName = OCamlTools.toString(expr);
		switch (c) {
			case INT:
				return '(float_of_int ${paramName})';
			case STRING:
				return '(float_of_string ${paramName})';
			case BOOL:
				return '(float_of_bool ${paramName})';
			default:
		}
		return paramName;
	}

	/**
	 * 将类型转换为Int类型
	 * @param expr 
	 * @return String
	 */
	public static function toIntType(expr:Expr):String {
		var c = OCamlRef.ref.get(ExprTools.toString(expr));
		var paramName = OCamlTools.toString(expr);
		switch (c) {
			case FLOAT:
				return '(int_of_float ${paramName})';
			case STRING:
				return '(int_of_string ${paramName})';
			case BOOL:
				return '(int_of_bool ${paramName})';
			default:
		}
		return paramName;
	}

	/**
	 * 将类型转换为String类型
	 * @param expr 
	 * @return String
	 */
	public static function toStringType(expr:Expr):String {
		var c = OCamlRef.ref.get(ExprTools.toString(expr));
		var paramName = OCamlTools.toString(expr);
		switch (c) {
			case INT:
				return '(string_of_int ${paramName})';
			case FLOAT:
				return '(string_of_float ${paramName})';
			case BOOL:
				return '(string_of_bool ${paramName})';
			default:
		}
		return paramName;
	}

	/**
	 * 转换成OCamlType类似格式化
	 * @param type 
	 * @return String
	 */
	public static function toOCamlTypeString(type:Type):String {
		switch (type) {
			case TAbstract(t, params):
				return t.toString().toLowerCase();
			case TInst(t, params):
				return t.toString().toLowerCase();
			default:
				throw "OCaml not suport Other Type";
		}
		return null;
	}

	public static function toType(type:Type, field:String):OCamlClassType {
		switch (type) {
			case TAbstract(t, params):
				switch (t.toString()) {
					case "ocaml.OCamlArray":
						return ARRAY;
					default:
						return DYNAMIC;
				}
			case TInst(t, params):
				// 兼容@:native实现
				var classField = TypeTools.findField(t.get(), field, true);
				if (classField != null) {
					return toType(classField.type, field);
				}
			default:
				throw "未处理的类型：" + type;
		}
		return null;
	}

	public static function retian(type:ComplexType):Void {
		if (type == null) {
			throw "OCaml need typedef Object Type.";
		}
		var typeDef:OCamlTypeDef = {
			type: type,
			code: new OCaml()
		};
		switch (type) {
			case TPath(p):
				if (types.exists(p.name))
					return;
				var type = Context.getType(p.name);
				switch (type) {
					case TType(t, params):
						typeDef.code.write('type ${p.name.toLowerCase()} = {');
						switch (t.get().type) {
							case TAnonymous(fields):
								var f = fields.get().fields;
								for (item in f) {
									typeDef.code.write("mutable " + item.name + ":" + toOCamlTypeString(item.type) + ";");
								}
							default:
								typeDef.code.write('(* OCamlVar.TYPE2.TODO ${type.getName()} *)');
						}
						typeDef.code.write("}\n");
					default:
						typeDef.code.write('(* OCamlVar.TYPE.TODO ${type.getName()} *)');
				}
				types.set(p.name, typeDef);
			default:
				throw "Not support type:" + type;
		}
	}

	/**
	 * 识别expr自身的类型
	 * @param e 
	 * @return OCamlClassType
	 */
	public static function toOCamlType(e:Expr):OCamlClassType {
		var name = ExprTools.toString(e);
		if (name.indexOf("(") != -1)
			name = name.substr(0, name.indexOf("("));
		switch (e.expr) {
			case EField(e, field):
				var type = try Context.getType(ExprTools.toString(e)) catch (_) null;
				if (type != null) {
					switch (type) {
						case TInst(t, params):
							var classField = TypeTools.findField(t.get(), field, true);
							if (classField != null) {
								// trace("找到定义",);
								switch (classField.type) {
									case TFun(args, ret):
										switch (ret) {
											case TAbstract(t, params):
												switch (t.toString()) {
													case "String":
														return STRING;
													case "Int":
														return INT;
													case "Float":
														return FLOAT;
													case "Bool":
														return BOOL;
												}
											default:
										}
									default:
								}
							}
						default:
					}
				}
				return DYNAMIC;
			case ECast(e, t):
				switch (t) {
					case TPath(p):
						switch (p.name) {
							case "String":
								return STRING;
							case "Int":
								return INT;
							case "Float":
								return FLOAT;
							case "Bool":
								return BOOL;
						}
					default:
						throw "未处理的类型" + t;
				}
			case EConst(c):
				switch (c) {
					case CInt(v):
						return INT;
					case CFloat(f):
						return FLOAT;
					case CString(s, kind):
						return STRING;
					case CIdent(s):
						switch (s) {
							case "false", "true":
								return BOOL;
							default:
						}
					case CRegexp(r, opt):
						throw "Not support CRegexp";
				}
			case EBinop(op, e1, e2):
				var e1type = toOCamlType(e1);
				var e2type = toOCamlType(e2);
				if (e1type == STRING || e2type == STRING) {
					return STRING;
				}
				if (e1type == FLOAT || e2type == FLOAT) {
					return FLOAT;
				}
				return toOCamlType(e1);
			case EParenthesis(e):
				return toOCamlType(e);
			case ECall(e, params):
				return toOCamlType(e);
			case EArray(e1, e2):
				return toOCamlType(e1);
			default:
				throw "额外的类型：" + name + ":" + e;
		}
		if (OCamlRef.ref.exists(name))
			return OCamlRef.ref.get(name);
		return null;
	}
}

typedef OCamlTypeDef = {
	type:ComplexType,
	code:OCaml
}
