module Person

import bool
import list

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

||| A Person has an age in years, a height in inches, 
||| and a gender, true=female, false=male.

tom: Person
tom = mkPerson "Tom" 18 72 false

mary: Person
mary = mkPerson "Mary" 21 68 true

people: list Person
people = mary::tom::nil
