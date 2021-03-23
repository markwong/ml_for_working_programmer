(* 
QUESTION:
Do pivotrow and delrow work correctly if the heads of several rows have the same
absolute value?

ANSWER:
They should work correctly.

CORRECT ANSWER:
The >= test in 'pivotrow' ensures that it takes the first row having the
greatest absolute value, in case there are several such rows. Function 'delrow'
clearly finds (and deletes) the first row having a given head value. It would
not do for 'pivotrow' to return one row and for delrow to delete a different
one!

*)
