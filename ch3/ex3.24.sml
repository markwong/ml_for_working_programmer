(* 
QUESTION:
Show that if the input equations are linearly independent, then division by zero
cannot occur within gausselim.

CORRECT ANSWER:
This is a general property of Gaussian elimination. The only division in
'gausselim' is by p, which is the head of the row returned by 'pivotrow'. This can
only be zero if the matrix contains a column of all zeroes, which cannot occur
if the equations are linearly independent. Scaling the remaining columns by the
pivot row preserves the property of linear independence. When 'solutions' is
applied to the result of 'gausselim', its only division is by the heads of pivot
rows.

A formal proof of this property, using the methods of Chapter 6, would be a
substantial exercise in verification.

All this assumes that the machine detects underflow. In fact, it is more likely
to replace very small values by zero.

*)
