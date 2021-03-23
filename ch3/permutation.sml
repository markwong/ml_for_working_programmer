(* Permutation *)
fun next (xlist, y::ys) : int list =
  if hd xlist <= y then next(y::xlist, ys)
  else (* swap y with greatest xk such that x>=xk>y *)
    let
      fun swap [x] = y::x::ys
        | swap (x::xk::xs) = (* x >= xk *)
            if xk > y then x::swap(xk::xs)
            else (y::xk::xs) @ (x::ys)
            (* x > y >= xk >= xs *)

    in
      swap(xlist)
    end

fun nextperm (y::ys) = next([y], ys)

