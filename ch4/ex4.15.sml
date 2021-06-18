(* QUESTION:
Write a function that determines whether two arbitrary trees t and u satisfy t=reflect(u).
The function should not build any new trees, so it should not call reflect or Br, although it may use Br in patterns.

CORRECT ANSWER:
The third line handles the case when the two trees have different shapes.

fun isrefl (Lf, Lf) = true
  | isrefl (Br(x,t1,t2), Br(y,u1,u2)) =
        x=y andalso isrefl(t1,u2) andalso isrefl(t2,u1)
  | isrefl _ = false
*)
