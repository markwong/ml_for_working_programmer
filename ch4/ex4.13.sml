(* QUESTION:
Write a function compsame(x, n) to construct a complete binary tree of depth n, labelling all nodes with x. How efficient is your function?

CORRECT ANSWER:
The following version is linear in the depth of the tree, since both subtrees share. Thus, you can compute compsame(x,100). Try applying reflect to the result!

  fun compsame (x, n) = 
    if n=0 then Lf
    else 
        let 
            val t = fullsame(x, n-1)
        in
            B4(x, t, t)
        end
*)

datatype 'a tree = Lf | Br of 'a * 'a tree * 'a tree

(* the efficiency: To create a complete binary tree of depth n, 2^n-1 nodes are constructed *)
fun compsame (_, 0) = Lf
  | compsame (x, n) = Br(x, compsame(x, n-1), compsame(x, n-1))


(* the efficiency: linear *)
fun compsame2 (_, 0) = Lf
  | compsame2 (x, n) = 
        let
            val t = compsame2(x, n-1)
        in
            Br(x, t, t)
        end

