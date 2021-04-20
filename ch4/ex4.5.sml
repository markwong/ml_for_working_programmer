(* 
QUESTION:
Write functions of type boolxbool -> bool for boolean conjunction and
disjunction. Use pattern-matching rather than andalso, orelse or if. How many
cases have to be tested explicitly?

CORRECT ANSWER:
fun conj (false, _) = false
  | conj (true, p) = p

fun disj (true, _) = true
  | disj (false, p) = p

*)

fun conjunction (false, _) = false
  | conjunction (_, false) = false
  | conjunction _ = true


fun disjunction (true, _) = true
  | disjunction (_, true) = true
  | disjunction _ = false
