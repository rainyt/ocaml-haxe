package project;

import ocaml.OCamlArrayTools;
import ocaml.lib.io.Process;
import Ereg;

class Main {
	static function main() {
		// 获取mli方法定义数据
		var process = new Process("ocamlc -i ocaml-extern/ocaml/arg.mli");
		var mliData = process.readAllString();
		var req = ~/[a-zA-Z]+/g;
		mliData = req.replace(mliData, "123");
		trace(mliData);

		// OCaml
		var content = "hello world";
		var req2 = ~/[A-Za-z]/g;
		var data = req2.replace(content, "A");
		req2.map(content, function(e:EReg) {
			var v = e.matched(0);
			trace("v=", v);
			return "value";
		});
		trace(data);
	}
}
