(*
QUESTION:
What does transp do given the empty list? Explain.

ANSWER:
It returns empty list. transp matches the ([]::rows) and returns []

CORRECT ANSWER:
transp loops given the empty list, as it works by shortening each of its rows.
The empty matrix has no rows to shorten, so it calls ifself again with the empty
list!

*)
