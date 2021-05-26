(* QUESTION:
 Recall sqroot of Section 2.17, which computes real square roots by the
 Newton-Raphson method. Discuss the problems involved in verifying this
 function.

 CORRECT ANSWER:
 Problems that might be mentioned include the following.
   - Newton-Raphson depends upon the calculus, not just on basic arithmetic.
   - Computers do not perform real arithmetic exactly, so rounding errors must
   be taken into account.
   - Termination is rather tricky in this context. There is no obvious way to
   use induction.
*)
