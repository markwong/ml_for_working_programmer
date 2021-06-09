(* QUESTION:
Define a predicate Isnnf on propositions such that Isnnf(p) holds exactly when p is in negation normal form.
Prove Isnnf(nnf p) for every proposition p.

CORRECT ANSWER:
The function isnnf can be declared as follows.

fun isnnf (Atom a) = true
  | isnnf (Neg (Atom a)) = true
  | isnnf (Conj (p,q)) = isnnf p andalso isnnf q
  | isnnf (Disj (p,q)) = isnnf p andalso isnnf q
  | isnnf _ = false;

The proof that isnnf(nnf p) = true follows that of Theorem 17 in the next, using induction on the size of the proposition p. The proof again has seven cases, corresponding to the definition of nnf.

1. isnnf (nnf (Atom a)) = isnnf (Atom a) = true by the definitions of isnnf and nnf.
2. isnnf (nnf (Neg (Atom a))) = isnnf (Neg (Atom a)) = true similarly.
3. isnnf (nnf (Conj(r,q))) = isnnf (Conj(nnf r, nnf q)) = isnnf (nnf r) & isnnf (nnf q) = true & true = true.
Here the proof uses the induction hypothesis applied to r and q, since they are smaller than Conj(r,q).
4. isnnf (nnf (Disj(r,q))) holds similarly.
5. isnnf (nnf(Neg(Cnj(r,q)))) = isnnf(nnf(Disj(r,q))) 
                              = isnnf(Disj(nnf r,nnf q)) 
                              = isnnf(nnf r) && isnnf(nnf q) 
                              = true & true 
                              = true

6. isnnf (nnf(Neg(Disj(r,q)))) holds imilarly.
7. isnnf(nnf(Neg(Neg p))) = isnnf(nnf p) = true using the induction hypothesis applied to p, which is smaller than Neg(Neg p).

*)
