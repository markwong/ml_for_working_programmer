(*
QUESTION:
Modify 'pathsort' to return [] if the graph has a cycle and the singleton list
[visited] otherwise.

CORRECT ANSWER:
The contorted declaration of 'sortnew' below could be replaced by a 'case'
expression.

fun pathsort2 graph =
let
  fun sort ([], path, visited) = [visited]
    | sort (x::xs, path, visited) =
        if x mem path then []
        else if x mem visited then sort(xs, path, visited)
        else
          let
            fun sortnew [] = [] (* propagate cycle detection *)
              | sortnew [vis] = sort(xs, path, x::vis)
          in
            sortnew(sort(nexts(x, graph), x::path, visited)
          end
  val (xs, _) = ListPair.unzip graph
in
  sort(xs, [] ,[])
end

*)
