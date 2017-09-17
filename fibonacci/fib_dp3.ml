(* Fibonacci sequence with tail recursion, this is probably the best suitable
 * solution for OCaml.
 *)

let rec fib_iteration iterations a b =
  match iterations with
  | 0 -> a
  | 1 -> b
  | _ -> fib_iteration (iterations - 1) b (a + b)

let fib n =
  fib_iteration n 0 1

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
