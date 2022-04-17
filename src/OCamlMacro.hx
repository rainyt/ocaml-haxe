import haxe.ocaml.OCamlVar;
import haxe.ocaml.OCamlTools;
import haxe.ocaml.OCamlFunction;
import haxe.macro.TypeTools;
import sys.io.File;
import haxe.macro.ExprTools;
import haxe.macro.MacroUtils;
import haxe.macro.Context;
import haxe.macro.Expr.Field;

class OCamlMacro {
	macro public static function build():Array<Field> {
		var array = Context.getBuildFields();
		var oc = new OCmal();
		for (item in array) {
			trace("解析：", item.name);
			switch (item.kind) {
				case FVar(t, e):
				case FFun(f):
					if (item.name == "main") {
						oc.write("let () = ");
					} else {
						oc.write('let ${item.name} = ');
					}
					ExprTools.iter(f.expr, (e) -> {
						oc.write(OCamlTools.toT(0));
						switch (e.expr) {
							case EReturn(e):
								oc.write(OCamlTools.toString(e) + "\n");
							case EVars(vars):
								for (item in vars) {
									oc.write(OCamlVar.toString(item) + "\n");
								}
							case ECall(e, params):
								trace(e.expr.getIndex());
								oc.write(OCamlFunction.toString(e, params) + ";\n");
							default:
								oc.write(OCamlTools.toString(e) + ";\n");
						}
					});
					oc.write(";;\n");
				case FProp(get, set, t, e):
			}
		}
		trace("OCaml code:\n" + oc.code);
		File.saveContent("test.ml", oc.code);
		return array;
	}
}

class OCmal {
	public var code:String = "";

	public function new() {}

	public function write(code:String):Void {
		this.code += code;
	}
}
