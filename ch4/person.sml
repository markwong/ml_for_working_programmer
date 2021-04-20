(* person *)
datatype person = King
                | Peer of string * string * int
                | Knight of string
                | Peasant of string 

(* constructors *)
val persons = [ 
    King, 
    Peasant "Jack Cade", 
    Knight "Gawain" ]


(* Get the title of person *)
fun title King = "His Majesty the King"
  | title (Peer(deg, terr, _)) = "The " ^ deg ^ " of " ^ terr
  | title (Knight name) = "Sir " ^ name
  | title (Peasant name) = name


(* Get all the Knights from a list *)
fun sirs [] = []
  | sirs ((Knight s) :: ps) = s :: (sirs ps)
  | sirs (p :: ps) = sirs(ps)


(* check superiority *)
fun superior(King, Peer _) = true
  | superior(King, Knight _) = true
  | superior(King, Peasant _) = true
  | superior(Peer _, Knight _) = true
  | superior(Peer _, Peasant _) = true
  | superior(Knight _, Peasant _) = true
  | superior _ = false


(* Introducing Enumeration types *)
datatype degree = Duke | Marquis | Earl | Viscount | Baron


fun lady Duke = "Duchess"
  | lady Marquis = "Marchioness"
  | lady Earl = "Countess"
  | lady Viscount = "Viscountess"
  | lady Baron = "Baroness"



