(* 
QUESTION:
Does next still work if the <= comparison is replaced by < in its second line? 
Justify your answer in terms of the two steps described above.

CORRECT ANSWER:
The modified version is incorrect if there are repeated elements. It takes
[2,2,3,1] to itself rather than to [3,2,1,2]. Refer to Steps 1 and 2 on page 95.
The elements to the left of y now form a strictly increasing sequence, and y may
equal the rightmost of them. Exchanging y with something equal to it has no
effect.

*)
