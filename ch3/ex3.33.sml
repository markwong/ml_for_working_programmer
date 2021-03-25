(*
QUESTION:
Compare union with the function 'itunion' declared below. Which function is more
efficient?

    fun itunion ([], ys) = ys
      | itunion (x::xs, ys) = itunion(xs, newmem(x, ys))


ANSWER:
Almost the same.


CORRECT ANSWER:
Calling union([x1, ..., xn], ys) computes newmem(x1, ..., newmem(xn, ys) ...)
while itunion([x1, ..., xn], ys) computes newmem(xn, ... newmem(x1, ys) ...).
Assuming that x1, ..., xn are arbitrary, we can expect both orders of insertion
bo be equally efficient. Therefore 'itunion' is slightly more efficient because
it is iterative, although the difference is small in practice.

*)
