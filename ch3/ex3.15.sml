(* 
QUESTION:
Write functions to compute the binary sum and product of a list of boolean
values, using no built-in arithmetic.

CORRECT ANSWER:
fun bcarry (false, ps) = ps
  | bcarry (true, []) = [true]
  | bcarry (true, p::ps) = not p :: bcarry (p, ps)

(* Carry if at least two bits are true *)
fun carry3 (a, b, c) = (a andalso b) orelse (a andalso c) orelse (b andalso c)

(* Binary sum: since b=c computes not(b XOR c), the result is a XOR  b XOR c *)
fun sum3 (a, b, c) = (a = (b = c))

fun bsum (c, [], qs) = bcarry (c, qs)
  | bsum (c, ps, []) = bcarry (c, ps)
  | bsum (c, p::ps, q:qs) = sum3 (c, p, q) :: bsum (carry3 (c, p, q), ps, qs)

fun bprod ([], _) = []
  | bprod (false::ps, qs) = false :: bprod (ps, qs)
  | bprod (true::ps, qs) = bsum (false, qs, false :: bprod (ps, qs))

*)

(* INCORRECT ANSWER *)

fun bincarry (0, ps) = ps
  | bincarry (1, []) = [1]
  | bincarry (1, p::ps) = (1-p) :: bincarry (p, ps)

fun binsum (c, [], qs) = bincarry (c, qs)
  | binsum (c, ps, []) = bincarry (c, ps)
  | binsum (c, p::ps, q::qs) = 
      ((c+p+q) mod 2) :: binsum ((c+p+q) div 2, ps, qs)

fun binprod ([], _) = []
  | binprod (0::ps, qs) = 0 :: binprod (ps, qs)
  | binprod (1::ps, q::qs) = binsum (0, qs, 0 :: binprod (ps, qs))
