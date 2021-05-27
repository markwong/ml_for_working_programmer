(* QUESTION:
Prove nrev(nrev xs) = xs for every list xs.

ANSWER:
Base Case: nrev(nrev []) => []
Induction Step: nrev(nrev (x::xs)) = (nrev (x::xs)) @ []
                                   = (nrev xs :: [x]) @ []
                                   = (nrev xs) @ [x]
                                   = x :: xs

CORRECT ANSWER:
This proof requires Theorem 10 (from the text) as a lemma. 
The base case, nrev(nrev[]) = [], is trivial.

For the induction step, assume nrev(nrev xs) = xs (the induction hypothesis); 
we must show nrev(nrev(x::xs)) = x::xs.
But nrev(nrev(x::xs)) = nrev((nrev xs) @ [x]) = nrev[x] @ nrev(nrev xs) = [x] @
xs = x::xs by the definition of nrev, Theorem 10, the induction hypothesis and
the definition of append.

*)
