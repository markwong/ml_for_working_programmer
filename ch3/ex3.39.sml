(*
QUESTION:
Write a function 'find' such that find(xs, i) returns the ith smallest item in
the list xs. This is called selection. Hoare's algorithm for selection is
related to quick sort, and is much faster than sorting the list and returning
the ith element.

*)
(* CORRECT ANSWER *)
fun find (a::bs, i) =
      let 
        fun partition (left, right, []) : real =
          let 
            val l = length left
          in
            if i < 1 then find(left, i)
            else if i = 1 then a
            else find(right, i-l-1)
          end
          | partition (left, right, x::xs) =
              if x <= a then partition(x::left, right, xs)
              else partition(left, x::right, xs)
      in
        partition([], [], bs)
      end
