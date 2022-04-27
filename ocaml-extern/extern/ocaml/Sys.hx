package ocaml;
enum Signal_behavior {
Signal_default;
Signal_ignore;
Signal_handle;
}
enum Backend_type {
Native;
Bytecode;
Other;
}
@:exceptions("exception Break")
@:native("Sys")
extern class Sys{
// Parser external::external argv : string array = "%sys_argv"
public static var argv :OCamlArray<String>;// Parser val::val executable_name : string
public static var executable_name :Dynamic;
// Parser external::external file_exists : string -> bool = "caml_sys_file_exists"
public static function file_exists (a0:Dynamic):Dynamic;// Parser external::external is_directory : string -> bool = "caml_sys_is_directory"
public static function is_directory (a0:Dynamic):Dynamic;// Parser external::external remove : string -> unit = "caml_sys_remove"
public static function remove (a0:Dynamic):Void;// Parser external::external rename : string -> string -> unit = "caml_sys_rename"
public static function rename (a0:Dynamic,a1:Dynamic):Void;// Parser external::external getenv : string -> string = "caml_sys_getenv"
public static function getenv (a0:Dynamic):Dynamic;// Parser val::val getenv_opt: string -> string option
public static function getenv_opt(a0:Dynamic):Dynamic;
// Parser external::external command : string -> int = "caml_sys_system_command"
public static function command (a0:Dynamic):Dynamic;// Parser external::external time : unit -> (float [@unboxed]) =  "caml_sys_time" "caml_sys_time_unboxed" [@@noalloc]
public static function time (a0:Void):Dynamic;// Parser external::external chdir : string -> unit = "caml_sys_chdir"
public static function chdir (a0:Dynamic):Void;// Parser external::external mkdir : string -> int -> unit = "caml_sys_mkdir"
public static function mkdir (a0:Dynamic,a1:Dynamic):Void;// Parser external::external rmdir : string -> unit = "caml_sys_rmdir"
public static function rmdir (a0:Dynamic):Void;// Parser external::external getcwd : unit -> string = "caml_sys_getcwd"
public static function getcwd (a0:Void):Dynamic;// Parser external::external readdir : string -> string array = "caml_sys_read_directory"
public static function readdir (a0:Dynamic):OCamlArray<String>;// Parser val::val interactive : bool ref
public static var interactive :Dynamic;
// Parser val::val os_type : string
public static var os_type :Dynamic;
// Parser type::type backend_type =  | Native  | Bytecode  | Other of string 
// Parser val::val backend_type : backend_type
public static var backend_type :Backend_type;
// Parser val::val unix : bool
public static var unix :Dynamic;
// Parser val::val win32 : bool
public static var win32 :Dynamic;
// Parser val::val cygwin : bool
public static var cygwin :Dynamic;
// Parser val::val word_size : int
public static var word_size :Dynamic;
// Parser val::val int_size : int
public static var int_size :Dynamic;
// Parser val::val big_endian : bool
public static var big_endian :Dynamic;
// Parser val::val max_string_length : int
public static var max_string_length :Dynamic;
// Parser val::val max_array_length : int
public static var max_array_length :Dynamic;
// Parser val::val max_floatarray_length : int
public static var max_floatarray_length :Dynamic;
// Parser external::external runtime_variant : unit -> string = "caml_runtime_variant"
public static function runtime_variant (a0:Void):Dynamic;// Parser external::external runtime_parameters : unit -> string = "caml_runtime_parameters"
public static function runtime_parameters (a0:Void):Dynamic;// Parser type::type signal_behavior =    Signal_default  | Signal_ignore  | Signal_handle of (int -> unit)   
// Parser external::external signal :  int -> signal_behavior -> signal_behavior = "caml_install_signal_handler"
public static function signal (a0:Dynamic,a1:Signal_behavior):Signal_behavior;// Parser val::val set_signal : int -> signal_behavior -> unit
public static function set_signal (a0:Dynamic,a1:Signal_behavior):Void;
// Parser val::val sigabrt : int
public static var sigabrt :Dynamic;
// Parser val::val sigalrm : int
public static var sigalrm :Dynamic;
// Parser val::val sigfpe : int
public static var sigfpe :Dynamic;
// Parser val::val sighup : int
public static var sighup :Dynamic;
// Parser val::val sigill : int
public static var sigill :Dynamic;
// Parser val::val sigint : int
public static var sigint :Dynamic;
// Parser val::val sigkill : int
public static var sigkill :Dynamic;
// Parser val::val sigpipe : int
public static var sigpipe :Dynamic;
// Parser val::val sigquit : int
public static var sigquit :Dynamic;
// Parser val::val sigsegv : int
public static var sigsegv :Dynamic;
// Parser val::val sigterm : int
public static var sigterm :Dynamic;
// Parser val::val sigusr1 : int
public static var sigusr1 :Dynamic;
// Parser val::val sigusr2 : int
public static var sigusr2 :Dynamic;
// Parser val::val sigchld : int
public static var sigchld :Dynamic;
// Parser val::val sigcont : int
public static var sigcont :Dynamic;
// Parser val::val sigstop : int
public static var sigstop :Dynamic;
// Parser val::val sigtstp : int
public static var sigtstp :Dynamic;
// Parser val::val sigttin : int
public static var sigttin :Dynamic;
// Parser val::val sigttou : int
public static var sigttou :Dynamic;
// Parser val::val sigvtalrm : int
public static var sigvtalrm :Dynamic;
// Parser val::val sigprof : int
public static var sigprof :Dynamic;
// Parser val::val sigbus : int
public static var sigbus :Dynamic;
// Parser val::val sigpoll : int
public static var sigpoll :Dynamic;
// Parser val::val sigsys : int
public static var sigsys :Dynamic;
// Parser val::val sigtrap : int
public static var sigtrap :Dynamic;
// Parser val::val sigurg : int
public static var sigurg :Dynamic;
// Parser val::val sigxcpu : int
public static var sigxcpu :Dynamic;
// Parser val::val sigxfsz : int
public static var sigxfsz :Dynamic;
// Parser exception::exception Break
// Parser val::val catch_break : bool -> unit
public static function catch_break (a0:Dynamic):Void;
// Parser val::val ocaml_version : string
public static var ocaml_version :Dynamic;
// Parser val::val enable_runtime_warnings: bool -> unit
public static function enable_runtime_warnings(a0:Dynamic):Void;
// Parser val::val runtime_warnings_enabled: unit -> bool
public static function runtime_warnings_enabled(a0:Void):Dynamic;
// Parser external::external opaque_identity : 'a -> 'a = "%opaque"
public static function opaque_identity (a0:Dynamic):Dynamic;}