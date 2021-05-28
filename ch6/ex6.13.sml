(* QUESTION:
Prove nrev(inorder(reflect t)) = inorder t for every binary tree t.

ANSWER:
Base case: nrev(inorder(reflect t))
         = nrev(inorder(reflect Lf))
         = nrev(inorder Lf)
         = nref Lf
         = inorder Lf

Induction step: 
assume nrev(inorder(reflect t1)) = inorder t1
       nref(inorder(reflect t2)) = inorder t2
To prove:
nrev(inorder(reflect(Br(x,t1,t2))) = inorder Br(x,t1,t2)


CORRECT ANSWER:
The base case, nrev(inorder(reflect Lf)) = inorder Lf, is trivial:
both sides equal [].

For induction step, assume nrev(inorder(reflect t1)) = inorder t1
and nrev(inorder(reflect t2)) = inorder t2 (the induction hypotheses);
we must show nrev(inorder(reflect(Br(x,t1,t2))) = inorder(Br(x,t1,t2)).

But 
nrev(inorder(reflect(Br(x,t1,t2)))) 
= nrev(inorder(Br(x,reflect t2, reflect t1)))
= nrev(inorder(reflect t2) @ [x] @ inorder(reflect t1))
= nrev(inorder(reflect t1)) @ nrev[x] @ nrev(inorder(reflect t2)) 
= inorder t1 @ [x] @ inorder t2
= inorder(Br(x,t1,t2)).

The proof uses the definitions of nrev, inorder and reflect, both induction
hypotheses and Theorem 10 (from the text), which concerns nrev and append.

 *)
