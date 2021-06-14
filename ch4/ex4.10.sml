(* QUESTION:
Describe a simple method for removing all 'case' expressions from a program.
Explain why your method does not affect the meaning of the program.

ANSWER:
We can declare a function with several patterns in place of 'case' expression.
Like 'case', the ordering in function pattern matching is in order.


CORRECT ANSWER:
Replace each occurrance of 
    case E of P1 => E1 | ... | Pn => En
by the expression
    let fun f(P1) = E1 | ... | f(Pn) = En in f(E) end

where f is a previously unused identifier. This expression has the same context as the 'case' and performs precisely the same pattern-matching.
According to the ML Definition, the 'case' expression above actually expands to (see Chapter 5)
    (fn P1 => E1 | ... | Pn => En) (E)

*)
