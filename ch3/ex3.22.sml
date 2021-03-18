(*
QUESTION:
A matrix is negated by negating each of its components.
    ~[[1,2], [3,4]] = [[~1, ~2], [~3,~4]]
Write a function to negate a matrix.

*)


(* first one is important, without it will give warning about non-exhaustive match *)
fun neg [] = []
  | neg (row::rows) = 
    let 
      fun negrow [] = []
        | negrow (x::xs) = ~x :: negrow(xs)
    in
        negrow(row) :: neg(rows)
    end
