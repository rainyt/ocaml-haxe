package ocaml;
enum Flow_action {
TCOOFF;
TCOON;
TCIOFF;
TCION;
}
enum Flush_queue {
TCIFLUSH;
TCOFLUSH;
TCIOFLUSH;
}
enum Setattr_when {
TCSANOW;
TCSADRAIN;
TCSAFLUSH;
}
enum Getnameinfo_option {
NI_NOFQDN;
NI_NUMERICHOST;
NI_NAMEREQD;
NI_NUMERICSERV;
NI_DGRAM;
}
extern class Terminal_io{
public var c_ignbrk:Dynamic;
public var c_brkint:Dynamic;
public var c_ignpar:Dynamic;
public var c_parmrk:Dynamic;
public var c_inpck:Dynamic;
public var c_istrip:Dynamic;
public var c_inlcr:Dynamic;
public var c_igncr:Dynamic;
public var c_icrnl:Dynamic;
public var c_ixon:Dynamic;
public var c_ixoff:Dynamic;
public var c_opost:Dynamic;
public var c_obaud:Dynamic;
public var c_ibaud:Dynamic;
public var c_csize:Dynamic;
public var c_cstopb:Dynamic;
public var c_cread:Dynamic;
public var c_parenb:Dynamic;
public var c_parodd:Dynamic;
public var c_hupcl:Dynamic;
public var c_clocal:Dynamic;
public var c_isig:Dynamic;
public var c_icanon:Dynamic;
public var c_noflsh:Dynamic;
public var c_echo:Dynamic;
public var c_echoe:Dynamic;
public var c_echok:Dynamic;
public var c_echonl:Dynamic;
public var c_vintr:Dynamic;
public var c_vquit:Dynamic;
public var c_verase:Dynamic;
public var c_vkill:Dynamic;
public var c_veof:Dynamic;
public var c_veol:Dynamic;
public var c_vmin:Dynamic;
public var c_vtime:Dynamic;
public var c_vstart:Dynamic;
public var c_vstop:Dynamic;
}
enum Getaddrinfo_option {
AI_FAMILY;
AI_SOCKTYPE;
AI_PROTOCOL;
}
extern class Name_info{
public var ni_hostname:Dynamic;
public var ni_service:Dynamic;
}
enum Socket_float_option {
SO_RCVTIMEO;
SO_SNDTIMEO;
}
extern class Host_entry{
public var h_name:Dynamic;
public var h_aliases:Dynamic;
public var h_addrtype:Socket_domain;
public var h_addr_list:Inet_addr;
}
extern class Protocol_entry{
public var p_name:Dynamic;
public var p_aliases:Dynamic;
public var p_proto:Dynamic;
}
extern class Service_entry{
public var s_name:Dynamic;
public var s_aliases:Dynamic;
public var s_port:Dynamic;
public var s_proto:Dynamic;
}
extern class Addr_info{
public var ai_family:Socket_domain;
public var ai_socktype:Socket_type;
public var ai_protocol:Dynamic;
public var ai_addr:Sockaddr;
public var ai_canonname:Dynamic;
}
enum Socket_optint_option {
SO_LINGER;
}
enum Socket_int_option {
SO_SNDBUF;
SO_RCVBUF;
SO_ERROR;
SO_TYPE;
SO_RCVLOWAT;
SO_SNDLOWAT;
}
enum Socket_bool_option {
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
enum Msg_flag {
MSG_OOB;
MSG_DONTROUTE;
MSG_PEEK;
}
enum Shutdown_command {
SHUTDOWN_RECEIVE;
SHUTDOWN_SEND;
SHUTDOWN_ALL;
}
enum Sockaddr {
ADDR_UNIX;
ADDR_INET;
}
enum Socket_type {
SOCK_STREAM;
SOCK_DGRAM;
SOCK_RAW;
SOCK_SEQPACKET;
}
enum Socket_domain {
PF_UNIX;
PF_INET;
PF_INET6;
}
extern class Inet_addr{}
enum Interval_timer {
ITIMER_REAL;
ITIMER_VIRTUAL;
ITIMER_PROF;
}
extern class Interval_timer_status{
public var it_interval:Dynamic;
public var it_value:Dynamic;
}
extern class Passwd_entry{
public var pw_name:Dynamic;
public var pw_passwd:Dynamic;
public var pw_uid:Dynamic;
public var pw_gid:Dynamic;
public var pw_gecos:Dynamic;
public var pw_dir:Dynamic;
public var pw_shell:Dynamic;
}
extern class Group_entry{
public var gr_name:Dynamic;
public var gr_passwd:Dynamic;
public var gr_gid:Dynamic;
public var gr_mem:Dynamic;
}
enum Sigprocmask_command {
SIG_SETMASK;
SIG_BLOCK;
SIG_UNBLOCK;
}
extern class Process_times{
public var tms_utime:Dynamic;
public var tms_stime:Dynamic;
public var tms_cutime:Dynamic;
public var tms_cstime:Dynamic;
}
extern class Tm{
public var tm_sec:Dynamic;
public var tm_min:Dynamic;
public var tm_hour:Dynamic;
public var tm_mday:Dynamic;
public var tm_mon:Dynamic;
public var tm_year:Dynamic;
public var tm_wday:Dynamic;
public var tm_yday:Dynamic;
public var tm_isdst:Dynamic;
}
enum Lock_command {
F_ULOCK;
F_LOCK;
F_TLOCK;
F_TEST;
F_RLOCK;
F_TRLOCK;
}
extern class Dir_handle{}
enum Access_permission {
R_OK;
W_OK;
X_OK;
F_OK;
}
enum File_kind {
S_REG;
S_DIR;
S_CHR;
S_BLK;
S_LNK;
S_FIFO;
S_SOCK;
}
extern class Stats{
public var st_dev:Dynamic;
public var st_ino:Dynamic;
public var st_kind:File_kind;
public var st_perm:File_perm;
public var st_nlink:Dynamic;
public var st_uid:Dynamic;
public var st_gid:Dynamic;
public var st_rdev:Dynamic;
public var st_size:Dynamic;
public var st_atime:Dynamic;
public var st_mtime:Dynamic;
public var st_ctime:Dynamic;
}
enum Seek_command {
SEEK_SET;
SEEK_CUR;
SEEK_END;
}
enum File_perm {

}
enum Open_flag {
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
extern class File_descr{}
enum Wait_flag {
WNOHANG;
WUNTRACED;
}
enum Process_status {
WEXITED;
WSIGNALED;
WSTOPPED;
}
enum Error {
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
public static function error_message (a0:Error):Dynamic;
// Parser val::val handle_unix_error : ('a -> 'b) -> 'a -> 'b
public static function handle_unix_error (a0:Dynamic,a1:Dynamic,a2:Dynamic):Dynamic;
// Parser val::val environment : unit -> string array
public static function environment (a0:Void):OCamlArray<String>;
// Parser val::val unsafe_environment : unit -> string array
public static function unsafe_environment (a0:Void):OCamlArray<String>;
// Parser val::val getenv : string -> string
public static function getenv (a0:Dynamic):Dynamic;
// Parser val::val unsafe_getenv : string -> string
public static function unsafe_getenv (a0:Dynamic):Dynamic;
// Parser val::val putenv : string -> string -> unit
public static function putenv (a0:Dynamic,a1:Dynamic):Void;
// Parser type::type process_status =    WEXITED of int          | WSIGNALED of int          | WSTOPPED of int        
// Parser type::type wait_flag =    WNOHANG   | WUNTRACED 
// Parser val::val execv : string -> string array -> 'a
public static function execv (a0:Dynamic,a1:OCamlArray<String>):Dynamic;
// Parser val::val execve : string -> string array -> string array -> 'a
public static function execve (a0:Dynamic,a1:OCamlArray<String>,a2:OCamlArray<String>):Dynamic;
// Parser val::val execvp : string -> string array -> 'a
public static function execvp (a0:Dynamic,a1:OCamlArray<String>):Dynamic;
// Parser val::val execvpe : string -> string array -> string array -> 'a
public static function execvpe (a0:Dynamic,a1:OCamlArray<String>,a2:OCamlArray<String>):Dynamic;
// Parser val::val fork : unit -> int
public static function fork (a0:Void):Dynamic;
// Parser val::val wait : unit -> int * process_status
public static function wait (a0:Void):Dynamic;
// Parser val::val waitpid : wait_flag list -> int -> int * process_status
public static function waitpid (a0:Array<Wait_flag>,a1:Dynamic):Dynamic;
// Parser val::val system : string -> process_status
public static function system (a0:Dynamic):Process_status;
// Parser val::val _exit : int -> 'a
public static function _exit (a0:Dynamic):Dynamic;
// Parser val::val getpid : unit -> int
public static function getpid (a0:Void):Dynamic;
// Parser val::val getppid : unit -> int
public static function getppid (a0:Void):Dynamic;
// Parser val::val nice : int -> int
public static function nice (a0:Dynamic):Dynamic;
// Parser type::type file_descr
// Parser val::val stdin : file_descr
public static var stdin :File_descr;
// Parser val::val stdout : file_descr
public static var stdout :File_descr;
// Parser val::val stderr : file_descr
public static var stderr :File_descr;
// Parser type::type open_flag =    O_RDONLY                      | O_WRONLY                      | O_RDWR                        | O_NONBLOCK                    | O_APPEND                      | O_CREAT                       | O_TRUNC                       | O_EXCL                        | O_NOCTTY                      | O_DSYNC                       | O_SYNC                        | O_RSYNC                       | O_SHARE_DELETE                | O_CLOEXEC                     | O_KEEPEXEC                  
// Parser type::type file_perm = int
// Parser val::val openfile : string -> open_flag list -> file_perm -> file_descr
public static function openfile (a0:Dynamic,a1:Array<Open_flag>,a2:File_perm):File_descr;
// Parser val::val close : file_descr -> unit
public static function close (a0:File_descr):Void;
// Parser val::val fsync : file_descr -> unit
public static function fsync (a0:File_descr):Void;
// Parser val::val read : file_descr -> bytes -> int -> int -> int
public static function read (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
// Parser val::val write : file_descr -> bytes -> int -> int -> int
public static function write (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
// Parser val::val single_write : file_descr -> bytes -> int -> int -> int
public static function single_write (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
// Parser val::val write_substring : file_descr -> string -> int -> int -> int
public static function write_substring (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
// Parser val::val single_write_substring :  file_descr -> string -> int -> int -> int
public static function single_write_substring (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic):Dynamic;
// Parser val::val in_channel_of_descr : file_descr -> in_channel
public static function in_channel_of_descr (a0:File_descr):Dynamic;
// Parser val::val out_channel_of_descr : file_descr -> out_channel
public static function out_channel_of_descr (a0:File_descr):Dynamic;
// Parser val::val descr_of_in_channel : in_channel -> file_descr
public static function descr_of_in_channel (a0:Dynamic):File_descr;
// Parser val::val descr_of_out_channel : out_channel -> file_descr
public static function descr_of_out_channel (a0:Dynamic):File_descr;
// Parser type::type seek_command =    SEEK_SET   | SEEK_CUR   | SEEK_END 
// Parser val::val lseek : file_descr -> int -> seek_command -> int
public static function lseek (a0:File_descr,a1:Dynamic,a2:Seek_command):Dynamic;
// Parser val::val truncate : string -> int -> unit
public static function truncate (a0:Dynamic,a1:Dynamic):Void;
// Parser val::val ftruncate : file_descr -> int -> unit
public static function ftruncate (a0:File_descr,a1:Dynamic):Void;
// Parser type::type file_kind =    S_REG                         | S_DIR                         | S_CHR                         | S_BLK                         | S_LNK                         | S_FIFO                        | S_SOCK                      
// Parser type::type stats =  { st_dev : int;                   st_ino : int;                   st_kind : file_kind;            st_perm : file_perm;            st_nlink : int;                 st_uid : int;                   st_gid : int;                   st_rdev : int;                  st_size : int;                  st_atime : float;               st_mtime : float;               st_ctime : float;             }
// Parser val::val stat : string -> stats
public static function stat (a0:Dynamic):Stats;
// Parser val::val lstat : string -> stats
public static function lstat (a0:Dynamic):Stats;
// Parser val::val fstat : file_descr -> stats
public static function fstat (a0:File_descr):Stats;
// Parser val::val isatty : file_descr -> bool
public static function isatty (a0:File_descr):Dynamic;
// Parser module::module LargeFile :    type stats =      { st_dev : int;                       st_ino : int;                       st_kind : file_kind;                st_perm : file_perm;                st_nlink : int;                     st_uid : int;                       st_gid : int;                       st_rdev : int;                      st_size : int64;                    st_atime : float;                   st_mtime : float;                   st_ctime : float;                 }    val stat : string -> stats    val lstat : string -> stats    val fstat : file_descr -> stats  end
// Parser val::val map_file :  file_descr ->  ?pos :int64 ->  ('a, 'b) Stdlib.Bigarray.kind ->  'c Stdlib.Bigarray.layout -> bool -> int array ->  ('a, 'b, 'c) Stdlib.Bigarray.Genarray.t
public static function map_file (a0:File_descr):Dynamic;
// Parser val::val unlink : string -> unit
public static function unlink (a0:Dynamic):Void;
// Parser val::val rename : string -> string -> unit
public static function rename (a0:Dynamic,a1:Dynamic):Void;
// Parser val::val link : ?follow  :bool ->           string -> string -> unit
public static var link :Dynamic;
// Parser type::type access_permission =    R_OK                          | W_OK                          | X_OK                          | F_OK                        
// Parser val::val chmod : string -> file_perm -> unit
public static function chmod (a0:Dynamic,a1:File_perm):Void;
// Parser val::val fchmod : file_descr -> file_perm -> unit
public static function fchmod (a0:File_descr,a1:File_perm):Void;
// Parser val::val chown : string -> int -> int -> unit
public static function chown (a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
// Parser val::val fchown : file_descr -> int -> int -> unit
public static function fchown (a0:File_descr,a1:Dynamic,a2:Dynamic):Void;
// Parser val::val umask : int -> int
public static function umask (a0:Dynamic):Dynamic;
// Parser val::val access : string -> access_permission list -> unit
public static function access (a0:Dynamic,a1:Array<Access_permission>):Void;
// Parser val::val dup : ?cloexec:  bool ->          file_descr -> file_descr
public static var dup :Dynamic;
// Parser val::val dup2 : ?cloexec:  bool ->           file_descr -> file_descr -> unit
public static var dup2 :Dynamic;
// Parser val::val set_nonblock : file_descr -> unit
public static function set_nonblock (a0:File_descr):Void;
// Parser val::val clear_nonblock : file_descr -> unit
public static function clear_nonblock (a0:File_descr):Void;
// Parser val::val set_close_on_exec : file_descr -> unit
public static function set_close_on_exec (a0:File_descr):Void;
// Parser val::val clear_close_on_exec : file_descr -> unit
public static function clear_close_on_exec (a0:File_descr):Void;
// Parser val::val mkdir : string -> file_perm -> unit
public static function mkdir (a0:Dynamic,a1:File_perm):Void;
// Parser val::val rmdir : string -> unit
public static function rmdir (a0:Dynamic):Void;
// Parser val::val chdir : string -> unit
public static function chdir (a0:Dynamic):Void;
// Parser val::val getcwd : unit -> string
public static function getcwd (a0:Void):Dynamic;
// Parser val::val chroot : string -> unit
public static function chroot (a0:Dynamic):Void;
// Parser type::type dir_handle
// Parser val::val opendir : string -> dir_handle
public static function opendir (a0:Dynamic):Dir_handle;
// Parser val::val readdir : dir_handle -> string
public static function readdir (a0:Dir_handle):Dynamic;
// Parser val::val rewinddir : dir_handle -> unit
public static function rewinddir (a0:Dir_handle):Void;
// Parser val::val closedir : dir_handle -> unit
public static function closedir (a0:Dir_handle):Void;
// Parser val::val pipe : ?cloexec:  bool ->           unit -> file_descr * file_descr
public static var pipe :Dynamic;
// Parser val::val mkfifo : string -> file_perm -> unit
public static function mkfifo (a0:Dynamic,a1:File_perm):Void;
// Parser val::val create_process :  string -> string array -> file_descr -> file_descr ->    file_descr -> int
public static function create_process (a0:Dynamic,a1:OCamlArray<String>,a2:File_descr,a3:File_descr,a4:File_descr):Dynamic;
// Parser val::val create_process_env :  string -> string array -> string array -> file_descr ->    file_descr -> file_descr -> int
public static function create_process_env (a0:Dynamic,a1:OCamlArray<String>,a2:OCamlArray<String>,a3:File_descr,a4:File_descr,a5:File_descr):Dynamic;
// Parser val::val open_process_in : string -> in_channel
public static function open_process_in (a0:Dynamic):Dynamic;
// Parser val::val open_process_out : string -> out_channel
public static function open_process_out (a0:Dynamic):Dynamic;
// Parser val::val open_process : string -> in_channel * out_channel
public static function open_process (a0:Dynamic):Dynamic;
// Parser val::val open_process_full :  string -> string array -> in_channel * out_channel * in_channel
public static function open_process_full (a0:Dynamic,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args_in : string -> string array -> in_channel
public static function open_process_args_in (a0:Dynamic,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args_out : string -> string array -> out_channel
public static function open_process_args_out (a0:Dynamic,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args : string -> string array -> in_channel * out_channel
public static function open_process_args (a0:Dynamic,a1:OCamlArray<String>):Dynamic;
// Parser val::val open_process_args_full :  string -> string array -> string array ->    in_channel * out_channel * in_channel
public static function open_process_args_full (a0:Dynamic,a1:OCamlArray<String>,a2:OCamlArray<String>):Dynamic;
// Parser val::val process_in_pid : in_channel -> int
public static function process_in_pid (a0:Dynamic):Dynamic;
// Parser val::val process_out_pid : out_channel -> int
public static function process_out_pid (a0:Dynamic):Dynamic;
// Parser val::val process_pid : in_channel * out_channel -> int
public static function process_pid (a0:Dynamic):Dynamic;
// Parser val::val process_full_pid : in_channel * out_channel * in_channel -> int
public static function process_full_pid (a0:Dynamic):Dynamic;
// Parser val::val close_process_in : in_channel -> process_status
public static function close_process_in (a0:Dynamic):Process_status;
// Parser val::val close_process_out : out_channel -> process_status
public static function close_process_out (a0:Dynamic):Process_status;
// Parser val::val close_process : in_channel * out_channel -> process_status
public static function close_process (a0:Dynamic):Process_status;
// Parser val::val close_process_full :  in_channel * out_channel * in_channel -> process_status
public static function close_process_full (a0:Dynamic):Process_status;
// Parser val::val symlink : ?to_dir:  bool ->              string -> string -> unit
public static var symlink :Dynamic;
// Parser val::val has_symlink : unit -> bool
public static function has_symlink (a0:Void):Dynamic;
// Parser val::val readlink : string -> string
public static function readlink (a0:Dynamic):Dynamic;
// Parser val::val select :  file_descr list -> file_descr list -> file_descr list ->    float -> file_descr list * file_descr list * file_descr list
public static function select (a0:Array<File_descr>,a1:Array<File_descr>,a2:Array<File_descr>,a3:Dynamic):Dynamic;
// Parser type::type lock_command =    F_ULOCK         | F_LOCK          | F_TLOCK         | F_TEST          | F_RLOCK         | F_TRLOCK      
// Parser val::val lockf : file_descr -> lock_command -> int -> unit
public static function lockf (a0:File_descr,a1:Lock_command,a2:Dynamic):Void;
// Parser val::val kill : int -> int -> unit
public static function kill (a0:Dynamic,a1:Dynamic):Void;
// Parser type::type sigprocmask_command =    SIG_SETMASK  | SIG_BLOCK  | SIG_UNBLOCK
// Parser val::val sigprocmask : sigprocmask_command -> int list -> int list
public static function sigprocmask (a0:Sigprocmask_command,a1:Array<Int>):Array<Int>;
// Parser val::val sigpending : unit -> int list
public static function sigpending (a0:Void):Array<Int>;
// Parser val::val sigsuspend : int list -> unit
public static function sigsuspend (a0:Array<Int>):Void;
// Parser val::val pause : unit -> unit
public static function pause (a0:Void):Void;
// Parser type::type process_times =  { tms_utime : float;      tms_stime : float;      tms_cutime : float;     tms_cstime : float;   }
// Parser type::type tm =  { tm_sec : int;                   tm_min : int;                   tm_hour : int;                  tm_mday : int;                  tm_mon : int;                   tm_year : int;                  tm_wday : int;                  tm_yday : int;                  tm_isdst : bool;              }
// Parser val::val time : unit -> float
public static function time (a0:Void):Dynamic;
// Parser val::val gettimeofday : unit -> float
public static function gettimeofday (a0:Void):Dynamic;
// Parser val::val gmtime : float -> tm
public static function gmtime (a0:Dynamic):Tm;
// Parser val::val localtime : float -> tm
public static function localtime (a0:Dynamic):Tm;
// Parser val::val mktime : tm -> float * tm
public static function mktime (a0:Tm):Dynamic;
// Parser val::val alarm : int -> int
public static function alarm (a0:Dynamic):Dynamic;
// Parser val::val sleep : int -> unit
public static function sleep (a0:Dynamic):Void;
// Parser val::val sleepf : float -> unit
public static function sleepf (a0:Dynamic):Void;
// Parser val::val times : unit -> process_times
public static function times (a0:Void):Process_times;
// Parser val::val utimes : string -> float -> float -> unit
public static function utimes (a0:Dynamic,a1:Dynamic,a2:Dynamic):Void;
// Parser type::type interval_timer =    ITIMER_REAL        | ITIMER_VIRTUAL        | ITIMER_PROF      
// Parser type::type interval_timer_status =  { it_interval : float;             it_value : float;              }
// Parser val::val getitimer : interval_timer -> interval_timer_status
public static function getitimer (a0:Interval_timer):Interval_timer_status;
// Parser val::val setitimer :  interval_timer -> interval_timer_status -> interval_timer_status
public static function setitimer (a0:Interval_timer,a1:Interval_timer_status):Interval_timer_status;
// Parser val::val getuid : unit -> int
public static function getuid (a0:Void):Dynamic;
// Parser val::val geteuid : unit -> int
public static function geteuid (a0:Void):Dynamic;
// Parser val::val setuid : int -> unit
public static function setuid (a0:Dynamic):Void;
// Parser val::val getgid : unit -> int
public static function getgid (a0:Void):Dynamic;
// Parser val::val getegid : unit -> int
public static function getegid (a0:Void):Dynamic;
// Parser val::val setgid : int -> unit
public static function setgid (a0:Dynamic):Void;
// Parser val::val getgroups : unit -> int array
public static function getgroups (a0:Void):OCamlArray<Int>;
// Parser val::val setgroups : int array -> unit
public static function setgroups (a0:OCamlArray<Int>):Void;
// Parser val::val initgroups : string -> int -> unit
public static function initgroups (a0:Dynamic,a1:Dynamic):Void;
// Parser type::type passwd_entry =  { pw_name : string;    pw_passwd : string;    pw_uid : int;    pw_gid : int;    pw_gecos : string;    pw_dir : string;    pw_shell : string  }
// Parser type::type group_entry =  { gr_name : string;    gr_passwd : string;    gr_gid : int;    gr_mem : string array  }
// Parser val::val getlogin : unit -> string
public static function getlogin (a0:Void):Dynamic;
// Parser val::val getpwnam : string -> passwd_entry
public static function getpwnam (a0:Dynamic):Passwd_entry;
// Parser val::val getgrnam : string -> group_entry
public static function getgrnam (a0:Dynamic):Group_entry;
// Parser val::val getpwuid : int -> passwd_entry
public static function getpwuid (a0:Dynamic):Passwd_entry;
// Parser val::val getgrgid : int -> group_entry
public static function getgrgid (a0:Dynamic):Group_entry;
// Parser type::type inet_addr
// Parser val::val inet_addr_of_string : string -> inet_addr
public static function inet_addr_of_string (a0:Dynamic):Inet_addr;
// Parser val::val string_of_inet_addr : inet_addr -> string
public static function string_of_inet_addr (a0:Inet_addr):Dynamic;
// Parser val::val inet_addr_any : inet_addr
public static var inet_addr_any :Inet_addr;
// Parser val::val inet_addr_loopback : inet_addr
public static var inet_addr_loopback :Inet_addr;
// Parser val::val inet6_addr_any : inet_addr
public static var inet6_addr_any :Inet_addr;
// Parser val::val inet6_addr_loopback : inet_addr
public static var inet6_addr_loopback :Inet_addr;
// Parser val::val is_inet6_addr : inet_addr -> bool
public static function is_inet6_addr (a0:Inet_addr):Dynamic;
// Parser type::type socket_domain =    PF_UNIX                       | PF_INET                       | PF_INET6                    
// Parser type::type socket_type =    SOCK_STREAM                   | SOCK_DGRAM                    | SOCK_RAW                      | SOCK_SEQPACKET              
// Parser type::type sockaddr =    ADDR_UNIX of string  | ADDR_INET of inet_addr * int 
// Parser val::val socket :  ?cloexec:  bool ->    socket_domain -> socket_type -> int -> file_descr
public static var socket :Dynamic;
// Parser val::val domain_of_sockaddr: sockaddr -> socket_domain
public static function domain_of_sockaddr(a0:Sockaddr):Socket_domain;
// Parser val::val socketpair :  ?cloexec:  bool ->    socket_domain -> socket_type -> int ->    file_descr * file_descr
public static var socketpair :Dynamic;
// Parser val::val accept : ?cloexec:  bool ->             file_descr -> file_descr * sockaddr
public static var accept :Dynamic;
// Parser val::val bind : file_descr -> sockaddr -> unit
public static function bind (a0:File_descr,a1:Sockaddr):Void;
// Parser val::val connect : file_descr -> sockaddr -> unit
public static function connect (a0:File_descr,a1:Sockaddr):Void;
// Parser val::val listen : file_descr -> int -> unit
public static function listen (a0:File_descr,a1:Dynamic):Void;
// Parser type::type shutdown_command =    SHUTDOWN_RECEIVE              | SHUTDOWN_SEND                 | SHUTDOWN_ALL                
// Parser val::val shutdown : file_descr -> shutdown_command -> unit
public static function shutdown (a0:File_descr,a1:Shutdown_command):Void;
// Parser val::val getsockname : file_descr -> sockaddr
public static function getsockname (a0:File_descr):Sockaddr;
// Parser val::val getpeername : file_descr -> sockaddr
public static function getpeername (a0:File_descr):Sockaddr;
// Parser type::type msg_flag =    MSG_OOB  | MSG_DONTROUTE  | MSG_PEEK 
// Parser val::val recv :  file_descr -> bytes -> int -> int -> msg_flag list -> int
public static function recv (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic,a4:Array<Msg_flag>):Dynamic;
// Parser val::val recvfrom :  file_descr -> bytes -> int -> int -> msg_flag list ->    int * sockaddr
public static function recvfrom (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic,a4:Array<Msg_flag>):Dynamic;
// Parser val::val send :  file_descr -> bytes -> int -> int -> msg_flag list -> int
public static function send (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic,a4:Array<Msg_flag>):Dynamic;
// Parser val::val send_substring :  file_descr -> string -> int -> int -> msg_flag list -> int
public static function send_substring (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic,a4:Array<Msg_flag>):Dynamic;
// Parser val::val sendto :  file_descr -> bytes -> int -> int -> msg_flag list ->    sockaddr -> int
public static function sendto (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic,a4:Array<Msg_flag>,a5:Sockaddr):Dynamic;
// Parser val::val sendto_substring :  file_descr -> string -> int -> int -> msg_flag list  -> sockaddr -> int
public static function sendto_substring (a0:File_descr,a1:Dynamic,a2:Dynamic,a3:Dynamic,a4:Array<Msg_flag>,a5:Sockaddr):Dynamic;
// Parser type::type socket_bool_option =    SO_DEBUG         | SO_BROADCAST     | SO_REUSEADDR     | SO_KEEPALIVE     | SO_DONTROUTE     | SO_OOBINLINE     | SO_ACCEPTCONN    | TCP_NODELAY      | IPV6_ONLY        | SO_REUSEPORT   
// Parser type::type socket_int_option =    SO_SNDBUF      | SO_RCVBUF      | SO_ERROR       | SO_TYPE        | SO_RCVLOWAT    | SO_SNDLOWAT  
// Parser type::type socket_optint_option =  SO_LINGER      
// Parser type::type socket_float_option =    SO_RCVTIMEO      | SO_SNDTIMEO    
// Parser val::val getsockopt : file_descr -> socket_bool_option -> bool
public static function getsockopt (a0:File_descr,a1:Socket_bool_option):Dynamic;
// Parser val::val setsockopt : file_descr -> socket_bool_option -> bool -> unit
public static function setsockopt (a0:File_descr,a1:Socket_bool_option,a2:Dynamic):Void;
// Parser val::val getsockopt_int : file_descr -> socket_int_option -> int
public static function getsockopt_int (a0:File_descr,a1:Socket_int_option):Dynamic;
// Parser val::val setsockopt_int : file_descr -> socket_int_option -> int -> unit
public static function setsockopt_int (a0:File_descr,a1:Socket_int_option,a2:Dynamic):Void;
// Parser val::val getsockopt_optint : file_descr -> socket_optint_option -> int option
public static function getsockopt_optint (a0:File_descr,a1:Socket_optint_option):Dynamic;
// Parser val::val setsockopt_optint :      file_descr -> socket_optint_option -> int option -> unit
public static function setsockopt_optint (a0:File_descr,a1:Socket_optint_option,a2:Dynamic):Void;
// Parser val::val getsockopt_float : file_descr -> socket_float_option -> float
public static function getsockopt_float (a0:File_descr,a1:Socket_float_option):Dynamic;
// Parser val::val setsockopt_float : file_descr -> socket_float_option -> float -> unit
public static function setsockopt_float (a0:File_descr,a1:Socket_float_option,a2:Dynamic):Void;
// Parser val::val getsockopt_error : file_descr -> error option
public static function getsockopt_error (a0:File_descr):Dynamic;
// Parser val::val open_connection : sockaddr -> in_channel * out_channel
public static function open_connection (a0:Sockaddr):Dynamic;
// Parser val::val shutdown_connection : in_channel -> unit
public static function shutdown_connection (a0:Dynamic):Void;
// Parser val::val establish_server :  (in_channel -> out_channel -> unit) -> sockaddr -> unit
public static function establish_server (a0:Dynamic,a1:Dynamic,a2:Dynamic,a3:Sockaddr):Void;
// Parser type::type host_entry =  { h_name : string;    h_aliases : string array;    h_addrtype : socket_domain;    h_addr_list : inet_addr array  }
// Parser type::type protocol_entry =  { p_name : string;    p_aliases : string array;    p_proto : int  }
// Parser type::type service_entry =  { s_name : string;    s_aliases : string array;    s_port : int;    s_proto : string  }
// Parser val::val gethostname : unit -> string
public static function gethostname (a0:Void):Dynamic;
// Parser val::val gethostbyname : string -> host_entry
public static function gethostbyname (a0:Dynamic):Host_entry;
// Parser val::val gethostbyaddr : inet_addr -> host_entry
public static function gethostbyaddr (a0:Inet_addr):Host_entry;
// Parser val::val getprotobyname : string -> protocol_entry
public static function getprotobyname (a0:Dynamic):Protocol_entry;
// Parser val::val getprotobynumber : int -> protocol_entry
public static function getprotobynumber (a0:Dynamic):Protocol_entry;
// Parser val::val getservbyname : string -> string -> service_entry
public static function getservbyname (a0:Dynamic,a1:Dynamic):Service_entry;
// Parser val::val getservbyport : int -> string -> service_entry
public static function getservbyport (a0:Dynamic,a1:Dynamic):Service_entry;
// Parser type::type addr_info =  { ai_family : socket_domain;              ai_socktype : socket_type;              ai_protocol : int;                      ai_addr : sockaddr;                     ai_canonname : string                 }
// Parser type::type getaddrinfo_option =    AI_FAMILY of socket_domain            | AI_SOCKTYPE of socket_type            | AI_PROTOCOL of int                    | AI_NUMERICHOST                        | AI_CANONNAME                          | AI_PASSIVE                          
// Parser val::val getaddrinfo:  string -> string -> getaddrinfo_option list -> addr_info list
public static function getaddrinfo(a0:Dynamic,a1:Dynamic,a2:Array<Getaddrinfo_option>):Array<Addr_info>;
// Parser type::type name_info =  { ni_hostname : string;                   ni_service : string;                  }
// Parser type::type getnameinfo_option =    NI_NOFQDN              | NI_NUMERICHOST         | NI_NAMEREQD            | NI_NUMERICSERV         | NI_DGRAM             
// Parser val::val getnameinfo : sockaddr -> getnameinfo_option list -> name_info
public static function getnameinfo (a0:Sockaddr,a1:Array<Getnameinfo_option>):Name_info;
// Parser type::type terminal_io =  {        mutable c_ignbrk : bool;      mutable c_brkint : bool;      mutable c_ignpar : bool;      mutable c_parmrk : bool;      mutable c_inpck : bool;       mutable c_istrip : bool;      mutable c_inlcr : bool;       mutable c_igncr : bool;       mutable c_icrnl : bool;       mutable c_ixon : bool;        mutable c_ixoff : bool;           mutable c_opost : bool;           mutable c_obaud : int;        mutable c_ibaud : int;        mutable c_csize : int;        mutable c_cstopb : int;       mutable c_cread : bool;       mutable c_parenb : bool;      mutable c_parodd : bool;      mutable c_hupcl : bool;       mutable c_clocal : bool;          mutable c_isig : bool;        mutable c_icanon : bool;      mutable c_noflsh : bool;      mutable c_echo : bool;        mutable c_echoe : bool;       mutable c_echok : bool;       mutable c_echonl : bool;          mutable c_vintr : char;       mutable c_vquit : char;       mutable c_verase : char;      mutable c_vkill : char;       mutable c_veof : char;        mutable c_veol : char;        mutable c_vmin : int;         mutable c_vtime : int;        mutable c_vstart : char;      mutable c_vstop : char;     }
// Parser val::val tcgetattr : file_descr -> terminal_io
public static function tcgetattr (a0:File_descr):Terminal_io;
// Parser type::type setattr_when =    TCSANOW  | TCSADRAIN  | TCSAFLUSH
// Parser val::val tcsetattr : file_descr -> setattr_when -> terminal_io -> unit
public static function tcsetattr (a0:File_descr,a1:Setattr_when,a2:Terminal_io):Void;
// Parser val::val tcsendbreak : file_descr -> int -> unit
public static function tcsendbreak (a0:File_descr,a1:Dynamic):Void;
// Parser val::val tcdrain : file_descr -> unit
public static function tcdrain (a0:File_descr):Void;
// Parser type::type flush_queue =    TCIFLUSH  | TCOFLUSH  | TCIOFLUSH
// Parser val::val tcflush : file_descr -> flush_queue -> unit
public static function tcflush (a0:File_descr,a1:Flush_queue):Void;
// Parser type::type flow_action =    TCOOFF  | TCOON  | TCIOFF  | TCION
// Parser val::val tcflow : file_descr -> flow_action -> unit
public static function tcflow (a0:File_descr,a1:Flow_action):Void;
}