(*
QUESTION:
Write a function to invert a matrix.

CORRECT ANSWER:
Function 'inverse' joins an n by n identify matrix to the right of its argument
and performs one Gaussian elimination. To extract the answer, it performs n back
substitutions, selecting columns n+1, ..., 2n in succession. Faster code could
undoubtedly be written.

fun zeroes 0 = []
  | zeroes n = 0.0 :: zeroes(n-1)

fun rsolutions (endrow, []) = endrow
  | rsolutions (endrow, (x::xs)::rows) = 
      let 
        val solns = rsolutions(endrow, rows)
      in 
        ~(dotprod(solns, xs) / x) :: solns 
      end

fun inverse rows = 
  let 
    val n = length rows
    fun idrow(x, k) = zeroes(k-1) @ [x] @ zeroes(n-k)
    fun newrows ([], k) = []
      | newrows (row::rows, k) =
          (row @ idrow(1.0, k)) :: newrows(rows, k+1)
    val ge = gausselim(newrows(rows, 1))
    fun newcols k =
      if k>n then []
      else take(n, rsolutions(idrow(~1.0, k), ge)) :: newcols(k+1)
  in 
    transp(newcols 1)
  end

*)

(* TODO *)
