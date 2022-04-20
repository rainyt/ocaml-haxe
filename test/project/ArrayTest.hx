package project;

/**
 * 基础数组测试
 */
class ArrayTest {
	public static function toArray(list:Array<Int>):Int {
		trace("test");
		for (i in 0...list.length) {
			trace("%i", list[0]);
			var f = list[0];
			return f;
		}
		return 0;
	}

	/**
	 * 这里应该不需要解引
	 * @param arr 
	 * @return Int
	 */
	public static function call(arr:Array<Int>):Int {
		return arr[0];
	}

	static function main() {
		var array = [1, 2, 3, 4];
		for (i in 0...array.length) {
			trace("%i=%i\n", i, array[i]);
		}
		var data = call(array);
		trace("%i", toArray(array));
		trace("%i", data);
	}
}
