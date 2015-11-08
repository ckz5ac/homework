module colleges

import list
import nat

data colleges = CAS | Comm | Eschool | Aschool | Batten

|||College followed by percent male and then percent female

data gender = mkGender colleges Nat Nat

cas: gender
cas = mkGender CAS 46 54

comm: gender
comm = mkGender Comm 55 45

eschool: gender
eschool = mkGender Eschool 60 40

aschool: gender
aschool = mkGender Aschool 40 60

batten: gender
batten = mkGender Batten 47 53

percentMale: gender -> Nat
percentMale (mkGender s m f) = m

percentFemale: gender -> Nat
percentFemale (mkGender s m f) = f

whatschool: gender -> colleges
whatschool (mkGender s m f) = s

listgender: list gender
listgender = (cons cas (cons comm (cons eschool (cons aschool (cons batten nil)))))

