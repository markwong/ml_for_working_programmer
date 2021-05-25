(* QUESTION:
Show that if phi(n) can be proved by mathematical induction on n, then it can
also be proved by complete induction.

CORRECT ANSWER:
If we can prove phi(n) by mathematical induction, then we have proofs of the
base case, phi(0), and the induction step, that phi(n) implies phi(n+1) for all
n. For complete induction, we have to prove phi(n) and may assume phi(k) if k<n.

Now consider two cases. If n=0 then use our existing proof of phi(0). If n=k+1
for some k, then since k<n we may assume phi(k); by the induction step, we
obtain phi(k+1). In both cases we have proved phi(n).
*)
