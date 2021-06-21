(* Write a function to convert a postorder list of labels to a balanced tree 

CORRECT ANSWER:
We exploit the previous exercise. This approach is fastest because any direct method would require access to the last element of the list.

fun balpostorder xs = reflect (balpreorder(rev xs))

*)
