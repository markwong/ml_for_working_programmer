(*
QUESTION:
What input pattern do headcol and tailcols not handle?
What does transp return if the rows of the 'matrix' do not have the same length?

ANSWER:
headcol and tailcols do not handle empty list.
transp will throw an exception when 'matrix' do not have the same length.

CORRECT ANSWER:
they do not handle the pattern []::rows, since they expect each row to be
nonempty; transp handles this pattern. All rows are assumed to be as longas the
first. If other rows are longer then the surplus elements are ignored; if
shorter then exception Match is raise, indicating failure of pattern-matching.

*)
