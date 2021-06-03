(* QUESTION:
Prove foldr (op ::) yx xs = xs @ ys.

CORRECT ANSWER:
This exercise is also easy. Perform induction on xs.
The base case is foldr (op::) ys [] = [] @ ys, and both sides simplify to ys.
For the induction step, assume foldr (op::) ys xs = xs @ ys (the induction hypothesis);
we must show foldr (op::) ys (x::xs) = (x::xs) @ ys.
But foldr (op::) ys (x::xs) = x :: foldr (op::) ys xs 
                            = x :: (xs@ys) 
                            = (x::xs) @ ys
by the definitions of foldr and append.

*)
