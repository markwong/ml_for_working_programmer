(* QUESTION:
Give an example of a well-founded relation that is not transitive.
So that if < is well-founded then so is <+, its transitive closure.

CORRECT ANSWER:
The simplest example is the immediate predecessor relation on the natural numbers: 
i precedes j if j=i+1. "Less than" is the transitive closure of this relation.

Let < be a wf relation and write its transitive closure as <+. If there exists an infinite decreasing chain ... <+ xn <+ ... <+ x2 <+ x1 then we can find an infinite decreasing chain involving < by expanding each inequality x(k+1) <+ xk into a finite chain x(k+1) = ym < ... < y2 < y1 = xk.
So if there are no infinite decreasing chains for < then there are none for <+ either.

*)
