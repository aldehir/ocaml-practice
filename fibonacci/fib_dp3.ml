(* Fibonacci sequence with tail recursion, this is probably the best suitable
 * solution for OCaml.
 *)
open Entry

let rec fib_iteration iterations a b =
  match iterations with
  | 0 -> a
  | 1 -> b
  | _ -> fib_iteration (iterations - 1) b (a + b)

let fib n =
  fib_iteration n 0 1

let () =
  main fib
