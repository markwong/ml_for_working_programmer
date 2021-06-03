(* QUESTION:
Suppose that op. and e satisfy, for all x, y and z,
    x op. (y op. z) = (x op. y) op. z and e op. x = x
Let F abbreviate foldr(op.). Prove that for all y and l, (F e l) op. y = F y l.

CORRECT ANSWER:
If F = foldr(op.) then F e [] = e and F e (x::l) = x . (F e l) for all x and l.
T show (F e l)) . y = F y l, use induction on l.
The base case holds because (F e []) . y = e . y = y = F y []. 
In the induction step, we may assume (F e l) . y = F y l and must show 
    (F e (x::l)) . y = F y (x::1).

Here (F e (x::l)) . y = x . (F e l) . y = x . (F y l) = F y (x::l), 
using the laws for F, associativity and the induction hypothesis.

*)
