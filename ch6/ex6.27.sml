(* QUESTION:
Consider the function ack:
  fun ack (0,n) = n + 1
    | ack (m,0) = ack(m-1,1)
    | ack (m,n) = ack(m-1, ack(m,n-1))

Use a well-founded relation to show that ack(m,n) is defined for all natural numbers m and n.
Prove ack(m,n) > m+n by well-founded induction.

CORRECT ANSWER:
The desired wf relation is the lexicographic ordering of pairs of natural numbers. In the third case of ack, the recursive call ack(m,n-1) decreases the second argument, while the enclosing call to ack decreases the first argument (while greatly increasing the second argument).

The proof that ack(m,n)>m+n follows (as usual) the function's recursive definition. We may assume the inequality for m', n' such that m'<m or m'=m and n'<n.
Now if m=0 then ack(0,n)=n+1>n. If m>0 and n=0 then ack(m,0)=ack(m-1,1)>(m-1)+1=m, using the induction hypothesis for the smaller pair (m-1,1).
For the general case, it helps to write the induction hypothesis as ack(m,n)>=m+n+1. If m,n>0 then ack(m,n)=ack(m-1,ack(m,n-1))>=(m-1)+ack(m,n-1)+1>=(m-1)+m+(n-1)+2 = 2m+n. 
So ack(m,n) >= 2m+n since m>0.

*)
