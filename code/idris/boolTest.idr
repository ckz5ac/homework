module boolTest

import bool
import pair

data boolTest = bool

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

pand_t_t: bool
pand_t_t = pand true true
--expect true

pand_t_t1: bool
pand_t_t1 = pand true false
--expect false

pand_t_t2: bool
pand_t_t2 = pand false true
--expect false

pand_t_t3: bool
pand_t_t3 = pand false false
--expect false

por_t_t: bool
por_t_t = por false false
--expect false

por_t_t1: bool
por_t_t1 = por false true
--expect true

por_t_t2: bool
por_t_t2 = por true false
--expect true

por_t_t3: bool
por_t_t3 = por true true
--expect true

pxor_t_t: bool
pxor_t_t = pxor true true
--expect false

pxor_t_t1: bool
pxor_t_t1 = pxor true false
--expect true

pxor_t_t2: bool
pxor_t_t2 = pxor false true
--expect true

pxor_t_t3: bool
pxor_t_t3 = pxor false false
--expect false

pnand_t_t: bool
pnand_t_t = pnand true true
--expect false

pnand_t_t1: bool
pnand_t_t1 = pnand true false
--expect true

pnand_t_t2: bool
pnand_t_t2 = pnand false true
--expect true

pnand_t_t3: bool
pnand_t_t3 = pnand false false
--expect true

uf: bool -> bool
uf = (and true)

















