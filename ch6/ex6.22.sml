(* QUESTION:
Let op., e and F be as in the previous exercise. 
Define the function G by G(l, z) = F z l.
Prove that for all ls, foldr G e ls = F e (map(F e ) ls).

CORRECT ANSWER:
If G(l,z) = F z l then G([],z) = z and G(x::l, z) = x. G(l,z) for all z, x and l.
The theorem is proved by induction on ls, which is a list of lists.
The bease case is foldr G e [] = e = F e [] = F e (map(F e)[]).
For the induction step, assume foldr G e ls = F e (map(F e)ls) in order to show
foldr G e (l::ls) = F e (map(F e)(l::ls)).

Simplifying the left-hand side, we find 
    foldr G e (l::ls) = G(l, foldr G e ls)
                      = G(l, F e (map (F e) ls))
                      = F(F e(map F e)ls)) l
using the laws for G and the induction hypothesis.

Simplifying the right-hand side, we find 
    F e (map (F e) (l::ls)) = F e ((F e l) :: map (F e) ls)
                            = F e l . (F e (map (F e) ls)
                            = F (F e (map (F e) ls)) l
using the laws for F and Exercise 6.21. The two sides are equal.

*)                     
