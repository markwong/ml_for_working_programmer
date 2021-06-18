(* QUESTION:
Declare a datatype ('a,'b) ltree of labelled binary trees, where branch nodes carry a label of type 'a and leaves carry a label of type 'b

CORRECT ANSWER:
datatype ('a, 'b) ltree =
    Leaf of 'b
  | Branch of 'a * ('a, 'b) ltree * ('a, 'b) ltree

*)

datatype ('a,'b) ltree = Br of 'a * ('a, 'b) ltree * ('a, 'b) ltree | Lf of 'b
