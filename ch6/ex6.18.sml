(* QUESTION:
Declare a functional maptree on binary trees, satisfying the following equations
(which you should prove):
    (maptree f) o reflect = reflect o (maptree f)
    (map f) o preorder = preorder o (maptree f)

CORRECT ANSWER:
Here is maptree:

    fun maptree f Lf = Lf
      | maptree f (Br(v,t1,t2)) = Br(f v, maptree f t1, maptree f t2)

The first of the requested equations is easy enough for you to prove yourself, given the definition of maptree.

To prove the second equation, it suffices by extensionality to prove 
map f (preorder t) = preorder (maptree f t).

Perform structural induction on t. The base case, map f (preorder Lf) = preorder (maptree f Lf),
is trivial: both sides collapse to []. 

For the induction step, assume the induction hypotheses 
map f (preorder t1) = preorder (maptree f t1) and map f (preorder t2) = preorder (maptree f t2)
We must show map f (preorder (Br(x,t1,t2))) = preorder (maptree f (br(x,t1,t2)))

Simplifying the left-hand side, we find 
map f (preorder (Br(x,t1,t2))) = map f ([x] @ preorder t1 @ preorder t2)
                               = map f [x] @ map f (preorder t1) @ map f (preorder t2)
                               = [f x] @ preorder (maptree f t1) @ preorder (maptree f t2)
by the definitions of preorder and map, Exercise 6.16 and the induction hypotheses.

Simplifying the right-hand side, we find 
preorder (maptree f(Br(x,t1,t2))) = preorder (Br(f x, maptree f t1, maptree f t2)))
                                  = [f x] @ preorder (maptree f t1) @ preorder (maptree f t2)
by the definitions of maptree and preorder. The left and right-hand sides are now identical, comleting the proof.
 

*)
