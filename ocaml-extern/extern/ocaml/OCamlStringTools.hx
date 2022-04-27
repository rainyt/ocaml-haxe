package ocaml;
enum OCamlStringTools_String {

}

@:native("String")
extern class OCamlStringTools{
// Parser type::type t = string
// Parser val::val make : int -> char -> string
public static function make (a0:Int,a1:Char):String;
// Parser val::val init : int -> (int -> char) -> string
public static function init (a0:Int,a1:Dynamic,a2:Dynamic):String;
// Parser external::external length : string -> int = "%string_length"
public static function length (a0:String):Int;// Parser external::external get : string -> int -> char = "%string_safe_get"
public static function get (a0:String,a1:Int):Char;// Parser val::val concat : string -> string list -> string
public static function concat (a0:String,a1:Array<String>):String;
// Parser val::val equal : t -> t -> bool
public static function equal (a0:Dynamic,a1:Dynamic):Bool;
// Parser val::val compare : t -> t -> int
public static function compare (a0:Dynamic,a1:Dynamic):Int;
// Parser val::val contains_from : string -> int -> char -> bool
public static function contains_from (a0:String,a1:Int,a2:Char):Bool;
// Parser val::val rcontains_from : string -> int -> char -> bool
public static function rcontains_from (a0:String,a1:Int,a2:Char):Bool;
// Parser val::val contains : string -> char -> bool
public static function contains (a0:String,a1:Char):Bool;
// Parser val::val sub : string -> int -> int -> string
public static function sub (a0:String,a1:Int,a2:Int):String;
// Parser val::val split_on_char : char -> string -> string list
public static function split_on_char (a0:Char,a1:String):Array<String>;
// Parser val::val map : (char -> char) -> string -> string
public static function map (a0:Dynamic,a1:Dynamic,a2:String):String;
// Parser val::val mapi : (int -> char -> char) -> string -> string
public static function mapi (a0:Dynamic,a1:Char,a2:Dynamic,a3:String):String;
// Parser val::val trim : string -> string
public static function trim (a0:String):String;
// Parser val::val escaped : string -> string
public static function escaped (a0:String):String;
// Parser val::val uppercase_ascii : string -> string
public static function uppercase_ascii (a0:String):String;
// Parser val::val lowercase_ascii : string -> string
public static function lowercase_ascii (a0:String):String;
// Parser val::val capitalize_ascii : string -> string
public static function capitalize_ascii (a0:String):String;
// Parser val::val uncapitalize_ascii : string -> string
public static function uncapitalize_ascii (a0:String):String;
// Parser val::val iter : (char -> unit) -> string -> unit
public static function iter (a0:Dynamic,a1:Dynamic,a2:String):Void;
// Parser val::val iteri : (int -> char -> unit) -> string -> unit
public static function iteri (a0:Dynamic,a1:Char,a2:Dynamic,a3:String):Void;
// Parser val::val index_from : string -> int -> char -> int
public static function index_from (a0:String,a1:Int,a2:Char):Int;
// Parser val::val index_from_opt : string -> int -> char -> int option
public static function index_from_opt (a0:String,a1:Int,a2:Char):Dynamic;
// Parser val::val rindex_from : string -> int -> char -> int
public static function rindex_from (a0:String,a1:Int,a2:Char):Int;
// Parser val::val rindex_from_opt : string -> int -> char -> int option
public static function rindex_from_opt (a0:String,a1:Int,a2:Char):Dynamic;
// Parser val::val index : string -> char -> int
public static function index (a0:String,a1:Char):Int;
// Parser val::val index_opt : string -> char -> int option
public static function index_opt (a0:String,a1:Char):Dynamic;
// Parser val::val rindex : string -> char -> int
public static function rindex (a0:String,a1:Char):Int;
// Parser val::val rindex_opt : string -> char -> int option
public static function rindex_opt (a0:String,a1:Char):Dynamic;
// Parser val::val to_seq : t -> char Seq.t
public static function to_seq (a0:Dynamic):Dynamic;
// Parser val::val to_seqi : t -> (int * char) Seq.t
public static function to_seqi (a0:Dynamic):Dynamic;
// Parser val::val of_seq : char Seq.t -> t
public static function of_seq (a0:Dynamic):Dynamic;
// Parser external::external create : int -> bytes = "caml_create_string"  [@@ocaml.deprecated "Use Bytes.create/BytesLabels.create instead."]
public static function create (a0:Int):Dynamic;// Parser external::external set : bytes -> int -> char -> unit = "%string_safe_set"  [@@ocaml.deprecated "Use Bytes.set/BytesLabels.set instead."]
public static function set (a0:Dynamic,a1:Int,a2:Char):Void;// Parser val::val blit :  string -> int -> bytes -> int -> int -> unit
public static function blit (a0:String,a1:Int,a2:Dynamic,a3:Int,a4:Int):Void;
// Parser val::val copy : string -> string  [@@ocaml.deprecated "Strings now immutable: no need to copy"]
// Parser val::val fill : bytes -> int -> int -> char -> unit  [@@ocaml.deprecated "Use Bytes.fill/BytesLabels.fill instead."]
// Parser val::val uppercase : string -> string  [@@ocaml.deprecated    "Use String.uppercase_ascii/StringLabels.uppercase_ascii instead."]
// Parser val::val lowercase : string -> string  [@@ocaml.deprecated    "Use String.lowercase_ascii/StringLabels.lowercase_ascii instead."]
// Parser val::val capitalize : string -> string  [@@ocaml.deprecated    "Use String.capitalize_ascii/StringLabels.capitalize_ascii instead."]
// Parser val::val uncapitalize : string -> string  [@@ocaml.deprecated    "Use String.uncapitalize_ascii/StringLabels.uncapitalize_ascii instead."]
// Parser external::external unsafe_get : string -> int -> char = "%string_unsafe_get"
public static function unsafe_get (a0:String,a1:Int):Char;// Parser external::external unsafe_set : bytes -> int -> char -> unit = "%string_unsafe_set"  [@@ocaml.deprecated]
public static function unsafe_set (a0:Dynamic,a1:Int,a2:Char):Void;// Parser external::external unsafe_blit :  string -> int -> bytes -> int -> int ->    unit = "caml_blit_string" [@@noalloc]
public static function unsafe_blit (a0:String,a1:Int,a2:Dynamic,a3:Int,a4:Int):Void;}