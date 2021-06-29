signature DICTIONARY = sig
    type key
    type 'a t
    exception E of key

    val empty : 'a t
    val lookup : 'a t * key -> 'a
    val insert : 'a t * key * 'a -> 'a t
    val update : 'a t * key * 'a -> 'a t
end

datatype 'a tree = Lf | Br of 'a * 'a tree * 'a tree

structure Dict : DICTIONARY = struct
    type key = string
    type 'a t = (key * 'a) tree
    exception E of key

    val empty = Lf

    fun lookup (Lf, b) = raise E b
      | lookup (Br((a, x), t1, t2), b) = 
            (case String.compare(a, b) of
                GREATER     => lookup(t1, b)
              | EQUAL       => x
              | LESS        => lookup(t2, b))

    fun insert (Lf, b, y) = Br((b, y), Lf, Lf)
      | insert (Br((a, x), t1, t2), b, y) =
            (case String.compare(a, b) of
                GREATER     => Br((a, x), insert(t1, b, y), t2)
              | EQUAL       => raise E b
              | LESS        => Br((a, x), t1, insert(t2, b, y))) 


    fun update (Lf, b, y) = Br((b, y), Lf, Lf)
      | update (Br((a, x), t1, t2), b, y) =
            (case String.compare(a, b) of 
                GREATER     => Br((a, x), update(t1, b, y), t2)
              | EQUAL       => Br((a, y), t1, t2)  
              | LESS        => Br((a, x), t1, update(t2, b, y)))

end

val ctree0 = Dict.insert(Lf, "France", 33)
val ctree1 = Dict.insert(ctree0, "Egypt", 20)
val ctree2 = Dict.insert(ctree1, "Hungary", 36)
val ctree3 = Dict.insert(ctree2, "Mexico", 52)
val ctree4 = Dict.insert(ctree3, "Japan", 81)

val l0 = Dict.lookup(ctree0, "France")
val l1 = Dict.lookup(ctree3, "Mexico")
val l2 = Dict.lookup(ctree0, "Mexico")
