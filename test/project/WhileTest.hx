package project;

class WhileTest {
	public static function getString():String {
		var i = 0;
		while (true) {
			i++;
			if (i == 10)
				return "123123(" + i + ")";
			if (i == 8)
				return "123123(" + i + ")";
		}
		return "123";
	}

	public static function getParam():Bool {
		while (true) {
			return false;
		}
		return true;
	}

	static function main() {
		var i = 0;
		while (i < 10) {
			i++;
			trace("%i %b %s", i, getParam(), getString());
		}
	}
}
