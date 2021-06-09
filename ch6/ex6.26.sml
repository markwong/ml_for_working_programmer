(* QUESTION:
Recall the function fst, such that fst(x,y) = x for all x and y.
Give an example of a well-founded relation that uses fst as a measure function.

CORRECT ANSWER:
An example is the relation on pairs of natural numbers (x,y) that orders them on their first component while ignoring the second. Such relations are useful for proving the termination of functions such as revapp and addlen, which recur down their first argument while accumulating results in their second argument. The termination of such functions is determined by the first argument only.

*)
