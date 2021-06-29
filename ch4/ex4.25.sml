(* QUESTION:
Write a new version of structure Dict where a dictionary is represented by a list of (key, item) pairs ordered by the keys.

CORRECT ANSWER:
structure Dict' : DICTIONARY = struct
    type key = string
    type 'a t = (key * 'a) list
    exception E of key

    val empty = []

    fun lookup ((a,x)::pairs, b) =
        (case String.compare(a,b) of
            GREATER     => raise E b
          | EQUAL       => x
          | LESS        => lookup(pairs, b))
      | lookup ([], b) = raise E b

    fun insert ((a,x)::pairs, b, y) =
        (case String.compare(a,b) of
            GREATER     => (b,y)::(a,x)::pairs
          | EQUAL       => raise E b
          | LESS        => (a,x)::insert(pairs, b, y))
      | insert ([], b, y) = [(b,y)]

    fun update ((a,x)::pairs, b, y) =
        (case String.compare(a,b) of
            GREATER     => (b,y)::(a,x)::pairs
          | EQUAL       => (b,y)::pairs
          | LESS        => (a,x)::update(pairs, b, y))
      | update ([], b, y) = [(b,y)]

end
*)

signature DICTIONARY = sig
    type key
    type 'a t
    exception E of key

    val empty : 'a t
    val lookup : 'a t * key -> 'a
    val insert : 'a t * key * 'a -> 'a t
    val update : 'a t * key * 'a -> 'a t
end

structure Dict : DICTIONARY = struct
    type key = string
    type 'a t = (key * 'a) list 
    exception E of key

    val empty = []

    fun lookup ([], b) = raise E b
      | lookup ((a, x)::xs, b) = 
            if String.compare(a, b) = EQUAL then x
            else lookup(xs, b)

    fun insert ([], b, y) = [(b, y)]
      | insert (l as (a, x)::xs, b, y) =
            if String.compare(a, b) = EQUAL then raise E b
            else (b, y)::l 

    fun update ([], b, y) = [(b, y)]
      | update ((a, x)::xs, b, y) =
            if String.compare(a, b) = EQUAL then (a, y)::xs
            else (a, x)::update(xs, b, y)

end

val i0 = Dict.insert([], "France", 33)
val i1 = Dict.insert(i0, "Egypt", 20)
val i2 = Dict.insert(i1, "Hungary", 36)
val i3 = Dict.insert(i2, "Mexico", 52)
val i4 = Dict.insert(i3, "Japan", 81)

val l0 = Dict.lookup(i0, "France")
val l1 = Dict.lookup(i3, "Mexico")
