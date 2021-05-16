(*
QUESTION:
Exhibit a correspondence between values of type ('a, 'b) sum and certain values of 
type ('a list) x ('b list) -- those of the form ([x], []) or ([], [y])


ANSWER:
ln1 [x]
ln2 [y]


CORRECT ANSWER:
If we could not define type ('a, 'b) sum, we could use ('a list * 'b list) under correspondence
    
    ([x], []) => Lnl(x)
    ([], [y]) => Lnr(y)

*)
