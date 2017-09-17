open Entry

let fib n =
  match n with
  | 0 | 1 -> n
  | _ ->
    let a = ref 0 in
    let b = ref 1 in
    let result = ref 0 in
    let rec iterate x =
      match x with
      | 1 -> ()
      | _ ->
        result := !a + !b;
        a := !b;
        b := !result;
        iterate (x - 1)
    in
    iterate n;
    !result

let () =
  main fib
