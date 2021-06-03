(* QUESTION:
Prove (map f) o nrev = nrev o (map f)

CORRECT ANSWER:
By extensionality, it suffices to prove map f (nrev xs) = nrev (map f xs).
Perform induction on xs. The base case map f (nrev []) = nrev (map f []), when
both sides simplify to [].

For induction step, 
assume the induction hypothesis, map f (nrev xs) = nrev(map f xs). 
We must show map f (nrev (x::xs)) = nrev (map f (x::xs)).

But map f (nrev (x::xs)) = map f (nrev xs @ [x])
                         = map f (nrev xs) @ map f [x]
by the definition of nrev and the previous exercise.
Now map f (nrev xs) @ map f [x] = nrev (map f xs) @ [f x]
                                = nrev (f x :: map f xs)
                                = nrev (map f (x :: xs))
by the induction hypothesis and the definitions sof map and nrev.

 *)

