package project;

/**
 * 性能测试程序
 */
class Test2 {
	public static function isPrime(n:Int, cache:Array<Int>, cacheSize:Int):Bool {
		var cur = 1;
		for (item in cache) {
			if (n % item == 0) {
				return false;
			}
			cur = item;
		}
		var m = Math.floor(Math.sqrt(cast(n, Float)));
		while (cast(cur, Float) < m) {
			cur = cur + 2;
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
		var cacheSize = 400.;
		var count = 1.;
		var beginCount = 3.;
		var endCount = 10000000.0;
		var current = beginCount;
		while (current < endCount) {
			if (isPrime(cast(current, Int), cache, cast(cacheSize, Int))) {
				count++;
			}
			current = current + 2.;
		}
	}
}
