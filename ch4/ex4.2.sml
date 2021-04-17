(*
QUESTION:
Modify type 'person' to add the constructor Esquire, whose arguments are a name
and a village (both represented by strings). What is the type of this
constructor? Modify function title to generate, for instance, 
    
    "John Smith, Esq., of Bottisham"

Modify superior to rank Esquire above Peasant and below Knight
*)

datatype person = King
                | Peer of string * string * int
                | Knight of string
                | Esquire of string * string
                | Peasant of string

fun title King = "His Majesty the King"
  | title (Peer(deg, ter, _)) = "The " ^ deg ^ " of " ^ ter
  | title (Knight(name)) = "Sir " ^ name
  | title (Esquire(name, village)) = name ^ ", Esq., of " ^ village

fun superior (King, _) = true
  | superior (Peer _, Knight _) = true
  | superior (Peer _, Esquire _) = true
  | superior (Peer _, Peasant _) = true
  | superior (Knight _, Esquire _) = true
  | superior (Knight _, Peasant _) = true
  | superior (Esquire _, Peasant _) = true
  | superior _ = false

val result1 = title (Esquire("John Smith", "Bottisham"))
val result2 = superior(Knight("MyKnight"), Esquire("MyEsquire", "MyVillage"))

