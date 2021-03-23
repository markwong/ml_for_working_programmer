(*
QUESTION:
Write te steps to compute nextperm[2,3,1,4]

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


CORRECT ANSWER:
nextperm [2,3,1,4]
=> next([2], [3,1,4])
=> next(3::[2], [1,4])
=> swap [3,2] (where y=1 and ys=[4])
=> 3 :: swap [2] (where y=1 and ys=[4])
=> 3 :: 1 :: 2 :: [4]
=> [3,1,2,4]

*)
