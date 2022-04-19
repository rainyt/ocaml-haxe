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
import haxe.macro.Compiler;

class OCamlMacro {
	macro public static function build():Array<Field> {
		trace("Haxe to OCaml");
		// 需要清空所有ref
		OCamlRef.ref.clear();
		var array = Context.getBuildFields();
		if (array == null) {
			Compiler.addGlobalMetadata("project", '@:build(OCamlMacro.build())');
			return array;
		}
		var oc = new OCaml();
		for (item in array) {
			switch (item.kind) {
				case FVar(t, e):
					oc.write('let ${item.name} = ref ' + OCamlTools.toString(e) + ";;\n\n");
					// todo 这个推导不正确
					OCamlRef.ref.set(item.name, DYNAMIC);
				case FFun(f):
					if (item.name == "main") {
						oc.write("let () = ");
					} else {
						var args = [];
						for (a in f.args) {
							args.push(a.name);
							OCamlRef.retainType(a.name, a.type);
						}
						if (args.length == 0) {
							oc.write('let ${item.name} ${args.join(" ")}() = ');
						} else
							oc.write('let ${item.name} ${args.join(" ")} = ');
						// 记录
						OCamlRef.retainFunc(item.name, f);
					}
					if (item.name != "main")
						oc.write("try ");
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
					if (item.name != "main")
						oc.write('with ${OCamlRef.ref.get(item.name)} ret -> ret');
					oc.write(";;\n\n");
				case FProp(get, set, t, e):
			}
		}
		var className = Context.getLocalClass().toString();
		className = StringTools.replace(className, ".", "_");
		File.saveContent("ocaml-bin/" + className.toLowerCase() + ".ml", OCamlBuild.build(oc));
		return array;
	}
}
