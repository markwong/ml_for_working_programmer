(*
QUESTION:
Let (visited, cys) be the result of 'cyclesort'. If the graph contains many
cycles, will cys contain a node belonging to each? What can be said about
'visited' if the graph contains cycles?

CORRECT ANSWER:
Every node with an outgoing arc is visited, and every visited node is finally
included in the list 'visited'. It may seem that 'visited' can block the
detection of some cycles, but this list only contains nodes that have been
thoroughly searched below. Therefore 'cys' will indeed contain a member of each
cycle.


*)
