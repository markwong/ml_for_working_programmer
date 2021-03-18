(*
QUESTION:
Write a function to divide one binary numeral by another.

CORRECT ANSWER:

infix $$
fun 0 $$ [] = []
  | n $$ [~1] = [~1]
  | n $$ ns = n::ns

fun borrow (0, ps) = ps
  | borrow (~1, []) = [~1]
  | borrow (~1, p::ps) = (1-p) $$ borrow(p-1, ps)

fun diffb (b, ps, []) = borrow(b, ps)
  | diffb (b, [], q::qs) = ((b-q) mod 2) $$ diffb((b-q) div 2, [], qs)
  | diffb (b, p::ps, q::qs) = ((b+p-q) mod 2) $$ diffb((b+p-q) div 2, ps, qs)

fun diff (ps, qs) = diffb(0, ps, qs)

fun divide (ps, ds, n, qs) =
  if n = 0 then (qs, ps)
  else 
    let 
      val rs = diff (ps, ds) 
    in
      if rs = [~1] then 
        divide(0::ps, ds, n-1, 0::qs)
      else 
        divide(0::rs, ds, n-1, 1::qs)
*)

(* DON'T KNOW HOW TO DO IT, TODO *)
