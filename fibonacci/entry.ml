let print_usage () =
  print_endline ("Usage: " ^ Sys.argv.(0) ^ " number")

let main func =
  match Array.length Sys.argv with
  | 1 -> print_usage ()
  | _ ->
    let n = int_of_string Sys.argv.(1) in
    let result = func n in
    print_int result; print_newline ()
