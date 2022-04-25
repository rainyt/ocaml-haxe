val kfprintf :
  (out_channel -> 'a) ->
  out_channel ->
  ('b, out_channel, unit, unit, unit, 'a) CamlinternalFormatBasics.format6 ->
  'b
val kbprintf :
  (Buffer.t -> 'a) ->
  Buffer.t ->
  ('b, Buffer.t, unit, unit, unit, 'a) CamlinternalFormatBasics.format6 -> 'b
val ikfprintf :
  ('a -> 'b) ->
  'a -> ('c, 'd, 'e, 'f, 'g, 'b) CamlinternalFormatBasics.format6 -> 'c
val ikbprintf :
  ('a -> 'b) ->
  'a -> ('c, 'd, 'e, 'f, 'g, 'b) CamlinternalFormatBasics.format6 -> 'c
val fprintf :
  out_channel ->
  ('a, out_channel, unit, unit, unit, unit) CamlinternalFormatBasics.format6 ->
  'a
val bprintf :
  Buffer.t ->
  ('a, Buffer.t, unit, unit, unit, unit) CamlinternalFormatBasics.format6 ->
  'a
val ifprintf :
  'a -> ('b, 'c, 'd, 'e, 'f, unit) CamlinternalFormatBasics.format6 -> 'b
val ibprintf :
  'a -> ('b, 'c, 'd, 'e, 'f, unit) CamlinternalFormatBasics.format6 -> 'b
val printf :
  ('a, out_channel, unit, unit, unit, unit) CamlinternalFormatBasics.format6 ->
  'a
val eprintf :
  ('a, out_channel, unit, unit, unit, unit) CamlinternalFormatBasics.format6 ->
  'a
val ksprintf :
  (string -> 'a) ->
  ('b, unit, string, string, string, 'a) CamlinternalFormatBasics.format6 ->
  'b
val sprintf :
  ('a, unit, string, string, string, string) CamlinternalFormatBasics.format6 ->
  'a
val kprintf :
  (string -> 'a) ->
  ('b, unit, string, string, string, 'a) CamlinternalFormatBasics.format6 ->
  'b
