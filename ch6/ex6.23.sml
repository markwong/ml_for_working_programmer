(* QUESTION:
State and justify a rule for structural induction on values of type 'prop'.
To demonstrate it, prove the following formula by structural induction on p:
  nnf p = nnfpos p ^ nnf (Neg p) = nnfneg p

CORRECT ANSWER:
Let phi(p) be a formula in one variable, of type prop. 
To show that phi(p)_holds for all p, it suffices to show the following four facts.

1. phi(Atom a) for all a.
2. phi(p) implies phi(Neg p)
3. phi(p) and phi(q) imply phi(Conj(p,q))
4. phi(p) and phi(q) imply phi(Disj(p,q))

The justification is that any p of type prop consists of finitely many applications of the constructors Atom, Neg, Conj and Disj. The four cases above cover all possible ways of constructing p, and in each case phi(p) holds.

Now to show nnp p = nnfpos p & nnf(Neg p) = nnfneg p. The atomic case is 
nnf(Atom a) = nnfpos (Atom a) & nnf (Neg(Atom a)) = nnfneg(Atom a). Simplifying by the definitions of these functions yeilds (Atom a) = (Atom a) & Neg (Atom a) = Neg(Atom a), which is trivially true.

Next is the Neg case: under the assumption nnf p = nnfpos p & nnf (Neg p) = nnfneg p, we must show
nnf(Neg p) = nnfpos (Neg p) & nnf(Neg(Neg(p)) = nnfneg (Neg p). This is very easy, as simplification reduces it to 
nnf (Neg p) = nnfneg p & nnf p = nnfpos p by the definitions of nnf, nnfpos and nnfneg; this is just the induction hypothesis with the conjuncts exchanged.

Next is the Conj case: under the assumptions nnf p = nnfpos p & nnf (Neg p) 
                                                   = nnfneg p and nnf q 
                                                   = nnf pos q & nnf (Neg q) 
                                                   = nnfneg q
we must show nnf (Conj(p,q)) = nnfpos(Conj(p,q)) & nnf (Neg (Conj(p,q)))
                             = nnfneg (Conj(p,q)).
Considering the first conjunct we have nnf (Conj(p,q)) = Conj(nnf p, nnf q) 
                                                       = Conj (nnfpos p , nnfpos q) 
                                                       = nnfpos (Conj(p,q)) 
by the definitions of nnf and nnfpos, and the induction hypotheses. As for the second conjunct, we have
nnf(Neg(Conj(p,q))) = nnf(Disj(Neg p, Neg q)) 
                    = Disj (nnf(Neg p), nnf(Neg q))) 
                    = Disj(nnfneg p, nnfneg q)
                    = nnfneg (Conj(p,q)) 
by the definitions of nnf, nnfneg and the induction hypotheses.

The Disj case is very similar to the Conj case and is therefore omitted.

*)
= nnf

