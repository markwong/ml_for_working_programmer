(* QUESTION:
A binary tree is balanced (by size) if each node Br(x,t1,t2) satisfies |size(t1)-size(t2)|<=1.
The obvious resursive function to test whether a tree is balanced applies size at every subtree, performing much reducdant computation.
Write an efficient function to test whether a tree is balanced.

CORRECT ANSWER:
Calling bal(t) returns the size of t, raising an exception if it is unbalanced. 
If you dislike exceptions, you could signal an unbalanced tree by returning ~1 instead of its size.

exception Unbalanced
fun bal Lf = 0
  | bal (Br(_,t1, t2) =
        let
            val b1 = bal t1
            val b2 = bal t2
        in
            if (abs(b1-b2) <= 1 then b1+b2+1
            else raise Unbalanced
        end
*)
