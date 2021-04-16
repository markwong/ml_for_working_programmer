(*
QUESTION:
Code 'diff', a function that computers the difference between two polynomials.
Using termprod it can be coded in one line, but not efficiently.


CORRECT ANSWER:
fun diff ([], us) = termprod((0, ~1.0), us)
  | diff (ts, []) = ts
  | diff ((m, a)::ts, (n, b)::us) =
      if m > n then (m, a) :: diff(ts, (n, b)::us)
      else if n > m then (n, ~b) :: diff((m, a)::ts, us)
      else (* m = n *)
        if Real.==(a-b, 0.0) then diff(ts, us)
        else (m, a-b) :: diff(ts, us)

*)

type t = (int * real) list

fun diff ([], us) = us : t
  | diff (ts, []) = ts
  | diff ((m, a)::ts, (n, b)::us) = 
      if m > n then (m, a) :: diff(ts, (n, b)::us)
      else if m < n then (n, b) :: diff((m, a)::ts, us)
      else (* m = n *)
        if Real.==(a-b, 0.0) then diff(ts, us)
        else (m, a-b) :: diff(ts, us)


val p1 = [(1, 1.0), (0, 1.0)]
and p2 = [(2, 1.0), (0, ~2.0)]

val r = diff (p1, p2)

