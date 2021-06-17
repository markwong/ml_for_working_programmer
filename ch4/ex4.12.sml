(* QUESTION:
Describe a computation problem from your experience where exception handling would be appropriate.
Write the skeleton of an ML program to solve this problem. Include the exception declarations and describe where exceptions would be raised and handled.

CORRECT ANSWER:
Several examples appear later in the book. In parsing, exceptions can signal errors -- see Section 9.3.

In unification, exceptions can signal that the two given expressions cannot be unified -- see Section 10.7. 

In numerical computing, division by zero is almost impossible to predict; all we can do is catch exception Div and try to recover gracefully (perhaps by attempting a different algorithm)

*)
