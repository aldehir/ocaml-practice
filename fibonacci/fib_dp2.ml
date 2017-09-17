let fib n =
  match n with
  | 0 | 1 -> n
  | _ ->
    let a = ref 0 in
    let b = ref 1 in
    let result = ref 0 in
    for i = 2 to n do
      result := !a + !b;
      a := !b;
      b := !result;
    done;
    !result

let print_usage () =
  print_endline ("Usage: " ^ Sys.argv.(0) ^ " number")

let main () =
  match Array.length Sys.argv with
  | 1 -> print_usage ()
  | _ ->
    let n = int_of_string Sys.argv.(1) in
    let result = fib n in
    print_int result; print_newline ()

let () =
  main ()
