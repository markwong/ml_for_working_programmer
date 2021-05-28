(* QUESTION:
Verify the function preod of Section 4.11. In other words, prove 
preord(t, []) = preorder t for every binary tree t.

CORRECT ANSWER:
Recall the declaration of preord:

fun preord (Lf, vs) = vs
  | preord (Br(v, t1, t2), vs) = v :: preord (t1, preord (t2, vs))

The theorem statement must be generalized to 
    forall vs. preord(t,vs) = preorder t @ vs.

The base case, preord(Lf,vs) = preord Lf @ vs, is trivial; both sides equal vs.

For the induction step, assume 
    forall vs. preord(t1,vs) = preorder t1 @ vs 
  and
    forall vs. preord(t2,vs) = preorder t2 @ vs 
  (two quantified induction hypotheses); we must show 
    forall vs. preord(Br(x, t1, t2), vs) = preorder(Br(x,t1,t2)) @ vs.

But preord(br(x,t1,t2),vs) = x::preord(t1,preord(t2,vs))
                           = x::preord(t1,preord t2@vs)
                           = x::(preord t1@preorder t2@vs)
                           = ([x]@preorder t1@preorder t2)@vs
                           = preorder(Br(x,t1,t2))@vs.

The proof uses the efinitions of append, preord and preorder. The induction
hypothesis for t2 is used with the same value of vs, but the induction
hypothesis for t1 is used with the value preorder t2@vs.

 *)
