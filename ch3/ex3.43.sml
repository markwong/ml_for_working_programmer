(*
QUESTION:
Why call sorting (xs, [[]], 0) and not sorting (xs, [], 0)


CORRECT ANSWER:
If the list xs is empty then sorting raises an exception. Function mergepairs
expects, and returns, a non-empty list of lists.


*)
