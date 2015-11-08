module people
import pair

data people = maurice | mary

loves: people -> people
loves maurice = maurice
loves mary = maurice

p1: pair person person
p1 = mkPair mary maurice

p2: pair person person
p2 = mkPair maurice maurice
