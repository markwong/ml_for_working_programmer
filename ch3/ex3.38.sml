(* 
QUESTION:
Express quick sort such that quicker(xs, sorted) accumulates the result in
'sorted' with no use of append.

*)
(* CORRECT ANSWER *)
fun quicker ([], sorted) : real list = sorted
  | quicker ([x], sorted) = x::sorted
  | quicker (a::bs, sorted) = (* a is the pivot *)
      let 
        fun partition (left, right, []) = 
          quicker(left, a :: quicker(right, sorted))
          | partition (left, right, x::xs) =
              if x <= a then partition(x::left, right, xs)
              else partition(left, x::right, xs)
      in
        partition([], [], bs)
      end
