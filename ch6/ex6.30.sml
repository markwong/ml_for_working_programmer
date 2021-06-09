(* QUESTION:
Show that well-founded induction on the 'tail of' relation <. is equivalent to structural induction for lists.

CORRECT ANSWER:
If you perform induction using the "tail of" relation to prove phi(1), the it is possible to perform case analysis on the structure of l. If l = [] then l has no predecessors under the "tail of" relation, so phi([]) must be proved outright, just as in structural induction. 
If l = x::xs then it has one predecessor, namely xs: we are allowed to assume phi(xs) while proving phi(x::xs). This situation again mirros structural induction.

*)
