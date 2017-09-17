(* Fibonacci sequence with tail recursion, this is probably the best suitable
 * solution for OCaml.
 *)
open Entry

let rec fib_iteration a b = function
  | 0 -> a
  | 1 -> b
  | n -> fib_iteration b (a + b) (n - 1)

let fib n =
  fib_iteration 0 1 n

let () =
  main fib
