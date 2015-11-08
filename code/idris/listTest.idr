module listTest

import list
import nat
import bool
import eq
import Serialize

lO: list nat
lO = nil

l1: list nat
l1 = O :: nil

l2: list nat
l2 = (S O) :: ((S (S O)) :: nil)

l3: list nat
l3 = (S O) :: (S (S O)) :: ((S (S (S O))) :: nil)

len_l3: nat
len_l3 = length l3

map1: list bool
map1 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

filter1: list nat
filter1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

isThree: bool
isThree = (member (S (S (S O))) l2)


s: String
s = toString l2

