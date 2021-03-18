(* 
QUESTION:
Two matrices of the same dimensions are added by adding corresponding
components; thus
  [[1,2],[3,4]] + [[1,2],[3,4]] = [[1+1, 2+2], [3+3, 4+4]]

*)

fun rowadd ([], []) = []
  | rowadd (x, []) = x
  | rowadd ([], y) = y
  | rowadd (x::xs, y::ys) = (x+y) :: rowadd(xs, ys)


fun matadd ([], []) = []
  | matadd (x, []) = x
  | matadd ([], y) = y
  | matadd (x::xs, y::ys) = rowadd(x,y) :: matadd(xs,ys) 
