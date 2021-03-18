(* 
QUESTION:
Decimal numerals can be held as lists of integers from 0 to 9.
Write functions to convert between binary and decimal: both directions.
Compute the factorial of 100.

CORRECT ANSWER:
fun binary_of_int 0 = []
  | binary_of_int n = (n mod 2) :: binary_of_int (n div 2)

val ten = binary_of_int 10

fun binary_of_decimal [] = []
  | binary_of_decimal (d::ds) =
      binsum(0, binary_of_int d, binprod(ten, binary_of_decimal ds))

fun double (0, []) = []
  | double (c, []) = [c]
  | double (c, d::ds) = 
      let 
        val next = c + 2*d
      in
        (next mod 10) :: double(next div 10, ds)
      end

fun decimal_of_binary [] = []
  | decimal_of_binary (p::ps) = double(p, decimal_of_binary ps)

fun binfact n =
  if n = 0 then [1]
  else binprod(binary_of_int n, binfact(n-1))
  
rev (decimal_of_binary (binfact 100))

*)

(* TODO *)
