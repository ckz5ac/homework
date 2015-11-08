module set

import list
import bool
import eq
import pair
import nat

|||mkSet is meant to be private
data set a = mkSet (list a)


|||a starting for building any set
new_set: set a
new_set = mkSet nil

|||return (given value) union given set
set_insert: (eq a) => a -> set a -> set a
set_insert  v (mkSet l) = ite (member v l)
                              (mkSet l)
                              (mkSet (v::l))

subset_elements: (eq a) => (pair (list a) (list a)) -> bool
subset_elements (mkPair (h1::t1) (h2::t2)) = (andp (member h1 (h2::t2)) (member h2 (h1::t1)))

eql_set: (eq a) => (set a) -> (set a) -> bool
eql_set (mkSet (h1::t1)) (mkSet (h2::t2)) = (subset_elements (mkPair (h1::t1) (h2::t2)))

instance (eq a) => eq (set a) where
  eql (mkSet (h1::t1)) (mkSet (h2::t2)) = eql_set (mkSet (h1::t1)) (mkSet  (h2::t2))

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and
                        (subset_elements l1 l2)
                        (subset_elements l2 l1)

--eql_set: (eq a) => set a -> set a -> bool
--eql_set (mkSet l1) (mkset l2) = same_elements l1 l2



