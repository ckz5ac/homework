module base

import list
import pair

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h::t) = ((complement_base h) :: (map (complement_base) (t)))

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair h1 t1)::(mkPair h2 t2)::(mkPair h3 t3)::(mkPair h4 t4)::nil) = (h1::h2::h3::h4::nil)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair h1 t1)::(mkPair h2 t2)::(mkPair h3 t3)::(mkPair h4 t4)::nil) = (t1::t2::t3::t4::nil)

p1: base -> pair base base
p1 n = (mkPair n (complement_base n))

complete: list base -> list (pair base base)
complete n = map p1 n

baseNat: base -> base -> Nat
baseNat A A = 1
baseNat T T = 1
baseNat C C = 1
baseNat G G = 1
baseNat _ _ = 0

countBase: list base -> base -> Nat
countBase l x = list.foldr plus 0 (map (baseNat x) l)








