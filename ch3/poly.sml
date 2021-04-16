(* polynomial *)
type t = (int * real) list

fun sum ([], us) = us : t
  | sum (ts, []) = ts
  | sum((m, a)::ts, (n, b)::us) =
      if m > n then (m, a) :: sum(ts, (n, b) :: us)
      else if n > m then (m, a) :: sum(us, (m, a) :: ts)
      else (* m = n *)
        if Real.==(a+b, 0.0) then sum(ts, us)
        else (m, a+b) :: sum(ts, us)


fun termprod ((m, a), []) = [] : t
  | termprod ((m, a), (n, b)::ts) =
      (m+n, a*b) :: termprod((m, a), ts)


(* naive *)
fun nprod ([], us) = []
  | nprod ((m, a)::ts, us) = sum(termprod((m, a), us), nprod(ts, us))


fun prod ([], us) = []
  | prod ([(m, a)], us) = termprod((m, a), us)
  | prod (ts, us) = 
      let
        val k = length ts div 2
      in
        sum(prod(List.take(ts, k), us), prod(List.drop(ts, k), us))
      end


