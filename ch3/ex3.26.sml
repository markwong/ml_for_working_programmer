(* 
QUESTION:
Write a function to compute the determinant of a matrix.

CORRECT ANSWER:
The determinant of a triangular matrix equals the product of the entries on the
main diagonal. However, each non-trivial pivot step in the Gaussian elimination
re-orders the rows, which changes the determint's sign. So we must modify
gausselim to keep track of the sign changes, and we must include the sign in the
product of the diagonal entries.


fun signed_gausselim [row] = ([row], 1.0)
  | signed_gausselim rows = 
      let 
        val p::prow = pivotrow rows
        val samerow = Real.==(abs (hd rows)), abs p) 
        fun elimcol [] = []
          | elimcol ((x::xs)::rows) =
              vectorsum(xs, scalarprod(~x/p, prow)) :: elimcol rows
        val (g_rows, odd) = signed_gausselim(elimcol(delrow(p, rows)))
      in 
        ((p::prow) :: g_rows, if samerow then odd else ~odd)
      end

fun diagprod ([], e: real) = e
  | diagprod ((x::xs)::rows, e) = diagprod(rows, x*e)

fun det rows = diagprod(signed_gausselim rows)

*)

(* TODO *)
