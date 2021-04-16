(* generate 10000 random numbers *)
fun nextrand seed =
let
  val a = 16807.0 and m = 2147483647.0
  val t = a * seed
in
  t - m * real(floor(t/m))
end


(* generates a random list of length n starting from seed *)
fun randlist (n, seed, tail) = 
  if n = 0 then (seed, tail)
  else randlist(n-1, nextrand seed, seed :: tail)


(* insert element in ascending order *)
fun ins(x, []) : real list = [x]
  | ins(x, y::ys) = 
      if x <= y then x::y::ys
      else y::ins(x, ys)


(* insertion sort *)
fun insort [] = []
  | insort (x::xs) =
      ins(x, insort(xs))


(* quick sort *)
fun quick [] : real list= []
  | quick [x] = [x]
  | quick (a::bs) =
      let
        fun partition (left, right, []) = (quick left) @ (a :: quick right)
          | partition (left, right, x::xs) = 
              if x <= a then partition(x::left, right, xs)
              else partition(left, x::right, xs)
      in
        partition([], [], bs)
      end


(* merge sorted lists *)
fun merge ([], ys) : real list = ys
  | merge (xs, []) = xs
  | merge (x::xs, y::ys) =
      if x <= y then x :: merge(xs, y::ys)
      else y :: merge(x::xs, ys)


(* top-down merge sort *)
fun tmergesort [] = []
  | tmergesort [x] = [x]
  | tmergesort xs =
      let
        val k = length xs div 2
      in
        merge(tmergesort(List.take(xs, k)), tmergesort(List.drop(xs, k)))
      end


(* top-down merge sort version 2 *)
fun tmergesort' xs =
let
  fun sort (0, xs) = ([], xs)
    | sort (1, x::xs) = ([x], xs)
    | sort (n, xs) = 
        let
          val (l1, xs1) = sort((n+1) div 2, xs)
          val (l2, xs2) = sort(n div 2, xs1)
        in
          (merge(l1, l2), xs2)
        end
  val (l, _) = sort(length xs, xs)
in
  l
end


(* bottom-up merge sort *)
fun mergepairs ([l], k) = [l]
  | mergepairs (l1::l2::ls, k) =
      if k mod 2 = 1 then l1::l2::ls
      else mergepairs(merge(l1, l2)::ls, k div 2)

fun sorting ([], ls, k) = hd( mergepairs(ls, 0))
  | sorting (x::xs, ls, k) =
      sorting(xs, mergepairs([x]::ls, k+1), k+1)


(* smooth sort *)
fun nextrun (run, []) = (rev run, [] : real list)
  | nextrun (run, x::xs) = if x < hd run then (rev run, x::xs)
                                         else nextrun(x::run, xs)

fun samsorting([], ls, k) = hd(mergepairs(ls, 0))
  | samsorting(x::xs, ls, k) =
      let 
        val (run, tail) = nextrun([x], xs)
      in
        samsorting(tail, mergepairs(run::ls, k+1), k+1)
      end


fun samsort xs = samsorting(xs, [[]], 0)

val (seed, rs) = randlist(10000, 1.0, [])


