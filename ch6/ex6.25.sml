(* QUESTION:
Let Tr be an arbitrary truth valuation for propositions. Prove Tr(nnf p) <-> Tr(p) for every proposition p.

CORRECT ANSWER:
The proof that Tr(nnf p) = Tr p again follows that of Theorem 117 in the text, since that is the natural way to reason about nnf. Here, the seven cases are as follows:

1. Tr(nnf(Atom a)) = Tr(Atom a) = true by the definition of nnf.
2. Tr(nnf(Neg(Atom a))) = Tr(Neg(Atom a)) similarly.
3. Tr(nnf(Conj(r,q))) = Tr(Conj(nnf r, nnf q)) = Tr(nnf r) & Tr(nnf q) = Tr r & Tr q = Tr(Conj(r,q)). The proof uses the definitions of nnf and Tr and the induction hypothesis applied to r and q.
4. Tr(nnf(Disj(r,q))) holds similarly.
5. Tr(nnf(Neg(Conj(r,q)))) = Tr(nnf(Disj(r,q))) 
                           = Tr(Disj(nnf r, nnf q)) 
                           = Tr(nnf r) | Tr(nnf q) 
                           = Tr r| tr q 
                           = not (Tr r & Tr q) 
                           = Tr(Neg(Conj(r,q))) 
by the definitions of nnf and Tr, the induction hypotheses and the de Morgan laws.
6. Tr(nnf(Neg(Disj(r,q)))) holds similarly.
7. Tr(nnf(Neg(Neg p))) = Tr (nnf p) = Tr p using the induction hypothesis applied to p, which is smaller than Neg(Neg p).


*)
