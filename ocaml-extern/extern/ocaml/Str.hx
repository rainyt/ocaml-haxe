package ocaml;
enum Str_Split_result {
Text;
Delim;
}
@:native("Str.regexp")
extern class Str_Regexp{}

@:native("Str")
extern class Str{
// Parser type::type regexp
// Parser val::val regexp : string -> regexp
public static function regexp (a0:String):Str_Regexp;
// Parser val::val regexp_case_fold : string -> regexp
public static function regexp_case_fold (a0:String):Str_Regexp;
// Parser val::val quote : string -> string
public static function quote (a0:String):String;
// Parser val::val regexp_string : string -> regexp
public static function regexp_string (a0:String):Str_Regexp;
// Parser val::val regexp_string_case_fold : string -> regexp
public static function regexp_string_case_fold (a0:String):Str_Regexp;
// Parser val::val string_match : regexp -> string -> int -> bool
public static function string_match (a0:Str_Regexp,a1:String,a2:Int):Bool;
// Parser val::val search_forward : regexp -> string -> int -> int
public static function search_forward (a0:Str_Regexp,a1:String,a2:Int):Int;
// Parser val::val search_backward : regexp -> string -> int -> int
public static function search_backward (a0:Str_Regexp,a1:String,a2:Int):Int;
// Parser val::val string_partial_match : regexp -> string -> int -> bool
public static function string_partial_match (a0:Str_Regexp,a1:String,a2:Int):Bool;
// Parser val::val matched_string : string -> string
public static function matched_string (a0:String):String;
// Parser val::val match_beginning : unit -> int
public static function match_beginning (a0:Void):Int;
// Parser val::val match_end : unit -> int
public static function match_end (a0:Void):Int;
// Parser val::val matched_group : int -> string -> string
public static function matched_group (a0:Int,a1:String):String;
// Parser val::val group_beginning : int -> int
public static function group_beginning (a0:Int):Int;
// Parser val::val group_end : int -> int
public static function group_end (a0:Int):Int;
// Parser val::val global_replace : regexp -> string -> string -> string
public static function global_replace (a0:Str_Regexp,a1:String,a2:String):String;
// Parser val::val replace_first : regexp -> string -> string -> string
public static function replace_first (a0:Str_Regexp,a1:String,a2:String):String;
// Parser val::val global_substitute : regexp -> (string -> string) -> string -> string
public static function global_substitute (a0:Str_Regexp,a1:Dynamic,a2:Dynamic,a3:String):String;
// Parser val::val substitute_first : regexp -> (string -> string) -> string -> string
public static function substitute_first (a0:Str_Regexp,a1:Dynamic,a2:Dynamic,a3:String):String;
// Parser val::val replace_matched : string -> string -> string
public static function replace_matched (a0:String,a1:String):String;
// Parser val::val split : regexp -> string -> string list
public static function split (a0:Str_Regexp,a1:String):Array<String>;
// Parser val::val bounded_split : regexp -> string -> int -> string list
public static function bounded_split (a0:Str_Regexp,a1:String,a2:Int):Array<String>;
// Parser val::val split_delim : regexp -> string -> string list
public static function split_delim (a0:Str_Regexp,a1:String):Array<String>;
// Parser val::val bounded_split_delim : regexp -> string -> int -> string list
public static function bounded_split_delim (a0:Str_Regexp,a1:String,a2:Int):Array<String>;
// Parser type::type split_result =    Text of string  | Delim of string
// Parser val::val full_split : regexp -> string -> split_result list
public static function full_split (a0:Str_Regexp,a1:String):Array<Str_Split_result>;
// Parser val::val bounded_full_split : regexp -> string -> int -> split_result list
public static function bounded_full_split (a0:Str_Regexp,a1:String,a2:Int):Array<Str_Split_result>;
// Parser val::val string_before : string -> int -> string
public static function string_before (a0:String,a1:Int):String;
// Parser val::val string_after : string -> int -> string
public static function string_after (a0:String,a1:Int):String;
// Parser val::val first_chars : string -> int -> string
public static function first_chars (a0:String,a1:Int):String;
}