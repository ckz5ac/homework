module Football

import bool
import list

|||A record type that is equivalent to::
||| (data Football = MkFootball bool String nat)
||| A football team has a ranking that is true or false, a team name and a rank.

record Football where
  constructor MkFootball
  true : bool
  name : String
  rank : Nat
  

OSU: Football
OSU = MkFootball true "Ohio State" 1

TCU: Football
TCU = MkFootball true "TCU" 2

BU: Football
BU = MkFootball true "Baylor" 3

MSU: Football
MSU = MkFootball true "Michigan State" 4

teams: list Football
teams = OSU::TCU::BU::MSU::nil

b1: Football -> bool
b1 (MkFootball b s n) = b

b2: Football -> String
b2 (MkFootball b s n) = s

b3: Football -> Nat
b3 (MkFootball b s n) = n








