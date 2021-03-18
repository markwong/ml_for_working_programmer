(*
QUESTION:
Write an alternative trnaspose function. Instead of turning columns into rows,
it should turn rows into columns.

CORRECT ANSWER:
fun zip_lists([], []) = []
  | zip_lists(x::xs, []) = [x] :: zip_lists(xs, [])
  | zip_lists(x::xs, y::ys) = (x::y) :: zip_lists(xs, ys)

*)
