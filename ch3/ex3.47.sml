(* 
QUESTION:
Give a convincing argument that 'sum' and 'prod' respect the representation
of polynomials

CORRECT ANSWER:
Recall that polynomials are represented by lists of (exponent, coefficient)
pairs with the exponents in strictly decreasing order and the coefficients
non-zero. We may assume that the arguments to our functions already respect this
representation.

We can see that 'sum' tests for zero coefficients and omits them, and compares
exponents to ensure that they appear in decreasing order. To be more formal we
could prove this by induction, as in the proof or merge sort found in Chapter 6. 

For 'prod' we note that 'take' and 'drop' yield valid polynomials. may assume
inductively that the recursive calls yield valid polynomials, and finally appeal
to the correctness (just proved) of 'sum'.

*)
