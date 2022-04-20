package project;

class ArrayTest {

    public static function toArray(list:Array<Int>):Int{
        for (i in 0...list.length) {
            trace(list[0]);
            return list[0];
        }
        return list[0];
    }
    
    static function main() {
        var array = [];
        toArray(array);
    }

}