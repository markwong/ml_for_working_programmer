(* QUESTION:
Prove nlength(preorder t) = size t for every binary tree t.

ANSWER:
Base case: nlength(preorder Lf) = nlength Lf = size Lf
Induction step: nlength(preorder(Br(x,t1,t2))) = nlength (preorder t1, preorder
t2, 


CORRECT ANSWER:
The base case, nlength(preorder Lf) = size Lf, is trivial. both sides equal
zero.

For induction step, assume nlength(preorder t1) = size t1 and nlength(preorder
t2) = size t2 (the induction hypothesis); we must show
nlength(preorder(Br(x,t1,t2))) = size(Br(x,t1,t2))

But nlength(preorder(Br(x,t1,t2))) = nlength([x]@preorder t1@preorder t2)
  = 1 + nlength(preorder t1) + nlength(preorder t2)
  = 1 + size t1 + size t2
  = size(Br(x,t1,t2)) 
  
by the definitions of nlength, size and preorder, and both induction hypotheses.
The proof also uses Theorem 8 (from the text), which concerns nlength and
append.

*)
