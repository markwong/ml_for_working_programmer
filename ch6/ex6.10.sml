(* QUESTION:
Formalize and prove: No binary tree equals its own left subtree.


ANSWER:
To prove: For every binary tree t, Br(x, t1, t2) =/= t1 or t2 


CORRECT ANSWER:
The theorom statement is Br(x, t, t') <> t. (Free variables are implicitly
universally quantified.)

The proof is by structural induction on t.

The base case, Br(x, Lf, t') <> Lf, holds because no Br can equal any Lf
(freeness property of distinct constructors).

For the induction step, assume Br(x, t1, t') <> t1 and Br(x,t2,t') <> t2 (the
induction hypotheses). We must show Br(x,Br(y,t1,t2),t') <> Br(y,t1,t2). The
proof is by contradiction:
  if Br(x,Br(y,t1,t2),t') <> Br(y,t1,t2) then (by freeness again) we have x=y,
  t'=t2 and also Br(y,t1,t2)=t1, that is, Br(x,t1,t')=t1, which contradicts an
  induction hypothesis.

*)
