(*
QUESTION:
Write a function 'choose' such that choose(k, xs) generates the set of all
k-element subsets of xs. For instance, choose(29, upto(1, 30)) should return a
list containing 30 subsets.


CORRECT ANSWER:
fun choosing (0, _, base) = [base]
  | choosing (k, [], base) = []
  | choosing (k, x::xs, base) =
      if k > length(x::xs) then []
      else choosing(k, xs, base) @ choosing(k-1, xs, x::base)

*)

(* INCORRECT ANSWER *)
fun upto (from, to) = 
  if from > to then []
  else from :: upto(from+1, to)

fun choose (0, xs) = [xs]
  | choose (_, []) = []
  | choose (k, x::xs) =
     [x :: xs] @ choose(k-1, xs)

val a = choose(10, upto(1,3)) 


