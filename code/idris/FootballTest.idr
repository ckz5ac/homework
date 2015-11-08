module FootballTest

import Football
import relation
import bool
import list
import pair

totalRank: Nat
totalRank = query plus 0 rank true teams

countRank: Nat
countRank = count_rel teams true

sumRank: Nat
sumRank = sum_rel teams true rank

averageRank: pair Nat Nat
averageRank = ave_rel teams true rank
