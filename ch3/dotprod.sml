(* Matrix Transposition *)
fun headcol [] = []
  | headcol ((x::_) :: rows) = x :: headcol rows

fun tailcols [] = []
  | tailcols ((_::xs) :: rows) = xs :: tailcols rows

(* To combine all head columns and form into list *)
fun transp ([]::rows) = []
  | transp rows = headcol rows :: transp (tailcols rows)


(* dot product *)
fun dotprod ([], []) = 0.0
  | dotprod (x::xs, y::ys) = x*y + dotprod(xs, ys)

fun rowprod (row, []) = []
  | rowprod (row, col::cols) = dotprod(row, col) :: rowprod(row, cols)

fun rowlistprod ([], cols) = []
  | rowlistprod (row::rows, cols) = rowprod(row,cols) :: rowlistprod(rows, cols)

fun matprod (rowsA, rowsB) = rowlistprod(rowsA, transp rowsB)
