(* QUESTION:
Prove that insertion sort preserves the bag of elements it is given.
In particular, prove these facts:
  bag (ins(x,xs)) = {x} U+ bag xs
  bag (insort xs) = bag xs

CORRECT ANSWER:
To prove bag (ins(x,xs)) = {x} U+ bag xs, use structural induction on the list xs. The base case holds because
bad (ins(x,[])) = bag [x] = {x} = {x} U+ {} = {x} U+ bag [].

To prove the induction step, 
bag (ins(x,y::xs)) = {x} U+ bag(y::xs), consider separately the cases x<=y and y<x.

If x<=y then bag (ins(x,y::xs)) = bag (x::y::xs) = {x} U+ bag (y::xs) and we are finished without even using the induction hypothesis.

If y<x then bag(ins(x,y::xs)) = bag(y::ins(x,xs)) = {y} U+ bag(ins(x,xs)) = {y} U+ {{x} U+ bag xs = bag (x::y::xs) by the definition of bag, the induction hypothesis and the commutative property.

To prove bag (insort xs) = bag xs, use structural induction on the list xs. The base case is trivial: 
because bag (insort []) = bag [] by the definition of insort alone. 

To prove the induction step, 
    bag (insort (x::xs)) = bag (ins(x, insort xs)) 
                         = {x} U+ bag (insort xs) 
                         = {x} U+ bag xs 
                         = bag (x::xs) 
by then bag (ins(x,y::xs)) = bag(y::ins(x,xs)) 
                           = {y} U+ bag(ins(x,xs)) 
                           = {y} U+ {x} U+ bag xs  

the definitions of insort and bag, and the induction hypothesis. 

*)
