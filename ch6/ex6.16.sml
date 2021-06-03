(* QUESTION
Prove map f (xs @ ys ) = (map f xs) @ (map f ys)

ANSWER:
Since xs and ys are lists. By structural induction:-

Base case: 
LHS: map f ([]@[]) = map f [] = [] 
RHS: (map f []) @ (map f []) = [] @ [] = []
LHS = RHS

Induction step:
map f ((x::xs) @ (y::ys))
= (f x) :: (map f xs) @ (f y) :: (map f ys) 


CORRECT ANSWER:
This exercise is easy provided you do not get confused by the presence of map.
Perform induction on xs. 

The base case is map f ([]@ys) = map f [] @ map f ys, 
which is trivial as both sides simplify to map f ys.

For the induction step, assume map f (xs@ys) = map f xs @ map f ys (the
induction hypothesis); we must show 
    map f ((x::xs)@ys) = map f (x::xs) @ map f ys

But map f ((x::xs)@ys) = map f (x::(xs@ys))  
                       = (f x) :: map f (xs@ys)
                       = (f x) :: (map f xs @ map f ys)
by the definitions of map and append, followed by the induction hypothesis.
Finally we have (fx) :: (map f xs @ map f ys) = ((f x) :: map f xs) @ map f ys 
                                              = map f (x::xs) @ map f ys
and we are done.

*)
