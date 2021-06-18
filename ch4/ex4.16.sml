(* QUESTION:
Lists need not have been built into ML. Give a datatype declaration of type equivalent to 'a list.

CORRECT ANSWER:
The following gives us everything except the [x1,x2,...] notation.

infixr 5 ::
datatype 'a list = nil | :: of 'a * 'a list
*)

datatype 'a list = Lf | Br of 'a * 'a list
