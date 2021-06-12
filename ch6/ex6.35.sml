(* QUESTION:
Modify merge sort to suppress repetitions: each input element should appear exactly once in the output. Formalize this property and state the storems required to verify it.


CORRECT ANSWER:
The merge operation can suppress repetitions by testing whether the lists being merged have equal heads.

fun merge ([], ys) = ys : real list
  | merge (xs, []) = xs
  | merge (x::xs, y::ys) =
      if x=y then x::merge(xs, ys)
      else if x<y then x::merge(xs, y::ys)
                  else y::merge(x::xs, ys);

What about repetitions in the lists xs and ys? By induction on the length of the original list, we can prove that no repetitions can occur, using induction hypotheses that tell us that xs and ys are repetition-free. 

To state the correctness theorems for sorting, replace multisets by ordinary sets. Replace the function bag by a function set(xs) such that set [] = {} and set(x::xs) = {x} U set(xs).

*)
