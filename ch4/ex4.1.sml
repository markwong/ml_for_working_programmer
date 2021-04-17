(*
QUESTION:
Write an ML function to map persons to integers, mapping Kings to 4, Peers to 3,
Knights to 2 and Peasants to 1. Write a function equivalent to 'superior' that
works by comparing the results of this mapping

*)
datatype person = King
                | Peer of string * string * int
                | Knight of string 
                | Peasant of string 

fun pmap King = 4
  | pmap (Peer _) = 3
  | pmap (Knight _) = 2
  | pmap (Peasant _) = 1


fun super (a, b) = pmap a > pmap b

val persons = [ King, Peer("Degree", "Territory", 9), Knight("MyKnight"), Peasant("MyPeasant") ]

val result1 = pmap (Peer("Degree", "Territory", 9)) 
val result2 = super(Knight("MyKnight"), King)
   
