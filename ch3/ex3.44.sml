(* 
QUESTION:
Write a version of samsort that uses both increasing and decreasing run.


CORRECT ANSWER:
One approach is to define two separate runs-counting functions and to modify
samsort to call the correct one by looking at the next two elements to be
sorted. This version runs about 9% faster on the standard 10000 random numbers.
It finds only 4102 runs, while nextrun finds 5014 runs.

*)
fun next_irun(run, []) = (rev run , [] : real list)
  | next_irun(run, x::xs) =
      if x < hd run then (rev run, x::xs)
      else next_irun(x::run, xs)


fun next_drun(run, []) = (run, [] : real list)
  | next_drun(run, x::xs) = 
      if x > hd run then (run, x:xs)
      else next_drun(x::run, xs)


fun samsorting2 ([], ls, k) = hd(mergepairs(ls, 0))
  | samsorting2 ([x], ls, k) = hd(mergepairs([x]::ls, 0))
  | samsorting2 (x::y::xs, ls, k) = 
      let
        val (run, tail) = if x <= y then next_irun([y, x], xs)
                                    else next_drun([y, x], xs)
      in
        samsorting2(tail, mergepairs(run::ls, k+1), k+1)
      end
