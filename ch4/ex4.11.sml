(* QUESTION:
Type exn does not admit the ML equality operator. Is this restirction justified?

CORRECT ANSWER:
Yes. Equality testing is not possible in general for exception values, since they may carry values of arbitrary types.

*)
