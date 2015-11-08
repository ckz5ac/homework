module dnaTest

import dna

--expect T
a: base
a = complement_base A

--expect A
b: base
b = complement_base T

--expect G
c: base
c = complement_base C

--expect C
d: base
d = complement_base G
