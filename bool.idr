module bool

data bool = true | false

id: bool -> bool
id x = x

not: bool -> bool
not false = true
not true = false

constTrue: bool -> bool
constTrue _ = true

constFalse: bool -> bool
constFalse _ = false



