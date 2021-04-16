(*
QUESTION:
This is the same as the previous exercise, except that you should base the new
sorting function on the following:

  fun takedrop ([], n, xs) = (xs, [])
    | takedrop (x::l, n, xs) = 
        if n > 0 then takedrop(l, n-1, x::xs)
                 else (xs, x::l)


CORRECT ANSWER:
Under SML/NJ this version took 240 msec, still slower than tmergesort!

*)
