(* Polymorphic datatype *)

(* The optional type *)
datatype 'a option = NONE | SOME of 'a

(* disjoin sum or union of two types *)
datatype ('a, 'b) sum = ln1 of 'a | ln2 of 'b

fun concat1 [] = ""
  | concat1 ((ln1 s)::l) = s ^ concat1 l
  | concat1 ((ln2 _)::l )= concat1 l

val a = [ln1("hello"), ln2 999]
val result = concat1 a
