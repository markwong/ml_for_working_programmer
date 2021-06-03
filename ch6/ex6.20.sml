(* QUESTION:
Prove foldl z (xs @ ys) = foldl f (foldl f z xs) ys


CORRECT ANSWER:
Perform induction on xs. 
The base case is foldl f z ([]@ys) = foldl f (foldl f z []) ys, 
and both sides simplify to foldl f z ys.
For the induction step, assume forall z. foldl f z (xs@ys) = foldl f (foldl f z xs) ys,
a quantified induction hypothesis. We must show 
forall z. foldl f z ((x::xs)@ys) = foldl f (foldl f z (x::xs)) ys.
Simplifying the left-hand side, we find 
foldl f z ((x::xs)@ys) = foldl f z (x::(xs@ys))
                       = foldl f (f(x,z))(xs@ys)
                       = foldl f (foldl f (f(x,z)) xs) ys 
by the definitions of append and foldl and the induction hypothesis instantiated with f z.

Simplifying the right-hand side, we find 
foldl f (foldl f z (x::xs)) ys = foldl f (foldl f (f(x,z)) xs) ys 
by the definition of foldl. The two sides are equal.

*)
