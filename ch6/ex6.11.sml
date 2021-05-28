(* QUESTION:
Prove size(reflect t) = size t for every binary tree t.

ANSWER:
Base case: size(reflect Lf) = size Lf 
Induction Step: size(reflect t) = size(Br(x, reflect t1, reflect t2))
  1st: reflect t1 = reflect Lf = Lf
  2nd: reflect t2 = reflect Lf = Lf
  Thus, size(Br (x, Lf, Lf)) = size t


CORRECT ANSWER:
The base case, size(reflect Lf) = size Lf, is trivial because both sides equal
zero.

For induction step, assume size(reflect t1) = size t1 and size(reflect t2) =
size t2 (the induction hypothesis); we must show 
    size(reflect(Br(x,t1,t2))) = size(Br(x,t1,t2))

But size(reflect(Br(x,t1,t2))) = size(Br(x,reflect t2,reflect t1) 
                               = 1+size(reflect t2)+size(reflect t1) 
                               = 1+size t2+size t1 
                               = size(Br(x,t1,t2)) 

by the difinitions of size and reflect, commutativity of + and both induction
hypotheses. (Isn't this easy?)

 *)
