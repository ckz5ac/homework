module nat

import bool
import pair
import unit
import nat
import Serialize

n1: nat
n1 = add O (S O)

n2: nat
n2 = add (S (S O)) (S (S O))

n3: nat
n3 = mult O (S O)

n4: nat
n4 = mult (S (S O)) (S O)

n5: nat
n5 = fact (S O)

n6: nat
n6 = fact O

n7: nat
n7 = sub (S (S O)) (S (S O))

n8: nat
n8 = sub O (S (S (S O)))

n9: nat
n9 = sub (S (S O)) O

n10: nat
n10 = expp O (S O)

n11: nat
n11 = expp (S (S O)) O

n12: nat
n12 = expp (S (S O)) (S O)

n13: bool
n13 = lepp (S (S O)) (S O)

n14: bool
n14 = lepp (S (S O)) O

m1: bool
m1 = lepp O (S (S O))

n15: bool
n15 = lepp (S (S (S O ))) ((S (S O)))

n16: bool
n16 = eqpp O O

n17: bool
n17 = eqpp (S (S (S O))) O

m2: bool
m2 = eqpp O (S (S (S O)))

m3: bool
m3 = eqpp (S O) (S (S O))

n18: bool
n18 = gtpp (S (S O)) (S O)

n19: bool
n19 = gtpp (S (S O)) O

m4: bool
m4 = gtpp O (S (S (S O)))

n20: bool
n20 = ltpp O (S (S O))

n21: bool
n21 = ltpp (S (S O)) (S (S (S O)))

m5: bool
m5 = ltpp (S (S O)) O

m6: bool
m6 = gepp (S O) O

m7: bool
m7 = gepp O (S (S O))

m8: bool
m8 = gepp (S (S (S O))) (S O)

h4: nat
h4 = add (S (S O) (S (S (S O)))

s: String
s = toString h4
