(* QUESTION:
Show that if phi(n) can be proved by complete induction n n, then it can also be
proved using mathematical induction. 
(Hint: use a different induction formula).


CORRECt ANSWER:
If we can prove phi(n) by complete induction, then we have a proof of phi(n)
from for all k. k<n --> phi(k);

To obtain a proof by mathematical induction, take the formula for all k. k,n -->
phi(k). The base case of this induction is for all k. k<0 --> phi(k), which
holds trivially because k<0 is contradictory. For the induction step, assume for
all k. k<n --> phi(k); we have to show for all k. k<n+1 --> phi(k), which is
equivalent to for all k. k<n | k=n --> phi(k) and thus to (for all k<n -->
phi(k)) & phi(n). Now we are finished, because for all k. k<n --> phi(k) is just
the induction hypothesis and phi(n) follows from it by our previous proof that
used complete induction.
*)
