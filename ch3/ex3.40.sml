(* 
QUESTION:
Generalize 'find' above to findrange(xs, i, j), returning the list of the ith to
jth smallest items in the list xs.
*)

(* CORRECT ANSWER *)
fun findrange ([], i, j) = []
  | findrange (a::bs, i, j) = (* the head a is the pivot *)
      let
        fun partition (left, right, []) : real list =
          let
            val l = length left
          in 
            findrange(left, i, Int.min(j, l-1)) @
              (if i <= 1 andalso l <= j then [a] else []) @
                findrange(right, Int.max(0, i-l-1), j-l-1)
          end
          | partition (left, right, x::xs) =
              if x <= a then partition(x::left, right, xs)
              else partition(left, x::right, xs)
      in
        if i>j then [] else partition([], [], bs)
      end
