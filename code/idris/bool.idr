module bool

import Serialize

data bool = true | false

id: bool -> bool
id true = true
id false = false

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

andp: bool -> bool -> bool
andp true true = true
andp a b = false

pand: bool -> bool -> bool
pand true x = id x
pand false x = constFalse x

por: bool -> bool -> bool
por false x = id x
por true x = constTrue x

pxor: bool -> bool -> bool
pxor true x = not x
pxor false x = id x

pnand: bool -> bool -> bool
pnand true x = not x
pnand false x = constTrue x

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
