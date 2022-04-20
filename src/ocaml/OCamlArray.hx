package ocaml;

@:forward
extern abstract OCamlArray<T>(Array<T>) {
	@:op([]) public function write(key:Int, value:T):Void;

	@:op([]) public function read(key:Int):T;
}
