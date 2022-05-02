type regexp
val regexp : string -> regexp
val regexp_case_fold : string -> regexp
val quote : string -> string
val regexp_string : string -> regexp
val regexp_string_case_fold : string -> regexp
val string_match : regexp -> string -> int -> bool
val search_forward : regexp -> string -> int -> int
val search_backward : regexp -> string -> int -> int
val string_partial_match : regexp -> string -> int -> bool
val matched_string : string -> string
val match_beginning : unit -> int
val match_end : unit -> int
val matched_group : int -> string -> string
val group_beginning : int -> int
val group_end : int -> int
val global_replace : regexp -> string -> string -> string
val replace_first : regexp -> string -> string -> string
val global_substitute : regexp -> (string -> string) -> string -> string
val substitute_first : regexp -> (string -> string) -> string -> string
val replace_matched : string -> string -> string
val split : regexp -> string -> string list
val bounded_split : regexp -> string -> int -> string list
val split_delim : regexp -> string -> string list
val bounded_split_delim : regexp -> string -> int -> string list
type split_result =
    Text of string
  | Delim of string
val full_split : regexp -> string -> split_result list
val bounded_full_split : regexp -> string -> int -> split_result list
val string_before : string -> int -> string
val string_after : string -> int -> string
val first_chars : string -> int -> string
val last_chars : string -> int -> string