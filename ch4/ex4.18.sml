(* QUESTION:
Declare a datatype of trees where each branch node may have any finite number of branches. (Hint list.)

CORRECT ANSWER:
datatype 'a mtree = Lf | Br of 'a * ('a mtree) list

*)

datatype 'a mtree = Lf | Br of 'a * 'a mtree list
