(* QUESTION:
Verify that introot computes integer square roots (Section 2.16)
  fun increase (k,n) =
      if (k+1)*(k+1) > n then k
      else k+1

  fun introot n = 
      if n=0 then 0 
      else increase(2*introot(n div 4), n)


CORRECT ANSWER:
The proof that introot(n) computes the integer square root of n is by complete induction on n.
Thus, we may assume the correctness of introot(m) for 0<=m<n.
We do a case analysis on n: if n=0 then its square root is 0, which is introot(0).
Otherwise, n>0. 

We write n=4m+r by the induction hypothesis, introot(m) computes the integer square root of m.
The rest of the proof is by the chain of inequalities presented in section 2.16.
*)
