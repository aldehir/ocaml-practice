open Entry

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

let () =
  main fib
