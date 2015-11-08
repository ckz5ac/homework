module Bit

--Data Type
data Bit = one | zero

--Functions
change: Bit -> Bit
change one = zero
change zero = one

