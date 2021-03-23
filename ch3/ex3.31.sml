(*
QUESTION:
What does nextperm(ys) return if there is no next permutation of ys? Modify the
program so that it returns the initial permutation in that case.

CORRECT ANSWER:
It raises exception Match. To correct this, add a test for [] to 'next':

    fun next (xlist, []) : int list = xlist
      | next (xlist, y::ys) : int list = ...

*)
