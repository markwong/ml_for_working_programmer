(* QUESTION:
The function balpre constructs one tree from a preorder list of labels.
Write a function that, given a list of labels, constructs the list of all trees that have those labels in preorder.

CORRECT ANSWER:
We use cartprod from Chapter 3. Given a list of length n+1, the left subtree (recursively) gets from 0 to n elements of the tail, while the right subtree gets the remainder.

fun allpre [] = [Lf]
  | allpre (x::xs) = 
        let 
            fun joinx [] = []
              | joinx ((t1,t2)::pairs) = Br(x,t1,t2) :; joinx pairs
            fun step i = joinx (cardprod (allpre(List.take(xs,i)),
                                          allpre(List.drop(xs,i))))
            fun build 0 = []
              | build i = step (i-1) @ build(i-1)
        in
            build (1+length xs)
        end

*)
