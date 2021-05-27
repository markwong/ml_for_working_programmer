(* QUESTION:
Show that nlength xs = length xs for every list xs. (The function length was
defined in Section 3.4)

CORRECT ANSWER:
We must prove a more general property:
forall n. n+nlength xs=addlen(n,xs).
Since length xs = addlen(0, xs), the desired equation will follow.

 *)
