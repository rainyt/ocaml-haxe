import haxe.macro.OCamlBuild;
import haxe.macro.OCamlRef;
import haxe.macro.OCamlVar;
import haxe.macro.OCamlTools;
import haxe.macro.OCamlFunction;
import haxe.macro.TypeTools;
import sys.io.File;
import haxe.macro.ExprTools;
import haxe.macro.MacroUtils;
import haxe.macro.Context;
import haxe.macro.Expr.Field;
import haxe.macro.OCaml;
import haxe.macro.Compiler;
import OCamlGlobalMacro;

#if macro
@:deprecated("OCamlMacro deprecated, use OCamlGlobalMacro Class.")
class OCamlMacro {
	/**
	 * [Description]
	 * @param runtime 是否统计运行时长
	 * @param haxecode = 是否带入HaxeCode原始代码 
	 * @return Array<Field>
	 */
	macro public static function build(runtime:Bool = true, haxecode:Bool = true):Array<Field> {
		// 需要清空所有ref
		// trace("清空", OCamlRef.ref);
		// OCamlRef.ref.clear();
		var array = Context.getBuildFields();
		if (array == null) {
			return array;
		}
		var oc = new OCaml();
		for (item in array) {
			switch (item.kind) {
				case FVar(t, e):
					oc.write('let ${item.name} = ref ' + OCamlTools.toString(e) + ";;\n\n");
					// todo 这个推导不正确
					OCamlRef.retainName(item.name, DYNAMIC);
				case FFun(f):
					if (item.name == "main") {
						oc.write("let () = ");
						if (runtime) {
							oc.write("let start = Sys.time() in \n");
						}
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
					var funcType = OCamlRef.getType(item.name);
					if (funcType != DYNAMIC && item.name != "main")
						oc.write("try ");
					ExprTools.iter(f.expr, (e) -> {
						if (haxecode) {
							oc.write('(*  ${ExprTools.toString(e)}  *)\n');
						}
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
								var code = OCamlTools.toString(e);
								if (code.lastIndexOf("in") != code.length - 2) oc.write(code + ";\n"); else oc.write(code + "\n");
						}
					});
					if (item.name != "main") {
						// trace("funcType = ", funcType);
						if (funcType != DYNAMIC)
							oc.write('with ${OCamlRef.getType(item.name)} ret -> ret');
					} else if (runtime) {
						oc.write("Printf.printf \"\\nRuning time:%f\\n\" (Sys.time() -. start)");
					}
					oc.write(";;\n\n");
				case FProp(get, set, t, e):
			}
		}
		var className = Context.getLocalClass().toString();
		className = StringTools.replace(className, ".", "_");
		File.saveContent("bin/" + className.toLowerCase() + ".ml", OCamlBuild.build(oc));
		return array;
	}
}
#end