package project;

class MathTest {
	static function main() {
		var f1 = 1.;
		var i1 = 1;

		// *= /= += -= / * - + ++ --

		// float
		var f2 = f1 + f1; // 1+1;
		trace("f2=", f2);
		f2 += f1 * f1; // 2 + 1
		trace("f2=", f2);
		f2 /= f1 / f1; // 3 / 1
		trace("f2=", f2);
		f2 *= f1 - f1 + 1.; // 3 * 1
		trace("f2=", f2);
		f2 -= f1 - 0.; // 3 - 1
		f2++;
		f2--;
		trace("f2=", f2);

		// int
		var i2 = i1 + i1; // 1+1;
		trace("i2=", i2);
		i2 += i1 * i1; // 2 + 1
		trace("i2=", i2);
		i2 *= i1 - i1 + 1; // 3 * 1
		trace("i2=", i2);
		i2 -= i1 - 0; // 3 - 1
		i2++;
		i2--;
		trace("i2=", i2);

		// float + int
		var fi = f2 + i2;
		trace("fi=", fi);
		var ifv = i2 * f2;
		trace("ifv=", ifv);
		// div = float
		var div = i2 / i2;
		trace("div=", div);

		var s1 = "test";
		var s2 = f1 + s1;
		trace(s2);

		var loop = 10000000;
		while (loop > 0) {
			loop--;
		}
	}
}
