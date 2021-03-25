(* set operations *)


(* check if it is a memeber of a list *)
infix mem;
fun (x mem []) = false
  | (x mem (y::l)) = 
      x = y orelse (x mem l)


(* add new element to a list if it is new *)
fun newmem (x, xs) = if (x mem xs) then xs else x::xs


(* setof to transform a list to a set by eliminating repeated elements *)
fun setof [] = []
  | setof (x::xs) = newmem(x, setof xs)


(* union combines two lists with distinct elements *)
fun union ([], ys) = ys
  | union (x::xs, ys) = newmem(x, union(xs, ys))


(* intersection combines two lists with common elements *)
fun inter([], ys) = [] 
  | inter(x::xs, ys) =
      if (x mem ys) then x::inter(xs, ys)
      else inter(xs, ys)


(* check if A is a subset of B *)
infix sub
fun ([] sub ys) = true (* an empty set is a subset of any set *)
  | (x::xs sub ys) = 
      (x mem ys) andalso (xs sub ys)


(* set equality *)
infix seq
fun (xs seq ys) = (xs sub ys) andalso (ys sub xs)


(* power set *)
fun powset ([], base) = [base]
  | powset (x::xs, base) =
      powset(xs, base) @ powset(xs, x::base)


(* cartesian product *)
fun cartprod ([], ys) = []
  | cartprod (x::xs, ys) =
      let 
        val xsprod = cartprod(xs, ys)
        fun pairx [] = xsprod
          | pairx (y::ytail) = (x, y) :: (pairx ytail)
      in
        pairx ys
      end
