module ite

import bool

ite: bool -> m -> m -> m
ite true tb fb = tb
ite false tb fb = fb
