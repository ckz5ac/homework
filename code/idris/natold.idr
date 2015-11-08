Welcome to the Idris REPL!
Idris 0.9.18.1-git:b6c9ef8

Type checking ./colors.idr
Type checking ./colors.idr
Type checking ./nat.idr
λΠ> :t O
O : nat
λΠ> S O
S O : nat
λΠ> S (S O)
S (S O) : nat
Type checking ./nat.idr
Type checking ./nat.idr
λΠ> isZero (S O)
false : bool
λΠ> isZero (S (S (S (S O))))
false : bool
Type checking ./nat.idr
λΠ> nat.succ (S O)
S (S O) : nat
λΠ> nat.succ 3
nat is not a numeric type
λΠ> succ O
Can't disambiguate name: Prelude.succ, nat.succ
λΠ> nat.succ O
S O : nat
λΠ> nat.succ (S (S O))
When checking an application of constructor nat.S:
        No such variable o
λΠ> nat.pred (S O) 
No such variable nat.pred
Type checking ./nat.idr
λΠ> nat.pred (S O)
Can't disambiguate name: Prelude.Nat.pred, Prelude.pred, nat.pred
λΠ> nat.pred O
O : nat
Type checking ./nat.idr
λΠ> nat.pred (S O)
O : nat
λΠ> nat.pred (S (S (S O)))
S (S O) : nat
λΠ> nat.pred (S (S (S (S (S O)))))
S (S (S (S O))) : nat
Type checking ./nat.idr
λΠ> evenb O
true : bool
λΠ> 
