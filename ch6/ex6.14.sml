(* QUESTION:
Define a function leaves to count the Lf nodes in a binary tree.
Then prove leaves t = size t + 1 for all t.

ANSWER:
fun leaves Lf = 1
  | leaves (Br(x, t1, t2)) = leaves(t1) + leaves(t2)

Base case: LHS: leaves Lf = 1
           RHS: size Lf + 1 = 0 + 1 = 1
           Thus, LHS = RHS.

Induction step:
Assume leaves t1 = size t1 + 1
       leaves t2 = size t2 + 1
as induction hypotheses.

To prove: leaves (Br(x,t1,t2)) = size(Br(x,t1,t2)) + 1


CORRECT ANSWER:
fun leaves Lf = 1
  | leaves (Br(x,t1,t2)) = leaves t1 + leaves t2

The base case, leaves Lf = size Lf + 1, is trivial. both sides equal one.

For the induction step, assume 
    leaves t1 = size t1 + 1 and
    leaves t2 = size t2 + 1 (the induction hypotheses); 
we must show leaves(Br(x,t1,t2)) = size(Br(x,t1,t2)) + 1

But leaves(Br(x,t1,t2)) = leaves t1 + leaves t2 
                        = size t1 + 1 + size t2 + 1
                        = size(Br(x,t1,t2)) + 1
by the definitions of size and leaves, elementary arithmetic and both induction
hypotheses.
 
 *)
