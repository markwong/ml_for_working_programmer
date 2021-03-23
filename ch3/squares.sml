(* Dijkstra algorithm of finding out solutions for the sum of two squares *)
fun squares r =
let 
  fun between (x,y) = (* all pairs between x and y *)
  let
    val diff = r - x*x
    fun above y = (* all pairs above y *)
      if y>x then []
      else if y*y < diff then above(y+1)
      else if y*y = diff then (x,y) :: between(x-1, y+1)
      else (* y*y > diff *) between(x-1, y)
  in
    above y
  end

  val firstx = floor(Math.sqrt(real r))
in
  between(firstx, 0)
end
