(*
QUESTION:
Use the following function to code a new version of top-down merge sort, and
measure its speed. Explain your findings, taking account of garbage collection
time if you can measure it.
  
  fun alts ([], xs, ys) = (xs, ys)
    | alts ([x], xs, ys) = (x::xs, ys)
    | alts (x::y::l, xs, ys) = alts(l, x::xs, y::ys)


CORRECT ANSWER:
My tests were inconclusive. It was no faster under Poly/ML, but slightly faster
under SML/NJ (270msec)

*)
