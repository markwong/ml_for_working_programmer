(* QUESTION:
Consider the function half:
  fun half 0 = 0
    | half n = half (n-2)

Show that this function is defined by well-founded recursion. Be sure to specify the domain of the well-founded relation.

CORRECT ANSWER:
The function half is defined by well-founded recursion on the set of even natural numbers.
The wf relation is simply "less than" on the even naturals, or equivalently the predecessor relation given by i precedes j if j = i+2.
*)
