import haxe.macro.TypedExprTools;
import haxe.macro.ocaml.OCaml;
import haxe.macro.ocaml.OCaml2Tools;
import haxe.macro.Type.ClassField;
import haxe.macro.Expr.Field;
import sys.io.File;
import haxe.macro.Context;

#if macro
class OCamlGlobalMacro {
	public static var mlCompileEReg:EReg;

	macro public static function build(classPkg:String):Array<Field> {
		trace("compile OCaml code...");
		var array = classPkg.split(";");
		trace("compile pkgs:", array);
		mlCompileEReg = new EReg(array.join("|"), "g");
		Context.onAfterTyping((types) -> {
			for (t in types) {
				switch (t) {
					case TClassDecl(t):
						if (mlCompileEReg.match(t.toString())) {
							var ocaml = new OCaml();
							var type = t.get();
							OCaml2Tools.currentType = type;
							OCaml2Tools.currentOCaml = ocaml;
							ocaml.write("\n");
							for (item in type.statics.get()) {
								parserField(ocaml, item);
							}
							File.saveContent("bin/" + StringTools.replace(t.toString(), ".", "_").toLowerCase() + ".ml", ocaml.code);
							File.saveContent("bin/" + StringTools.replace(t.toString(), ".", "_").toLowerCase() + ".log", ocaml.log);
						}
					case TTypeDecl(t):
					// trace("t=", t.get().module, t.toString());
					default:
				}
			}
		});
		return null;
	}

	public static function parserField(oc:OCaml, item:ClassField):Void {
		var runtime = true;
		var haxecode = true;
		switch (item.kind) {
			case FVar(read, write):
				// 定义
				oc.write("let " + item.name + ' = ref (${OCaml2Tools.toString(item.expr())})');
				oc.write(";;\n\n");
			case FMethod(k):
				// 方法
				OCaml2Tools.parserDefineFunc = true;
				if (item.name == "main") {
					oc.write("let ");
				} else {
					oc.write("let " + item.name);
				}
				oc.write(OCaml2Tools.toString(item.expr()) + ";;\n\n");
				oc.writeDebugLog(TypedExprTools.toString(item.expr()));
		}
	}
}
#end
