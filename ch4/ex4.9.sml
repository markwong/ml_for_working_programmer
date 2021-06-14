(* QUESTION:
Express the function title using a case expression to distinguish the four constructors of type person.

*)
datatype person = King
    | Peer of string*string*int
    | Knight of string
    | Peasant of string

 
fun title x =
    case x of 
          King                  => "His Majesty the King"
        | Peer (deg, terr, _)   => "The " ^ deg ^ " of " ^ terr
        | Knight name           => "Sir " ^ name
        | Peasant name          => name 

val _ = print(title(Peer("Earl", "Carlisle", 7)) ^ "\n")
        
