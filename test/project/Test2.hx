package project;

// @:build(OCamlMacro.build())
class Test2 {

	public static function boolCall():Bool{
		return false;
	}

	public static function isPrime(n:Int, cache:Array<Int>, cacheSize:Int):Bool {
		var cur = 1;
		for (item in cache) {
			if (n % item == 0) {
				return false;
			}
			cur = item;
		}
		var m = Math.floor(Math.sqrt(cast(n, Float)));
		while (true) {
			cur = cur + 2;
			if (cast(cur, Float) > m) {
				break;
			}
			if (n % cur == 0) {
				return false;
			}
		}
		if (cache.length < cacheSize) {
			cache.push(n);
		}
		return true;
	}

	public static function main() {
		var cache:Array<Int> = [];
		var cacheSize = 400;
		var count = 1;
		var beginCount = 3;
		var endCount = 10000000;
		var current = beginCount;
		var beginTime = haxe.Timer.stamp();
		while (current < endCount) {
			if (isPrime(current, cache, cacheSize)) {
				count++;
			}
			current += 2;
		}
		var endTime = haxe.Timer.stamp();
		trace('Time taken: ${endTime - beginTime}');
		trace(count);
	}
}
