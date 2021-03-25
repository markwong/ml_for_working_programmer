(*
QUESTION:
How many equality tests does ML perform when evaluating the following
expressions?

  1 mem upto(1,500)
  setof (upto(1,500)

ANSWER: 2

CORRECT ANSWER:
Calling 1 mem upto(1,500) performs only one equality test, since orelse behaves
like a conditional and does not make the recursive call 1 mem [2, ..., 500].
And setof(upto(1,500)) performs 0 + 1 + ... + 499 = 124750 equality tests, since
all the elements are distinct.

*)
