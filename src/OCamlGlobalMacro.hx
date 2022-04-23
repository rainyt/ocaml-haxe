import haxe.macro.ocaml.OCaml2Type;
import haxe.macro.OCaml;
import haxe.macro.ocaml.OCaml2Tools;
import haxe.macro.Type.ClassField;
import haxe.macro.Type.FieldKind;
import haxe.macro.Expr.Field;
import sys.io.File;
import haxe.macro.Context;

class OCamlGlobalMacro {
	macro public static function build(classPkg:String):Array<Field> {
		trace("compile OCaml code...");
		var array = classPkg.split(";");
		trace("compile pkgs:", array);
		var r = new EReg(array.join("|"), "g");
		Context.onAfterTyping((types) -> {
			for (t in types) {
				switch (t) {
					case TClassDecl(t):
						if (r.match(t.toString())) {
							var ocaml = new OCaml();
							ocaml.write("exception STRING of string\n");
							ocaml.write("\n");
							for (item in t.get().statics.get()) {
								parserField(ocaml, item);
							}
							File.saveContent("bin2/" + StringTools.replace(t.toString(), ".", "_") + ".ml", ocaml.code);
						}
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

			case FMethod(k):
				// 方法
				if (item.name == "main") {
					oc.write("let ");
				} else {
					oc.write("let " + item.name);
				}
				oc.write(OCaml2Tools.toString(item.expr()) + ";;\n\n");
		}
		// trace(item.kind);
		// trace(TypedExprTools.toString(item.expr()));
		// switch(item.expr().expr){
		//     case TArray(e1, e2):
		// }
		// switch (item.expr()){
		// }
	}
}
