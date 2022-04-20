package project;

import enums.SwitchEnum;

class SwitchTest {
	static function main() {
		var i = 0;
		switch (i) {
			case 0:
				trace("%i\n", i);
				switch (i) {
					case 2:
						trace("%i", i);
				}
			case 1:
				trace("%i\n", i);
			case 2:
				trace("%i\n", i);
		}

		switch (i + 1) {
			case 2:
				trace("%i\n", i);
			default:
				trace("default:%i\n", i);
		}

		switch ("A") {
			case "A":
				trace("%s", "A");
			case "B":
				trace("%s", "B");
			case "C":
				trace("%s", "C");
		}

		// 这里未完成Enum支持
		// var a:SwitchEnum = A;
		// switch (a) {
		// 	case A:

		// 	case B:

		// 	case C:

		// 	case D:
		// }
	}
}
