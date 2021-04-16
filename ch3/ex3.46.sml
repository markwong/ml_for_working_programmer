(*
QUESTION:
Code show, the function that produces the output shown in the text. (Function
Real.toString and Int.toString convert numbers to strings

CORRECT ANSWER:
fun coeffSohw a = 
  if Real.==(a, 1.0) then "" else Real.toString a

fun termShow (0, a) = Real.toString a
  | termShow (1, a) = coeffShow a ^ "x"
  | termShow (m, a) = coeffShow a ^ "x^" ^ Int.toString m

fun showing [] = ""
  | showing ((m, a)::ts) =
      if a<0.0 then " - " ^ termShow(m, ~a) ^ showing ts
      else " + " ^ termShow(m, a) ^ showing ts

fun show [] = "0"
  | show ((m, a)::ts) =
      if a < 0.0 then " - " ^ termShow(m, ~a) ^ showing ts
      else termShow(m, a) ^ showing ts

*)
type t = (int * real) list

fun show [] = ""
  | show ((e, c)::xs : t) =
    if e = 0 then 
      if Real.<(c, 0.0) then " - " ^ Real.toString(c) ^ show(xs)
      else " + " ^ Real.toString(c) ^ show(xs)
    else 
      if Real.<(c, 0.0) 
      then " - " ^ Real.toString(~c) ^ "x^" ^ Int.toString(e) ^ show(xs)
      else Real.toString(c) ^ "x^" ^ Int.toString(e) ^ show(xs)


(* 2.0x^2 - 1.0x + 10 *)
val result = show [(2, 2.0), (1, ~1.0), (0, 10.0)]

