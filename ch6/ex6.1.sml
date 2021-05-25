(* QUESTION:
Prove, by induction, the basic theorem of integer division:
if n and d are natural numbers with d /= 0, then there exist natural number q
and r such that n = dq+r and 0 <= r < d. 

Express the corresponding division function in ML. How efficient is it?


CORRECT ANSWER:
By induction on n. 
Base case: If n = 0 then q = r = 0.
For induction step, assume that n = dq + r where 0 <= r < d; we have to prove
the theorem for n + 1.
There are two cases. If r+1 < d then n + 1 = dq + (r+1): the desired quotient is
q and the remainder is r+1.
Otherwise r+1 = d (since r<d) and n+1 = dq+d = d(q+1): the desired quotient is
q+1 and the remainder is 0.

The corresponding ML division function is even less efficient than repeated
subtraction!

fun divide(n,d) =
  if n=0 then (0,0)
  else 
    let
        val (q,r) = divide(n-1, d)
    in
        if r+1<d then (q, r+1) else (q+1,0)
    end
*)
