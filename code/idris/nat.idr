module nat

import bool
import pair
import eq
import Serialize

data nat = O | S nat

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n') = mult (S n') (fact n')

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

expp: nat -> nat -> nat
expp O x = O
expp x O = S O
expp x (S n) = mult x (expp x (S n))

lepp: nat-> nat -> bool
lepp O O = true
lepp O m = true
lepp (S n) O = false
lepp (S n) (S m) = lepp n m

eqpp: nat -> nat -> bool
eqpp O O = true
eqpp O m = false
eqpp n O = false
eqpp (S n) (S m) = eqpp n m

gtpp: nat -> nat -> bool
gtpp O O = false
gtpp m O = true
gtpp O n = false
gtpp (S n) (S m) = gtpp n m

gepp: nat -> nat -> bool
gepp m O = true
gepp O n = false
gepp O O = true
gepp (S n) (S m) = gepp n m

ltpp: nat -> nat -> bool
ltpp O m = true
ltpp n O = false
ltpp O O = false
ltpp (S n) (S m) = ltpp n m

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)


