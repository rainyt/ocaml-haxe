package haxe.ocaml;

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
}

typedef OCamlTypeDef = {
	type:ComplexType,
	code:OCaml
}
