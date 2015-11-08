module list_nat

import nat
import pair

data list_nat = nil | cons nat list_nat

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O)(cons (S (S O))(cons (S (S (S O))) nil)))

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

len_l3: nat
len_l3 = length l3

append: pair list_nat list_nat -> list_nat
append (mkPair nil (cons h t)) = cons h t
append (mkPair (cons h1 t1) (cons h2 t2)) = cons h1 (append (mkPair t1 (cons h2 t2)))
