#read in frequency data
af <- read.table("./a.txt")
bf <- read.table("./b.txt")
cf <- read.table("./c.txt")
drf <- read.table("./dr.txt")

#af=af/100.
#bf=bf/100.
#cf=cf/100.
#drf=drf/100.

library(pwr)
d <- af[1,1]*bf[1,1]*cf[1,1]
sn <- pwr.t.test(d = d, power = 0.80, sig.level = 0.05)
print(sn)
