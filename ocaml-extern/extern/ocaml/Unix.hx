package ocaml;
enum Unix_Flow_action {
TCOOFF;
TCOON;
TCIOFF;
TCION;
}
enum Unix_Flush_queue {
TCIFLUSH;
TCOFLUSH;
TCIOFLUSH;
}
enum Unix_Setattr_when {
TCSANOW;
TCSADRAIN;
TCSAFLUSH;
}
@:native("Unix.terminal_io")
extern class Unix_Terminal_io{
public var c_ignbrk:Bool;
public var c_brkint:Bool;
public var c_ignpar:Bool;
public var c_parmrk:Bool;
public var c_inpck:Bool;
public var c_istrip:Bool;
public var c_inlcr:Bool;
public var c_igncr:Bool;
public var c_icrnl:Bool;
public var c_ixon:Bool;
public var c_ixoff:Bool;
public var c_opost:Bool;
public var c_obaud:Int;
public var c_ibaud:Int;
public var c_csize:Int;
public var c_cstopb:Int;
public var c_cread:Bool;
public var c_parenb:Bool;
public var c_parodd:Bool;
public var c_hupcl:Bool;
public var c_clocal:Bool;
public var c_isig:Bool;
public var c_icanon:Bool;
public var c_noflsh:Bool;
public var c_echo:Bool;
public var c_echoe:Bool;
public var c_echok:Bool;
public var c_echonl:Bool;
public var c_vintr:Dynamic;
public var c_vquit:Dynamic;
public var c_verase:Dynamic;
public var c_vkill:Dynamic;
public var c_veof:Dynamic;
public var c_veol:Dynamic;
public var c_vmin:Int;
public var c_vtime:Int;
public var c_vstart:Dynamic;
public var c_vstop:Dynamic;
}
enum Unix_Getnameinfo_option {
NI_NOFQDN;
NI_NUMERICHOST;
NI_NAMEREQD;
NI_NUMERICSERV;
NI_DGRAM;
}
@:native("Unix.name_info")
extern class Unix_Name_info{
public var ni_hostname:String;
public var ni_service:String;
}
enum Unix_Getaddrinfo_option {
AI_FAMILY;
AI_SOCKTYPE;
AI_PROTOCOL;
}
@:native("Unix.addr_info")
extern class Unix_Addr_info{
public var ai_family:Dynamic;
public var ai_socktype:Dynamic;
public var ai_protocol:Int;
public var ai_addr:Dynamic;
public var ai_canonname:String;
}
@:native("Unix.service_entry")
extern class Unix_Service_entry{
public var s_name:String;
public var s_aliases:String;
public var s_port:Int;
public var s_proto:String;
}
@:native("Unix.protocol_entry")
extern class Unix_Protocol_entry{
public var p_name:String;
public var p_aliases:String;
public var p_proto:Int;
}
@:native("Unix.host_entry")
extern class Unix_Host_entry{
public var h_name:String;
public var h_aliases:String;
public var h_addrtype:Dynamic;
public var h_addr_list:Dynamic;
}
enum Unix_Socket_float_option {
SO_RCVTIMEO;
SO_SNDTIMEO;
}
enum Unix_Socket_optint_option {
SO_LINGER;
}
enum Unix_Socket_int_option {
SO_SNDBUF;
SO_RCVBUF;
SO_ERROR;
SO_TYPE;
SO_RCVLOWAT;
SO_SNDLOWAT;
}
enum Unix_Socket_bool_option {
SO_DEBUG;
SO_BROADCAST;
SO_REUSEADDR;
SO_KEEPALIVE;
SO_DONTROUTE;
SO_OOBINLINE;
SO_ACCEPTCONN;
TCP_NODELAY;
IPV6_ONLY;
SO_REUSEPORT;
}
enum Unix_Msg_flag {
MSG_OOB;
MSG_DONTROUTE;
MSG_PEEK;
}
enum Unix_Shutdown_command {
SHUTDOWN_RECEIVE;
SHUTDOWN_SEND;
SHUTDOWN_ALL;
}
enum Unix_Sockaddr {
ADDR_UNIX;
ADDR_INET;
}
enum Unix_Socket_type {
SOCK_STREAM;
SOCK_DGRAM;
SOCK_RAW;
SOCK_SEQPACKET;
}
enum Unix_Socket_domain {
PF_UNIX;
PF_INET;
PF_INET6;
}
@:native("Unix.inet_addr")
extern class Unix_Inet_addr{}
@:native("Unix.group_entry")
extern class Unix_Group_entry{
public var gr_name:String;
public var gr_passwd:String;
public var gr_gid:Int;
public var gr_mem:String;
}
@:native("Unix.passwd_entry")
extern class Unix_Passwd_entry{
public var pw_name:String;
public var pw_passwd:String;
public var pw_uid:Int;
public var pw_gid:Int;
public var pw_gecos:String;
public var pw_dir:String;
public var pw_shell:String;
}
@:native("Unix.interval_timer_status")
extern class Unix_Interval_timer_status{
public var it_interval:Float;
public var it_value:Float;
}
enum Unix_Interval_timer {
ITIMER_REAL;
ITIMER_VIRTUAL;
ITIMER_PROF;
}
@:native("Unix.tm")
extern class Unix_Tm{
public var tm_sec:Int;
public var tm_min:Int;
public var tm_hour:Int;
public var tm_mday:Int;
public var tm_mon:Int;
public var tm_year:Int;
public var tm_wday:Int;
public var tm_yday:Int;
public var tm_isdst:Bool;
}
@:native("Unix.process_times")
extern class Unix_Process_times{
public var tms_utime:Float;
public var tms_stime:Float;
public var tms_cutime:Float;
public var tms_cstime:Float;
}
enum Unix_Sigprocmask_command {
SIG_SETMASK;
SIG_BLOCK;
SIG_UNBLOCK;
}
enum Unix_Lock_command {
F_ULOCK;
F_LOCK;
F_TLOCK;
F_TEST;
F_RLOCK;
F_TRLOCK;
}
@:native("Unix.dir_handle")
extern class Unix_Dir_handle{}
enum Unix_Access_permission {
R_OK;
W_OK;
X_OK;
F_OK;
}
@:native("Unix.stats")
extern class Unix_Stats{
public var st_dev:Int;
public var st_ino:Int;
public var st_kind:Dynamic;
public var st_perm:Dynamic;
public var st_nlink:Int;
public var st_uid:Int;
public var st_gid:Int;
public var st_rdev:Int;
public var st_size:Int;
public var st_atime:Float;
public var st_mtime:Float;
public var st_ctime:Float;
}
enum Unix_File_kind {
S_REG;
S_DIR;
S_CHR;
S_BLK;
S_LNK;
S_FIFO;
S_SOCK;
}
enum Unix_Seek_command {
SEEK_SET;
SEEK_CUR;
SEEK_END;
}
enum Unix_File_perm {

}
enum Unix_Open_flag {
O_RDONLY;
O_WRONLY;
O_RDWR;
O_NONBLOCK;
O_APPEND;
O_CREAT;
O_TRUNC;
O_EXCL;
O_NOCTTY;
O_DSYNC;
O_SYNC;
O_RSYNC;
O_SHARE_DELETE;
O_CLOEXEC;
O_KEEPEXEC;
}
@:native("Unix.file_descr")
extern class Unix_File_descr{}
enum Unix_Wait_flag {
WNOHANG;
WUNTRACED;
}
enum Unix_Process_status {
WEXITED;
WSIGNALED;
WSTOPPED;
}
enum Unix_Error {
E2BIG;
EACCES;
EAGAIN;
EBADF;
EBUSY;
ECHILD;
EDEADLK;
EDOM;
EEXIST;
EFAULT;
EFBIG;
EINTR;
EINVAL;
EIO;
EISDIR;
EMFILE;
EMLINK;
ENAMETOOLONG;
ENFILE;
ENODEV;
ENOENT;
ENOEXEC;
ENOLCK;
ENOMEM;
ENOSPC;
ENOSYS;
ENOTDIR;
ENOTEMPTY;
ENOTTY;
ENXIO;
EPERM;
EPIPE;
ERANGE;
EROFS;
ESPIPE;
ESRCH;
EXDEV;
EWOULDBLOCK;
EINPROGRESS;
EALREADY;
ENOTSOCK;
EDESTADDRREQ;
EMSGSIZE;
EPROTOTYPE;
ENOPROTOOPT;
EPROTONOSUPPORT;
ESOCKTNOSUPPORT;
EOPNOTSUPP;
EPFNOSUPPORT;
EAFNOSUPPORT;
EADDRINUSE;
EADDRNOTAVAIL;
ENETDOWN;
ENETUNREACH;
ENETRESET;
ECONNABORTED;
ECONNRESET;
ENOBUFS;
EISCONN;
ENOTCONN;
ESHUTDOWN;
ETOOMANYREFS;
ETIMEDOUT;
ECONNREFUSED;
EHOSTDOWN;
EHOSTUNREACH;
ELOOP;
EOVERFLOW;
EUNKNOWNERR;
}
@:exceptions("exception Unix_error of error * string * string")
@:native("Unix")
extern class Unix{
// Parser type::type error =    E2BIG                 | EACCES                | EAGAIN                | EBADF                 | EBUSY                 | ECHILD                | EDEADLK               | EDOM                  | EEXIST                | EFAULT                | EFBIG                 | EINTR                 | EINVAL                | EIO                   | EISDIR                | EMFILE                | EMLINK                | ENAMETOOLONG          | ENFILE                | ENODEV                | ENOENT                | ENOEXEC               | ENOLCK                | ENOMEM                | ENOSPC                | ENOSYS                | ENOTDIR               | ENOTEMPTY             | ENOTTY                | ENXIO                 | EPERM                 | EPIPE                 | ERANGE                | EROFS                 | ESPIPE                | ESRCH                 | EXDEV                 | EWOULDBLOCK           | EINPROGRESS           | EALREADY              | ENOTSOCK              | EDESTADDRREQ          | EMSGSIZE              | EPROTOTYPE            | ENOPROTOOPT           | EPROTONOSUPPORT       | ESOCKTNOSUPPORT       | EOPNOTSUPP            | EPFNOSUPPORT          | EAFNOSUPPORT          | EADDRINUSE            | EADDRNOTAVAIL         | ENETDOWN              | ENETUNREACH           | ENETRESET             | ECONNABORTED          | ECONNRESET            | ENOBUFS               | EISCONN               | ENOTCONN              | ESHUTDOWN             | ETOOMANYREFS          | ETIMEDOUT             | ECONNREFUSED          | EHOSTDOWN             | EHOSTUNREACH          | ELOOP                 | EOVERFLOW             | EUNKNOWNERR of int  
// Parser exception::exception Unix_error of error * string * string
// Parser val::val error_message : error -> string
public static function error_message (a0:Unix_Error):String;
// Parser val::val handle_unix_error : ('a -> 'b) -> 'a -> 'b
public static function handle_unix_error (a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val environment : unit -> string array
public static function environment (a0:Void):OCamlArray<String>;
// Parser val::val unsafe_environment : unit -> string array
public static function unsafe_environment (a0:Void):OCamlArray<String>;
// Parser val::val getenv : string -> string
public static function getenv (a0:String):String;
// Parser val::val unsafe_getenv : string -> string
public static function unsafe_getenv (a0:String):String;
// Parser val::val putenv : string -> string -> unit
public static function putenv (a0:String,a1:String):Void;
// Parser type::type process_status =    WEXITED of int          | WSIGNALED of int          | WSTOPPED of int        
// Parser type::type wait_flag =    WNOHANG   | WUNTRACED 
// Parser val::val execv : string -> string array -> 'a
public static function execv (a0:String,a1:OCamlArray<String>):Dynamic;
// Parser val::val execve : string -> string array -> string array -> 'a
public static function execve (a0:String,a1:OCamlArray<String>,a2:OCamlArray<String>):Dynamic;
// Parser val::val execvp : string -> string array -> 'a
public static function execvp (a0:String,a1:OCamlArray<String>):Dynamic;
// Parser val::val execvpe : string -> string array -> string array -> 'a
public static function execvpe (a0:String,a1:OCamlArray<String>,a2:OCamlArray<String>):Dynamic;
// Parser val::val fork : unit -> int
public static function fork (a0:Void):Int;
// Parser val::val wait : unit -> int * process_status
public static function wait (a0:Void):Dynamic;
// Parser val::val waitpid : wait_flag list -> int -> int * process_status
public static function waitpid (a0:Array<Unix_Wait_flag>,a1:Int):Dynamic;
// Parser val::val system : string -> process_status
public static function system (a0:String):Unix_Process_status;
// Parser val::val _exit : int -> 'a
public static function _exit (a0:Int):Dynamic;
// Parser val::val getpid : unit -> int
public static function getpid (a0:Void):Int;
// Parser val::val getppid : unit -> int
public static function getppid (a0:Void):Int;
// Parser val::val nice : int -> int
public static function nice (a0:Int):Int;
// Parser type::type file_descr
// Parser val::val stdin : file_descr
public static var stdin :Unix_File_descr;
// Parser val::val stdout : file_descr
public static var stdout :Unix_File_descr;
// Parser val::val stderr : file_descr
public static var stderr :Unix_File_descr;
// Parser type::type open_flag =    O_RDONLY                      | O_WRONLY                      | O_RDWR                        | O_NONBLOCK                    | O_APPEND                      | O_CREAT                       | O_TRUNC                       | O_EXCL                        | O_NOCTTY                      | O_DSYNC                       | O_SYNC                        | O_RSYNC                       | O_SHARE_DELETE                | O_CLOEXEC                     | O_KEEPEXEC                  
// Parser type::type file_perm = int
// Parser val::val openfile : string -> open_flag list -> file_perm -> file_descr
public static function openfile (a0:String,a1:Array<Unix_Open_flag>,a2:Unix_File_perm):Unix_File_descr;
// Parser val::val close : file_descr -> unit
public static function close (a0:Unix_File_descr):Void;
// Parser val::val fsync : file_descr -> unit
public static function fsync (a0:Unix_File_descr):Void;
// Parser val::val read : file_descr -> bytes -> int -> int -> int
public static function read (a0:Unix_File_descr,a1:Dynamic,a2:Int,a3:Int):Int;
// Parser val::val write : file_descr -> bytes -> int -> int -> int
public static function write (a0:Unix_File_descr,a1:Dynamic,a2:Int,a3:Int):Int;
// Parser val::val single_write : file_descr -> bytes -> int -> int -> int
public static function single_write (a0:Unix_File_descr,a1:Dynamic,a2:Int,a3:Int):Int;
// Parser val::val write_substring : file_descr -> string -> int -> int -> int
public static function write_substring (a0:Unix_File_descr,a1:String,a2:Int,a3:Int):Int;
// Parser val::val single_write_substring :  file_descr -> string -> int -> int -> int
public static function single_write_substring (a0:Unix_File_descr,a1:String,a2:Int,a3:Int):Int;
// Parser val::val in_channel_of_descr : file_descr -> in_channel
public static function in_channel_of_descr (a0:Unix_File_descr):Dynamic;
// Parser val::val out_channel_of_descr : file_descr -> out_channel
public static function out_channel_of_descr (a0:Unix_File_descr):Dynamic;
// Parser val::val descr_of_in_channel : in_channel -> file_descr
public static function descr_of_in_channel (a0:Dynamic):Unix_File_descr;
// Parser val::val descr_of_out_channel : out_channel -> file_descr
public static function descr_of_out_channel (a0:Dynamic):Unix_File_descr;
// Parser type::type seek_command =    SEEK_SET   | SEEK_CUR   | SEEK_END 
// Parser val::val lseek : file_descr -> int -> seek_command -> int
public static function lseek (a0:Unix_File_descr,a1:Int,a2:Unix_Seek_command):Int;
// Parser val::val truncate : string -> int -> unit
public static function truncate (a0:String,a1:Int):Void;
// Parser val::val ftruncate : file_descr -> int -> unit
public static function ftruncate (a0:Unix_File_descr,a1:Int):Void;
// Parser type::type file_kind =    S_REG                         | S_DIR                         | S_CHR                         | S_BLK                         | S_LNK                         | S_FIFO                        | S_SOCK                      
// Parser type::type stats =  { st_dev : int;                   st_ino : int;                   st_kind : file_kind;            st_perm : file_perm;            st_nlink : int;                 st_uid : int;                   st_gid : int;                   st_rdev : int;                  st_size : int;                  st_atime : float;               st_mtime : float;               st_ctime : float;             }
// Parser val::val stat : string -> stats
public static function stat (a0:String):Unix_Stats;
// Parser val::val lstat : string -> stats
public static function lstat (a0:String):Unix_Stats;
// Parser val::val fstat : file_descr -> stats
public static function fstat (a0:Unix_File_descr):Unix_Stats;
// Parser val::val isatty : file_descr -> bool
public static function isatty (a0:Unix_File_descr):Bool;
// Parser module::module LargeFile :    type stats =      { st_dev : int;                       st_ino : int;                       st_kind : file_kind;                st_perm : file_perm;                st_nlink : int;                     st_uid : int;                       st_gid : int;                       st_rdev : int;                      st_size : int64;                    st_atime : float;                   st_mtime : float;                   st_ctime : float;                 }    val stat : string -> stats    val lstat : string -> stats    val fstat : file_descr -> stats  end
// Parser val::val map_file :  file_descr ->  ?pos :int64 ->  ('a, 'b) Stdlib.Bigarray.kind ->  'c Stdlib.Bigarray.layout -> bool -> int array ->  ('a, 'b, 'c) Stdlib.Bigarray.Genarray.t
public static function map_file (a0:Unix_File_descr):Dynamic;
// Parser val::val unlink : string -> unit
public static function unlink (a0:String):Void;
// Parser val::val rename : string -> string -> unit
public static function rename (a0:String,a1:String):Void;
// Parser val::val link : ?follow  :bool ->           string -> string -> unit
public static var link :Dynamic;
// Parser type::type access_permission =    R_OK                          | W_OK                          | X_OK                          | F_OK                        
// Parser val::val chmod : string -> file_perm -> unit
public static function chmod (a0:String,a1:Unix_File_perm):Void;
// Parser val::val fchmod : file_descr -> file_perm -> unit
public static function fchmod (a0:Unix_File_descr,a1:Unix_File_perm):Void;
// Parser val::val chown : string -> int -> int -> unit
public static function chown (a0:String,a1:Int,a2:Int):Void;
// Parser val::val fchown : file_descr -> int -> int -> unit
public static function fchown (a0:Unix_File_descr,a1:Int,a2:Int):Void;
// Parser val::val umask : int -> int
public static function umask (a0:Int):Int;
// Parser val::val access : string -> access_permission list -> unit
public static function access (a0:String,a1:Array<Unix_Access_permission>):Void;
// Parser val::val dup : ?cloexec:  bool ->          file_descr -> file_descr
public static var dup :Dynamic;
// Parser val::val dup2 : ?cloexec:  bool ->           file_descr -> file_descr -> unit
public static var dup2 :Dynamic;
// Parser val::val set_nonblock : file_descr -> unit
public static function set_nonblock (a0:Unix_File_descr):Void;
// Parser val::val clear_nonblock : file_descr -> unit
public static function clear_nonblock (a0:Unix_File_descr):Void;
// Parser val::val set_close_on_exec : file_descr -> unit
public static function set_close_on_exec (a0:Unix_File_descr):Void;
// Parser val::val clear_close_on_exec : file_descr -> unit
public static function clear_close_on_exec (a0:Unix_File_descr):Void;
// Parser val::val mkdir : string -> file_perm -> unit
public static function mkdir (a0:String,a1:Unix_File_perm):Void;
// Parser val::val rmdir : string -> unit
public static function rmdir (a0:String):Void;
// Parser val::val chdir : string -> unit
public static function chdir (a0:String):Void;
// Parser val::val getcwd : unit -> string
public static function getcwd (a0:Void):String;
// Parser val::val chroot : string -> unit
public static function chroot (a0:String):Void;
// Parser type::type dir_handle
// Parser val::val opendir : string -> dir_handle
public static function opendir (a0:String):Unix_Dir_handle;
// Parser val::val readdir : dir_handle -> string
public static function readdir (a0:Unix_Dir_handle):String;
// Parser val::val rewinddir : dir_handle -> unit
public static function rewinddir (a0:Unix_Dir_handle):Void;
// Parser val::val closedir : dir_handle -> unit
public static function closedir (a0:Unix_Dir_handle):Void;
// Parser val::val pipe : ?cloexec:  bool ->           unit -> file_descr * file_descr
public static var pipe :Dynamic;
// Parser val::val mkfifo : string -> file_perm -> unit
public static function mkfifo (a0:String,a1:Unix_File_perm):Void;
// Parser val::val create_process :  string -> string array -> file_descr -> file_descr ->    file_descr -> int
public static function create_process (a0:String,a1:OCamlArray<String>,a2:Unix_File_descr,a3:Unix_File_descr,a4:Unix_File_descr):Int;
// Parser val::val create_process_env :  string -> string array -> string array -> file_descr ->    file_descr -> file_descr -> int
public static function create_process_env (a0:String,a1:OCamlArray<String>,a2:OCamlArray<String>,a3:Unix_File_descr,a4:Unix_File_descr,a5:Unix_File_descr):Int;
// Parser val::val open_process_in : string -> in_channel
public static function open_process_in (a0:String):Dynamic;
// Parser val::val open_process_out : string -> out_channel
public static function open_process_out (a0:String):Dynamic;
// Parser val::val open_process : string -> in_channel * out_channel
public static function open_process (a0:String):Dynamic;
// Parser val::val open_process_full :  string -> string array -> in_channel * out_channel * in_channel
public static function open_process_full (a0:String,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args_in : string -> string array -> in_channel
public static function open_process_args_in (a0:String,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args_out : string -> string array -> out_channel
public static function open_process_args_out (a0:String,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args : string -> string array -> in_channel * out_channel
public static function open_process_args (a0:String,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args_full :  string -> string array -> string array ->    in_channel * out_channel * in_channel
public static function open_process_args_full (a0:String,a1:OCamlArray<String>,a2:OCamlArray<String>):Dynamic;
// Parser val::val process_in_pid : in_channel -> int
public static function process_in_pid (a0:Dynamic):Int;
// Parser val::val process_out_pid : out_channel -> int
public static function process_out_pid (a0:Dynamic):Int;
// Parser val::val process_pid : in_channel * out_channel -> int
public static function process_pid (a0:Dynamic):Int;
// Parser val::val process_full_pid : in_channel * out_channel * in_channel -> int
public static function process_full_pid (a0:Dynamic):Int;
// Parser val::val close_process_in : in_channel -> process_status
public static function close_process_in (a0:Dynamic):Unix_Process_status;
// Parser val::val close_process_out : out_channel -> process_status
public static function close_process_out (a0:Dynamic):Unix_Process_status;
// Parser val::val close_process : in_channel * out_channel -> process_status
public static function close_process (a0:Dynamic):Unix_Process_status;
// Parser val::val close_process_full :  in_channel * out_channel * in_channel -> process_status
public static function close_process_full (a0:Dynamic):Unix_Process_status;
// Parser val::val symlink : ?to_dir:  bool ->              string -> string -> unit
public static var symlink :Dynamic;
// Parser val::val has_symlink : unit -> bool
public static function has_symlink (a0:Void):Bool;
// Parser val::val readlink : string -> string
public static function readlink (a0:String):String;
// Parser val::val select :  file_descr list -> file_descr list -> file_descr list ->    float -> file_descr list * file_descr list * file_descr list
public static function select (a0:Array<Unix_File_descr>,a1:Array<Unix_File_descr>,a2:Array<Unix_File_descr>,a3:Float):Dynamic;
// Parser type::type lock_command =    F_ULOCK         | F_LOCK          | F_TLOCK         | F_TEST          | F_RLOCK         | F_TRLOCK      
// Parser val::val lockf : file_descr -> lock_command -> int -> unit
public static function lockf (a0:Unix_File_descr,a1:Unix_Lock_command,a2:Int):Void;
// Parser val::val kill : int -> int -> unit
public static function kill (a0:Int,a1:Int):Void;
// Parser type::type sigprocmask_command =    SIG_SETMASK  | SIG_BLOCK  | SIG_UNBLOCK
// Parser val::val sigprocmask : sigprocmask_command -> int list -> int list
public static function sigprocmask (a0:Unix_Sigprocmask_command,a1:Array<Int>):Array<Int>;
// Parser val::val sigpending : unit -> int list
public static function sigpending (a0:Void):Array<Int>;
// Parser val::val sigsuspend : int list -> unit
public static function sigsuspend (a0:Array<Int>):Void;
// Parser val::val pause : unit -> unit
public static function pause (a0:Void):Void;
// Parser type::type process_times =  { tms_utime : float;      tms_stime : float;      tms_cutime : float;     tms_cstime : float;   }
// Parser type::type tm =  { tm_sec : int;                   tm_min : int;                   tm_hour : int;                  tm_mday : int;                  tm_mon : int;                   tm_year : int;                  tm_wday : int;                  tm_yday : int;                  tm_isdst : bool;              }
// Parser val::val time : unit -> float
public static function time (a0:Void):Float;
// Parser val::val gettimeofday : unit -> float
public static function gettimeofday (a0:Void):Float;
// Parser val::val gmtime : float -> tm
public static function gmtime (a0:Float):Unix_Tm;
// Parser val::val localtime : float -> tm
public static function localtime (a0:Float):Unix_Tm;
// Parser val::val mktime : tm -> float * tm
public static function mktime (a0:Unix_Tm):Dynamic;
// Parser val::val alarm : int -> int
public static function alarm (a0:Int):Int;
// Parser val::val sleep : int -> unit
public static function sleep (a0:Int):Void;
// Parser val::val sleepf : float -> unit
public static function sleepf (a0:Float):Void;
// Parser val::val times : unit -> process_times
public static function times (a0:Void):Unix_Process_times;
// Parser val::val utimes : string -> float -> float -> unit
public static function utimes (a0:String,a1:Float,a2:Float):Void;
// Parser type::type interval_timer =    ITIMER_REAL        | ITIMER_VIRTUAL        | ITIMER_PROF      
// Parser type::type interval_timer_status =  { it_interval : float;             it_value : float;              }
// Parser val::val getitimer : interval_timer -> interval_timer_status
public static function getitimer (a0:Unix_Interval_timer):Unix_Interval_timer_status;
// Parser val::val setitimer :  interval_timer -> interval_timer_status -> interval_timer_status
public static function setitimer (a0:Unix_Interval_timer,a1:Unix_Interval_timer_status):Unix_Interval_timer_status;
// Parser val::val getuid : unit -> int
public static function getuid (a0:Void):Int;
// Parser val::val geteuid : unit -> int
public static function geteuid (a0:Void):Int;
// Parser val::val setuid : int -> unit
public static function setuid (a0:Int):Void;
// Parser val::val getgid : unit -> int
public static function getgid (a0:Void):Int;
// Parser val::val getegid : unit -> int
public static function getegid (a0:Void):Int;
// Parser val::val setgid : int -> unit
public static function setgid (a0:Int):Void;
// Parser val::val getgroups : unit -> int array
public static function getgroups (a0:Void):OCamlArray<Int>;
// Parser val::val setgroups : int array -> unit
public static function setgroups (a0:OCamlArray<Int>):Void;
// Parser val::val initgroups : string -> int -> unit
public static function initgroups (a0:String,a1:Int):Void;
// Parser type::type passwd_entry =  { pw_name : string;    pw_passwd : string;    pw_uid : int;    pw_gid : int;    pw_gecos : string;    pw_dir : string;    pw_shell : string  }
// Parser type::type group_entry =  { gr_name : string;    gr_passwd : string;    gr_gid : int;    gr_mem : string array  }
// Parser val::val getlogin : unit -> string
public static function getlogin (a0:Void):String;
// Parser val::val getpwnam : string -> passwd_entry
public static function getpwnam (a0:String):Unix_Passwd_entry;
// Parser val::val getgrnam : string -> group_entry
public static function getgrnam (a0:String):Unix_Group_entry;
// Parser val::val getpwuid : int -> passwd_entry
public static function getpwuid (a0:Int):Unix_Passwd_entry;
// Parser val::val getgrgid : int -> group_entry
public static function getgrgid (a0:Int):Unix_Group_entry;
// Parser type::type inet_addr
// Parser val::val inet_addr_of_string : string -> inet_addr
public static function inet_addr_of_string (a0:String):Unix_Inet_addr;
// Parser val::val string_of_inet_addr : inet_addr -> string
public static function string_of_inet_addr (a0:Unix_Inet_addr):String;
// Parser val::val inet_addr_any : inet_addr
public static var inet_addr_any :Unix_Inet_addr;
// Parser val::val inet_addr_loopback : inet_addr
public static var inet_addr_loopback :Unix_Inet_addr;
// Parser val::val inet6_addr_any : inet_addr
public static var inet6_addr_any :Unix_Inet_addr;
// Parser val::val inet6_addr_loopback : inet_addr
public static var inet6_addr_loopback :Unix_Inet_addr;
// Parser val::val is_inet6_addr : inet_addr -> bool
public static function is_inet6_addr (a0:Unix_Inet_addr):Bool;
// Parser type::type socket_domain =    PF_UNIX                       | PF_INET                       | PF_INET6                    
// Parser type::type socket_type =    SOCK_STREAM                   | SOCK_DGRAM                    | SOCK_RAW                      | SOCK_SEQPACKET              
// Parser type::type sockaddr =    ADDR_UNIX of string  | ADDR_INET of inet_addr * int 
// Parser val::val socket :  ?cloexec:  bool ->    socket_domain -> socket_type -> int -> file_descr
public static var socket :Dynamic;
// Parser val::val domain_of_sockaddr: sockaddr -> socket_domain
public static function domain_of_sockaddr(a0:Unix_Sockaddr):Unix_Socket_domain;
// Parser val::val socketpair :  ?cloexec:  bool ->    socket_domain -> socket_type -> int ->    file_descr * file_descr
public static var socketpair :Dynamic;
// Parser val::val accept : ?cloexec:  bool ->             file_descr -> file_descr * sockaddr
public static var accept :Dynamic;
// Parser val::val bind : file_descr -> sockaddr -> unit
public static function bind (a0:Unix_File_descr,a1:Unix_Sockaddr):Void;
// Parser val::val connect : file_descr -> sockaddr -> unit
public static function connect (a0:Unix_File_descr,a1:Unix_Sockaddr):Void;
// Parser val::val listen : file_descr -> int -> unit
public static function listen (a0:Unix_File_descr,a1:Int):Void;
// Parser type::type shutdown_command =    SHUTDOWN_RECEIVE              | SHUTDOWN_SEND                 | SHUTDOWN_ALL                
// Parser val::val shutdown : file_descr -> shutdown_command -> unit
public static function shutdown (a0:Unix_File_descr,a1:Unix_Shutdown_command):Void;
// Parser val::val getsockname : file_descr -> sockaddr
public static function getsockname (a0:Unix_File_descr):Unix_Sockaddr;
// Parser val::val getpeername : file_descr -> sockaddr
public static function getpeername (a0:Unix_File_descr):Unix_Sockaddr;
// Parser type::type msg_flag =    MSG_OOB  | MSG_DONTROUTE  | MSG_PEEK 
// Parser val::val recv :  file_descr -> bytes -> int -> int -> msg_flag list -> int
public static function recv (a0:Unix_File_descr,a1:Dynamic,a2:Int,a3:Int,a4:Array<Unix_Msg_flag>):Int;
// Parser val::val recvfrom :  file_descr -> bytes -> int -> int -> msg_flag list ->    int * sockaddr
public static function recvfrom (a0:Unix_File_descr,a1:Dynamic,a2:Int,a3:Int,a4:Array<Unix_Msg_flag>):Dynamic;
// Parser val::val send :  file_descr -> bytes -> int -> int -> msg_flag list -> int
public static function send (a0:Unix_File_descr,a1:Dynamic,a2:Int,a3:Int,a4:Array<Unix_Msg_flag>):Int;
// Parser val::val send_substring :  file_descr -> string -> int -> int -> msg_flag list -> int
public static function send_substring (a0:Unix_File_descr,a1:String,a2:Int,a3:Int,a4:Array<Unix_Msg_flag>):Int;
// Parser val::val sendto :  file_descr -> bytes -> int -> int -> msg_flag list ->    sockaddr -> int
public static function sendto (a0:Unix_File_descr,a1:Dynamic,a2:Int,a3:Int,a4:Array<Unix_Msg_flag>,a5:Unix_Sockaddr):Int;
// Parser val::val sendto_substring :  file_descr -> string -> int -> int -> msg_flag list  -> sockaddr -> int
public static function sendto_substring (a0:Unix_File_descr,a1:String,a2:Int,a3:Int,a4:Array<Unix_Msg_flag>,a5:Unix_Sockaddr):Int;
// Parser type::type socket_bool_option =    SO_DEBUG         | SO_BROADCAST     | SO_REUSEADDR     | SO_KEEPALIVE     | SO_DONTROUTE     | SO_OOBINLINE     | SO_ACCEPTCONN    | TCP_NODELAY      | IPV6_ONLY        | SO_REUSEPORT   
// Parser type::type socket_int_option =    SO_SNDBUF      | SO_RCVBUF      | SO_ERROR       | SO_TYPE        | SO_RCVLOWAT    | SO_SNDLOWAT  
// Parser type::type socket_optint_option =  SO_LINGER      
// Parser type::type socket_float_option =    SO_RCVTIMEO      | SO_SNDTIMEO    
// Parser val::val getsockopt : file_descr -> socket_bool_option -> bool
public static function getsockopt (a0:Unix_File_descr,a1:Unix_Socket_bool_option):Bool;
// Parser val::val setsockopt : file_descr -> socket_bool_option -> bool -> unit
public static function setsockopt (a0:Unix_File_descr,a1:Unix_Socket_bool_option,a2:Bool):Void;
// Parser val::val getsockopt_int : file_descr -> socket_int_option -> int
public static function getsockopt_int (a0:Unix_File_descr,a1:Unix_Socket_int_option):Int;
// Parser val::val setsockopt_int : file_descr -> socket_int_option -> int -> unit
public static function setsockopt_int (a0:Unix_File_descr,a1:Unix_Socket_int_option,a2:Int):Void;
// Parser val::val getsockopt_optint : file_descr -> socket_optint_option -> int option
public static function getsockopt_optint (a0:Unix_File_descr,a1:Unix_Socket_optint_option):Dynamic;
// Parser val::val setsockopt_optint :      file_descr -> socket_optint_option -> int option -> unit
public static function setsockopt_optint (a0:Unix_File_descr,a1:Unix_Socket_optint_option,a2:Dynamic):Void;
// Parser val::val getsockopt_float : file_descr -> socket_float_option -> float
public static function getsockopt_float (a0:Unix_File_descr,a1:Unix_Socket_float_option):Float;
// Parser val::val setsockopt_float : file_descr -> socket_float_option -> float -> unit
public static function setsockopt_float (a0:Unix_File_descr,a1:Unix_Socket_float_option,a2:Float):Void;
// Parser val::val getsockopt_error : file_descr -> error option
public static function getsockopt_error (a0:Unix_File_descr):Dynamic;
// Parser val::val open_connection : sockaddr -> in_channel * out_channel
public static function open_connection (a0:Unix_Sockaddr):Dynamic;
// Parser val::val shutdown_connection : in_channel -> unit
public static function shutdown_connection (a0:Dynamic):Void;
// Parser val::val establish_server :  (in_channel -> out_channel -> unit) -> sockaddr -> unit
public static function establish_server (a0:Dynamic,a1:Dynamic,a2:Dynamic,a3:Unix_Sockaddr):Void;
// Parser type::type host_entry =  { h_name : string;    h_aliases : string array;    h_addrtype : socket_domain;    h_addr_list : inet_addr array  }
// Parser type::type protocol_entry =  { p_name : string;    p_aliases : string array;    p_proto : int  }
// Parser type::type service_entry =  { s_name : string;    s_aliases : string array;    s_port : int;    s_proto : string  }
// Parser val::val gethostname : unit -> string
public static function gethostname (a0:Void):String;
// Parser val::val gethostbyname : string -> host_entry
public static function gethostbyname (a0:String):Unix_Host_entry;
// Parser val::val gethostbyaddr : inet_addr -> host_entry
public static function gethostbyaddr (a0:Unix_Inet_addr):Unix_Host_entry;
// Parser val::val getprotobyname : string -> protocol_entry
public static function getprotobyname (a0:String):Unix_Protocol_entry;
// Parser val::val getprotobynumber : int -> protocol_entry
public static function getprotobynumber (a0:Int):Unix_Protocol_entry;
// Parser val::val getservbyname : string -> string -> service_entry
public static function getservbyname (a0:String,a1:String):Unix_Service_entry;
// Parser val::val getservbyport : int -> string -> service_entry
public static function getservbyport (a0:Int,a1:String):Unix_Service_entry;
// Parser type::type addr_info =  { ai_family : socket_domain;              ai_socktype : socket_type;              ai_protocol : int;                      ai_addr : sockaddr;                     ai_canonname : string                 }
// Parser type::type getaddrinfo_option =    AI_FAMILY of socket_domain            | AI_SOCKTYPE of socket_type            | AI_PROTOCOL of int                    | AI_NUMERICHOST                        | AI_CANONNAME                          | AI_PASSIVE                          
// Parser val::val getaddrinfo:  string -> string -> getaddrinfo_option list -> addr_info list
public static function getaddrinfo(a0:String,a1:String,a2:Array<Unix_Getaddrinfo_option>):Array<Unix_Addr_info>;
// Parser type::type name_info =  { ni_hostname : string;                   ni_service : string;                  }
// Parser type::type getnameinfo_option =    NI_NOFQDN              | NI_NUMERICHOST         | NI_NAMEREQD            | NI_NUMERICSERV         | NI_DGRAM             
// Parser val::val getnameinfo : sockaddr -> getnameinfo_option list -> name_info
public static function getnameinfo (a0:Unix_Sockaddr,a1:Array<Unix_Getnameinfo_option>):Unix_Name_info;
// Parser type::type terminal_io =  {        mutable c_ignbrk : bool;      mutable c_brkint : bool;      mutable c_ignpar : bool;      mutable c_parmrk : bool;      mutable c_inpck : bool;       mutable c_istrip : bool;      mutable c_inlcr : bool;       mutable c_igncr : bool;       mutable c_icrnl : bool;       mutable c_ixon : bool;        mutable c_ixoff : bool;           mutable c_opost : bool;           mutable c_obaud : int;        mutable c_ibaud : int;        mutable c_csize : int;        mutable c_cstopb : int;       mutable c_cread : bool;       mutable c_parenb : bool;      mutable c_parodd : bool;      mutable c_hupcl : bool;       mutable c_clocal : bool;          mutable c_isig : bool;        mutable c_icanon : bool;      mutable c_noflsh : bool;      mutable c_echo : bool;        mutable c_echoe : bool;       mutable c_echok : bool;       mutable c_echonl : bool;          mutable c_vintr : char;       mutable c_vquit : char;       mutable c_verase : char;      mutable c_vkill : char;       mutable c_veof : char;        mutable c_veol : char;        mutable c_vmin : int;         mutable c_vtime : int;        mutable c_vstart : char;      mutable c_vstop : char;     }
// Parser val::val tcgetattr : file_descr -> terminal_io
public static function tcgetattr (a0:Unix_File_descr):Unix_Terminal_io;
// Parser type::type setattr_when =    TCSANOW  | TCSADRAIN  | TCSAFLUSH
// Parser val::val tcsetattr : file_descr -> setattr_when -> terminal_io -> unit
public static function tcsetattr (a0:Unix_File_descr,a1:Unix_Setattr_when,a2:Unix_Terminal_io):Void;
// Parser val::val tcsendbreak : file_descr -> int -> unit
public static function tcsendbreak (a0:Unix_File_descr,a1:Int):Void;
// Parser val::val tcdrain : file_descr -> unit
public static function tcdrain (a0:Unix_File_descr):Void;
// Parser type::type flush_queue =    TCIFLUSH  | TCOFLUSH  | TCIOFLUSH
// Parser val::val tcflush : file_descr -> flush_queue -> unit
public static function tcflush (a0:Unix_File_descr,a1:Unix_Flush_queue):Void;
// Parser type::type flow_action =    TCOOFF  | TCOON  | TCIOFF  | TCION
// Parser val::val tcflow : file_descr -> flow_action -> unit
public static function tcflow (a0:Unix_File_descr,a1:Unix_Flow_action):Void;
}