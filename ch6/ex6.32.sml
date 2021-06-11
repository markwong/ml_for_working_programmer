(* QUESTION:
Write another predicate to define the notion of ordered list, and prove that it is equivalent to ordered.


CORRECT ANSWER:
There's always ordered'(l) = (tmergesort(l) = 1). The proof that ordered'(l) implies ordered(l) is trivial, given Theorem 21. For the converse implication, it would suffice to prove ordered(l) implies tmergesort(l) = l. That can be proved by induction on the length of l, rather in the style of Theorem 24. 

(Sorry: it is not easy to think of an alternative definition of ordered.)

*)
