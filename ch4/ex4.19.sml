(* QUESTION:
Describe how inorder(birnam) and inord(birnam, []) are evaluated, reporting how many cons operations are performed.

CORRECT ANSWER:
This is a bit sketchy but tries to indicate how much time is wasted performing appends. 
inorder(birnam) performs 9 cons operations while inord(birnam,[]) performs only 4.

inorder(Br("The",Br("wood",Lf,Br #),Lf))
==> inorder(Br("wood",Lf,Br("of",Br #,Lf))) @ ["The"] @ inorder Lf
==> (inorder Lf @ ["wood"] @ inorder(Br("of",Br #,Lf))) @ ["The"] @ inorder Lf
==> ([] @ ["wood"] @ inorder(Br("of",Br #,Lf))) @ ["The"] @ inorder Lf
==> (["wood"] @ inorder(Br("of",Br #,Lf))) @ ["The"] @ inorder Lf
==> (["wood"] @ (inorder(Br("Birnam",Lf,Lf)) @ ["of"] @ inorder Lf)) @
    ["The"] @ inorder Lf
==> (["wood"] @
     ((inorder Lf @ ["Birnam"] @ inorder Lf) @ ["of"] @ inorder Lf)) @
    ["The"] @ inorder Lf
==> (["wood"] @ (([] @ ["Birnam"] @ inorder Lf) @ ["of"] @ inorder Lf)) @
    ["The"] @ inorder Lf
==> (["wood"] @ ((["Birnam"] @ inorder Lf) @ ["of"] @ inorder Lf)) @
    ["The"] @ inorder Lf
==> (["wood"] @ ((["Birnam"] @ []) @ ["of"] @ inorder Lf)) @
    ["The"] @ inorder Lf
==> (["wood"] @ (["Birnam"] @ ["of"] @ inorder Lf)) @ ["The"] @ inorder Lf
==> (["wood"] @ (["Birnam","of"] @ inorder Lf)) @ ["The"] @ inorder Lf
==> (["wood"] @ (["Birnam","of"] @ [])) @ ["The"] @ inorder Lf
==> (["wood"] @ ("Birnam"::(["of"] @ []))) @ ["The"] @ inorder Lf
==> (["wood"] @ ["Birnam","of"]) @ ["The"] @ inorder Lf
==> ["wood","Birnam","of"] @ ["The"] @ inorder Lf
==> "wood"::(["Birnam","of"] @ ["The"]) @ inorder Lf
==> "wood"::"Birnam"::(["of"] @ ["The"]) @ inorder Lf
==> ["wood","Birnam","of","The"] @ inorder Lf
==> ["wood","Birnam","of","The"] @ []
==> "wood"::(["Birnam","of","The"] @ [])
==> "wood"::"Birnam"::(["of","The"] @ [])
==> "wood"::"Birnam"::("of"::(["The"] @ []))
==> ["wood","Birnam","of","The"]

inord(Br("The", Br("wood",Lf,Br("of",Br("Birnam",Lf,Lf),Lf)),Lf))
=> inord(Br("wood",Lf,Br("of",Br("Birnam",Lf,Lf),Lf)), "The"::inord(Lf,[]))
=> inord(Br("wood",Lf,Br("of",Br("Birnam",Lf,Lf),Lf)), ["The"])
=> inord(Lf, "wood"::inord(Br("of",Br("Birnam",Lf,Lf),Lf), ["The"]))
=> inord(Lf, "wood"::inord(Br("Birnam",Lf,Lf), "of"::inorder(Lf, ["The"])))
=> inord(Lf, "wood"::inord(Br("Birnam",Lf,Lf), ["of", "The"]))
=> inord(Lf, "wood"::inord(Lf, "Birnam"::inord(Lf, ["of", "The"])))
=> inord(Lf, "wood"::inord(Lf, "Birnam"::["of", "The"]))
=> inord(Lf, "wood"::["Birnam", "of", "The"])
=> inord(Lf, ["wood", "Birnam", "of", "The"])
=> ["wood", "Birnam", "of", "The"]
*)
