open Entry

let rec fib n =
  match n with
  | 0 | 1 -> n
  | _ -> fib (n - 1) + fib (n - 2)

let () =
  main fib
