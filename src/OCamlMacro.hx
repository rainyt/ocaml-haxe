import haxe.ocaml.OCamlBuild;
import haxe.ocaml.OCamlRef;
import haxe.ocaml.OCamlVar;
import haxe.ocaml.OCamlTools;
import haxe.ocaml.OCamlFunction;
import haxe.macro.TypeTools;
import sys.io.File;
import haxe.macro.ExprTools;
import haxe.macro.MacroUtils;
import haxe.macro.Context;
import haxe.macro.Expr.Field;
import haxe.ocaml.OCaml;

class OCamlMacro {
	macro public static function build():Array<Field> {
		trace("Haxe to OCaml");
		// 需要清空所有ref
		OCamlRef.ref.clear();
		var array = Context.getBuildFields();
		var oc = new OCaml();
		for (item in array) {
			switch (item.kind) {
				case FVar(t, e):
				case FFun(f):
					if (item.name == "main") {
						oc.write("let () = ");
					} else {
						oc.write('let ${item.name} = ');
						// 记录
						OCamlRef.retainFunc(item.name, f);
					}
					ExprTools.iter(f.expr, (e) -> {
						// oc.write(OCamlTools.toT(0));
						switch (e.expr) {
							case EReturn(e):
								oc.write(OCamlTools.toString(e) + "\n");
							case EVars(vars):
								for (item in vars) {
									oc.write(OCamlVar.toString(item) + "\n");
								}
							case ECall(e, params):
								oc.write(OCamlFunction.toString(e, params) + ";\n");
							default:
								oc.write(OCamlTools.toString(e) + ";\n");
						}
					});
					oc.write(";;\n\n");
				case FProp(get, set, t, e):
			}
		}
		File.saveContent(Context.getLocalClass().toString().toLowerCase() + ".ml", OCamlBuild.build(oc));
		return array;
	}
}
