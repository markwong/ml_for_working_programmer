(*
QUESTION:
Using the results of the previous exercise, or by writing dummy functions,
extend structure Bin so that it matches signature ARITH
*)

signature ARITH = sig
  type t
  val zero : t
  val sum : t * t -> t
  val diff : t * t -> t
  val prod : t * t -> t
  val quo : t * t -> t
end

structure Bin : ARITH = struct
  type t = int list

  val zero = []

  fun carry (0, ps) = ps 
    | carry (1, []) = [1]
    | carry (1, p::ps) = (1-p) :: carry(p, ps)

  fun sumc (c, [], qs) = carry (c,qs)
    | sumc (c, ps, []) = carry (c,ps)
    | sumc (c, p::ps, q::qs) = ((c+p+q) mod 2)  ::  sumc((c+p+q) div 2, ps, qs)

  fun sum (ps,qs) = sumc (0,ps,qs)

  fun prod ([], _) = []
    | prod (0::ps, qs) = 0::prod(ps,qs)
    | prod (1::ps, qs) = sum(qs, 0::prod(ps,qs))

  (** Subtraction **)

  (* Build a list of bits, propagating ~1 and suppressing leading zeros *)
  infix $$
  fun 0 $$ [] = []
    | n $$ [~1] = [~1]
    | n $$ ns = n::ns

  fun borrow (0, ps) = ps
    | borrow (~1, []) = [~1]
    | borrow (~1, p::ps) = (1-p) $$ borrow(p-1, ps)

  (* EXERCISE.  Difference between two binary numbers, with borrowing *)
  fun diffb (b, ps, []) = borrow (b,ps)
    | diffb (b, [], q::qs) = ((b-q) mod 2) $$ diffb((b-q) div 2, [], qs)
    | diffb (b, p::ps, q::qs) = ((b+p-q) mod 2) $$ diffb((b+p-q) div 2, ps, qs) 
  
  fun diff (ps,qs) = diffb (0,ps,qs) 
    
  (** EXERCISE.  * Division * **) 
  fun divide (ps,ds,n,qs) = 
    if n=0 then (qs,ps) 
    else 
      let 
        val rs = diff (ps,ds) 
      in 
        if rs = [~1] then divide(0::ps, ds, n-1, 0::qs) 
        else divide(0::rs, ds, n-1, 1::qs) 
      end

  (* Scan down list counting bits in k; get position of last "1" (in n) *)
  fun lastone (n,k,[]) = n
    | lastone (n,k,0::ps) = lastone(n,k+1,ps)
    | lastone (n,k,1::ps) = lastone(k,k+1,ps)

  fun addzeros (0,ds) = ds
    | addzeros (k,ds) = 0::addzeros(k-1,ds)

  fun quorem (ps,ds) = 
  let 
    val n = lastone(0,1,ps) - lastone(0,1,ds) 
  in 
    if n<0 then ([0],ps) else 
      let 
        val (qs,rs) = divide(ps, addzeros(n,ds), n+1, []) 
      in 
        if length rs < n+1 then (qs,rs) 
        else (qs, List.drop(rs,n+1)) 
      end 
  end 
  
  fun quo (ps,qs) = #1(quorem(ps,qs))
  and rem (ps,qs) = #2(quorem(ps,qs)) 
  
  fun gcd(ms,ns) = 
    if lastone(0,1,ms)=0 then ns else gcd(rem(ns,ms), ms) 
  
end
