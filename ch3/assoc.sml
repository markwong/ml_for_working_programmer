(* association list *)
fun assoc ([], _) = []
  | assoc ((k, v)::xs, lookup) = if lookup = k then [v] else assoc(xs, lookup)
