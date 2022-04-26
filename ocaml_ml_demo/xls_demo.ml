open Printf

let () = 
  let o = open_in_bin "../test.mp4" in
  let len = in_channel_length o in
  let b = Buffer.create(len) in
  Buffer.add_channel b o len;
  close_in o;
  
  let out = open_out_bin "../test-copy.mp4" in
  output_bytes out (Buffer.to_bytes b);
  close_out out
  (* let b=Buffer.add_cbhannel(b)(janet)(n) in
  let =close_in janet in
  Buffer.contents b *)
  (* let len = LargeFile.in_channel_length o in
  let b = Bytes.create (Int64.to_int len) in *)
  (* printf "len=%i\n" (Int64.to_int len); *)
;;