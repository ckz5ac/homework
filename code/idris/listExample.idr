module listExample

import Football
import bool
import list

|||A record type that is equivalent to::
||| (data Football = MkFootball bool String nat)
||| A football team has a ranking that is true or false, a team name and a rank.

listFootball: list Football
listFootball = OSU :: TCU :: BU :: MSU :: nil




