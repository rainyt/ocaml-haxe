package project;

import ocaml.OCamlList;
import ocaml.Stdlib;
import ocaml.OCamlSys;

/**
 * 结构体实现
 */
typedef TestData = {
	name:String,
	index:Int
}

class Test {
	public static var data:String = "Data var";

	public static function call1(param1:Int, param2:Float):Float {
		var a = param1;
		var b = param2;
		trace("%s\n", data);
		return 0. + a + b;
	}

	public static function call2():Float {
		return 1.;
	}

	static function main() {
		var value2 = call1(100, 2000.);
		var i = value2;
		trace(i);
		var i2 = 2;
		i2 = 3;
		var str = "String:";
		// todo 需要实现str + i2
		str = str + i2;
		trace(str);
		// 访问OCaml API
		var arg = OCamlSys.args;
		trace("Fight:", i2, arg[0]);
		// 判断语法
		if (i2 == 3 && i2 < 2) {
			trace("true");
		} else {
			trace("false");
		}
		trace(arg[0]);
		// For循环处理
		for (s in arg) {
			trace(s);
		}
		// For循环0...array
		for (i3 in 0...arg.length) {
			trace(i3);
		}
		var mlfile = Stdlib.openInput("test2.ml");
		trace(Stdlib.inputLine(mlfile));

		// // 结构体测试
		// var obj:TestData = {
		// 	name: "Test",
		// 	index: 0
		// };

		// obj.name = "Test2";

		// OCaml里不支持+=，Haxe语法优化处理
		// OCamlString.concat("", [obj.name, "Test3"]);
		// obj.name += "Test3";

		var strValue = "123";
		var dataValue = 1;
		strValue += dataValue;

		// trace("%s\n", obj.name);

		var floatValue = 1.0 + (2.3 + call2());
		var floatValue2 = 2.3;
		trace(floatValue + floatValue2, strValue + " to Haxe!");

		// 模拟数组
		var array = ["123"];
		// 对应OCamlList类型，需要兼容方式访问
		trace(array[0]);
		trace(OCamlList.at(array, 0));

		// Push操作，只有List才能push
		// array.push("3333");
		var listLength = array.length;
		trace(listLength);
	}
}
