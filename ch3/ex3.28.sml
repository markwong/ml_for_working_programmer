(*
QUESTION:
Write a structure Matrix that matches signature ARITH. You can either use the
previous exercise and those of Section 3.10, or write dummy functions. This adds
matrices to our collection of arithmetic structures.

CORRECT ANSWER:
It is best to avoid using names like 'matsum' and 'matprod', instead declaring
'sum' and 'prod' within the structure brackets. The code for the omitted
sections appears either above or in the test.

structure Matrix : ARITH =
struct
  type t = real list list
  val zero = []
  fun sum ...
  fun neg ...
  fun diff (rowsA, rowsB) = sum(rowsA, neg rowsB)
  fun prod ...
  fun inverse ...
  fun quo (rowsA, rowsB) = prod(rowsA, inverse rowsB)
end

*)

(* TODO *)
