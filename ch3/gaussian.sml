(* gaussian elimination *)

(* return the row that has the highest absolute value of the head *)
fun pivotrow [] : real list = []
  | pivotrow [row] = row 
  | pivotrow (row1::row2::rows) =
      if abs(hd row1) >= abs (hd row2) then pivotrow (row1::rows)
      else pivotrow (row2::rows)


(* remove the row which head has the value p in the rows *)
fun delrow (p, []) = []
  | delrow (p, row::rows) = 
      if Real.==(p, hd row) then rows
      else row :: delrow (p, rows)


(* multiply elements of a list with constant k *)
fun scalarprod (k, []) = []
  | scalarprod (k, x::xs) = (k*x) :: scalarprod (k, xs)


(* add two rows / vectors *)
fun vectorsum ([], []) : real list = []
  | vectorsum (x, []) = x
  | vectorsum ([], y) = y
  | vectorsum (x::xs, y::ys) = (x+y) :: vectorsum (xs, ys)


(* remove the pivot row, eliminates a column *)
fun gausselim [row] = [row]
  | gausselim rows =
      let
        val p::prow = pivotrow rows
        fun elimcol [] = []
          | elimcol ((x::xs)::rows) =
              vectorsum(xs, scalarprod(~x/p, prow)) :: elimcol rows
      in 
        (p::prow) :: gausselim(elimcol(delrow(p, rows)))
      end


fun solutions [] = [~1.0]
  | solutions ((x::xs)::rows) = 
      let 
        val solns = solutions rows
        fun dotprod ([], []) = 0.0 
          | dotprod (m::ms, n::ns) = (m*n) + dotprod(ms, ns)
      in
        ~(dotprod(solns, xs) / x) :: solns
      end


(* test case *)
val g = gausselim [[ 0.0,  1.0,  2.0,  7.0,  7.0],
           [~4.0,  0.0,  3.0, ~5.0, ~2.0],
           [ 4.0, ~1.0, ~2.0, ~3.0,  9.0],
           [~2.0,  1.0,  2.0,  8.0,  2.0]]

val r =  solutions g 
