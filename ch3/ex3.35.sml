(* 
QUESTION:
The following function is simpler than 'cartprod'. Is it better for computing
Cartesian products?

    fun cprod ([], ys) = []
      | cprod (x::xs, ys) = 
          let 
            fun pairx [] = cprod(xs ,ys)
              | pairx (y::ytail) = (x,y) :: (pairx ytail)
          in
            pairx ys
          end


CORRECT ANSWER:
The depth of recursive calls is much greater for cprod. If length(xs) = m and
length(ys) = n then 'cartprod' generates m+n nested calls while 'cprod'
generates m*n nested calls.

*)


