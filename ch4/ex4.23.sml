(* QUESTION:
Let us put the datatype declaraton inside the structure, then make the constructors available outside using these declaration.
    
    val Lf = Tree.Lf
    val Br = Tree.Br

What is wrong with this idea?


CORRECT ANSWER:
We could then use Lf and Br only as values, not as constructors in patterns.


*)
