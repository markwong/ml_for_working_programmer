(* graph *)
fun nexts (_, [])  = []
  | nexts (a, (x, y) :: pairs) = 
      if a = x then y :: nexts(a, pairs)
      else nexts(a, pairs)


(* find if it is a member of a list *)
infix mem
fun (_ mem []) = false
  | (x mem (y::ys)) = 
      if x = y then true
      else (x mem ys)


(* depth first search version 1*)
fun depthf ([], graph, visited) = rev visited
  | depthf (x::xs, graph, visited) =
      if x mem visited then depthf(xs, graph, visited)
      else depthf(nexts(x, graph) @ xs, graph, x::visited)


(* depth first search version 2 *)
fun depth ([], graph, visited) = visited
  | depth (x::xs, graph, visited) = 
      depth(xs, graph, 
        if x mem visited then visited 
        else depth(nexts(x, graph), graph, x::visited))


(* topological sorting *)
fun topsort graph =
let 
  fun sort ([], visited) = visited
    | sort (x::xs, visited) = 
        sort(xs, if x mem visited then visited
                 else x :: sort(nexts(x, graph), visited))
  val (starts, _) = ListPair.unzip graph
in
  sort(starts, [])
end


(* pathsort detects cycle *)
fun pathsort graph =
let
  fun sort ([], path, visited) = visited
    | sort (x::xs, path, visited) =
        if x mem path then hd [] (* abort! *)
        else sort(xs, path,
                    if x mem visited then visited
                    else x :: sort(nexts(x, graph), x :: path, visited))
  val (starts, _) = ListPair.unzip graph
in
  sort(starts, [], [])
end


(* newvisit - a list of visits and a list of nodes found in cycles *)
fun newvisit (x, (visited, cys)) = (x::visited, cys)


(* cyclesort *)
fun cyclesort graph = 
let
  fun sort ([], path, (visited, cys)) = (visited, cys)
    | sort (x::xs, path, (visited, cys)) =
        sort(xs, path,
                if x mem path then (visited, x::cys)
                else if x mem visited then (visited, cys)
                else newvisit(x, sort(nexts(x, graph), x :: path, (visited,
                cys))))
  val (starts, _) = ListPair.unzip graph
in
  sort(starts, [], ([], []))
end


val graph = [("a", "b"), ("a", "c"), ("a", "d"), ("b", "e"), ("c", "f"),
              ("d", "e"), ("e", "f"), ("e", "g")]

val grwork = [("wake", "shower"), ("shower", "dress"), ("dress", "go"),

              ("wake", "eat"), ("eat", "washup"), ("washup", "go")]

(* test *)
fun test ([], acc) = acc
  | test (x::xs, acc) = test (xs, x::test(xs, acc))
