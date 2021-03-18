(* Matrix Transposition *)
fun headcol [] = []
  | headcol ((x::_) :: rows) = x :: headcol rows

fun tailcols [] = []
  | tailcols ((_::xs) :: rows) = xs :: tailcols rows

(* To combine all head columns and form into list *)
fun transp ([]::rows) = []
  | transp rows = headcol rows :: transp (tailcols rows)
