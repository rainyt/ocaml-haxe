package project;

class WhileTest {

	public static function getString():String{
		while(true){
			return "123123";
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
			trace("%i %b", i, getParam());
		}
	}
}
