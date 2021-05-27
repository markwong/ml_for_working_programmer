(* QUESTION:
Prove l1@(l2@l3) = (l1@l2)@l3 for all lists l1, l2 and l3, by structural
induction.

CORRECT ANSWER:
Perform induction on l1. The base case is []@(l2@l3) = ([]@l2)@l3, which is
trivial as both sides simplify to l2@l3.
For induction step, assume xs@(l2@l3) = (xs@l2)@l3 (the induction hypothesis);
we must show (x::xs)@(l2@l3) = ((x::xs)@l2)@l3. Simplifying the left side of
this equation, we find (x::xs)@(l2@l3) = x::(xs@(l2@l3)) by the definition of
append and the induction hypothesis.
Simplifying the right side yields 
((x::xs)@l2)@l3 = (x::(xs@l2))@l3 = x::((xs@l2)@l3) by the definition of append.
Both sides of the desired equation are now equal.

*)
