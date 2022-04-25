typedef GcStat = {
minor_words :Float,
promoted_words :Float,
major_words :Float,
minor_collections :Int,
major_collections :Int,
heap_words :Int,
heap_chunks :Int,
live_words :Int,
live_blocks :Int,
free_words :Int,
free_blocks :Int,
largest_free :Int,
fragments :Int,
compactions :Int,
top_heap_words :Int,
stack_size :Int,
forced_major_collections :Int,
}

typedef GcControl = {
minor_heap_size :Int,
major_heap_increment :Int,
space_overhead :Int,
verbose :Int,
max_overhead :Int,
stack_limit :Int,
allocation_policy :Int,
window_size :Int,
custom_major_ratio :Int,
custom_minor_ratio :Int,
custom_minor_max_size :Int,
}

typedef GcAlarm  = Dynamic;

typedef GcAlarm_rec = {
active :Dynamic,
f :Void,
}

typedef GcAllocation_source  = Dynamic;

typedef GcAllocation = {
}

@:native("Gc")
extern class OCamlGc {
public static function stat(a0:Void):Dynamic;
public static function quick_stat(a0:Void):Dynamic;
public static function counters(a0:Void):Dynamic;
public static function minor_words(a0:Void):Dynamic;
public static function get(a0:Void):Dynamic;
public static function set(a0:Dynamic):Void;
public static function minor(a0:Void):Void;
public static function major_slice(a0:Int):Int;
public static function major(a0:Void):Void;
public static function full_major(a0:Void):Void;
public static function compact(a0:Void):Void;
public static function get_minor_free(a0:Void):Int;
public static function get_bucket(a0:Int):Int;
public static function get_credit(a0:Void):Int;
public static function huge_fallback_count(a0:Void):Int;
public static function eventlog_pause(a0:Void):Void;
public static function eventlog_resume(a0:Void):Void;
public static function print_stat(a0:Dynamic):Void;
public static function allocated_bytes(a0:Void):Float;
public static function finalise(a0:Dynamic->Void,a1:Dynamic):Void;
public static function finalise_last(a0:Void->Void,a1:Dynamic):Void;
public static function finalise_release(a0:Void):Void;
public static function call_alarm(a0:Dynamic):Void;
public static function create_alarm(a0:Void->Void):Dynamic;
public static function delete_alarm(a0:Dynamic):Void;
public static var null_tracker:Dynamic;
public static function c_start(a0:Float,a1:Int,a2:Dynamic):Void;
public static var start:Dynamic;
public static function stop(a0:Void):Void;
}