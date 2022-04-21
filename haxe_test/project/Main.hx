package project;

class Main {
	static function main() {
		trace("%s", "Hello World");
        // 翻译至：let data = ref (Project_arraytest.toArray (ref [1;2;3])) in
		var data = ArrayTest.toArray([1, 2, 3]);
		trace("%i", data);
	}
}
