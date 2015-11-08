module set_adt_test

import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list

z: set nat
z = emptySet
--expect mkSet nil

d: set nat
d = set_insert  O (mkSet ((S (S (S O)))::nil))
--expect O::(S (S (S O)))::nil


e: list nat
e = list_remove O nil
--expect nil

f: list nat
f = list_remove O ((S (S (S O)))::nil)
--expect (S (S (S O)))::nil

g: set nat
g = set_remove (S (S O)) (mkSet (O::(S (S O))::nil))
--expect O::(S(S(S O)))::nil

h: nat
h = set_cardinality (mkSet (true::false::true::nil))
--expect 3

i: bool
i = set_member true (mkSet (false::false::true::nil))
--expect true

k: bool
k = set_member false (mkSet (true::true::true::nil))
--expect false

l: list bool
l = combine (false::false::nil) (false::nil)
--expect (false::false::false::nil)

m: set bool
m = set_union (mkSet nil) (mkSet (false::false::true::nil))
--expect (mkSet false::false::true::nil)

n: set bool
n = set_union (mkSet (true::nil)) (mkSet (false::false::nil))
--expect (mkSet true::False::False::nil)

o: list bool
o = intersect nil (true::nil)
--expect nil

p: list bool
p = intersect (true::true::false::nil) (false::nil)
--expect false::nil

q: set bool
q = set_intersection (mkSet (true::false::nil)) (mkSet (false::nil))
--expect false::nil

r: list bool
r = list_difference nil (true::nil)
--expect nil

s: list bool
s = list_difference (true::true::nil) (true::false::nil)
--expect true::false::nil

t: set bool
t = set_difference (mkSet (true::false::nil)) (mkSet (false::false::nil))
--expect (true::false::nil)

u: bool
u = set_forall evenb (mkSet (O::(S (S (S O)))::nil))
--expect false

v: bool
v = set_exists evenb (mkSet (O::(S (S O))::(S (S (S (S O))))::nil))
--expect true

w: option nat
w = list_witness evenb (O::(S (S O))::nil)

x: option nat
x = set_witness evenb (mkSet (O::(S (S O))::nil))

y: list (pair bool bool)
y = pairelt false (true::true::nil)
--expect (mkPair false true)::(mkPair false true)

aa: list (pair bool bool)
aa = pairList (false::false::nil) (true::true::nil)
--expect

bb: set (pair bool bool)
bb = set_product (mkSet (true::true::nil)) (mkSet (false::false::nil))
--expect mkSet (true::false)::(true::false)::nil















