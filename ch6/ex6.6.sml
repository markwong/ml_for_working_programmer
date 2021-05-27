(* QUESTION
Prove xs@[] = xs for every list xs, by structural induction.

ANSWER:
Base case: [] @ [] => []
Induction Step: (x::xs) @ [] => x::(xs@[]) => x::xs


CORRECT ANSWER:
The base case is []@[] = [], which is trivial.
For the induction step, assume xs@[] = xs (the induction hypothesis);
we must show (x::xs)@[] = x::xs.
But (x::xs)@[] = x::(xs@[]) = x::xs by the definition of append and the
induction hypothesis.

*)
