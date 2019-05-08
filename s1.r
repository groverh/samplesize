#read in frequency data
af <- read.table("./a.txt")
bf <- read.table("./b.txt")
cf <- read.table("./c.txt")
drf <- read.table("./dr.txt")


# use pwr library
# https://cran.r-project.org/web/packages/pwr/vignettes/pwr-vignette.html
library(pwr)

# calculate HLA type combination frequency, assume only one combination for now
d <- af[1,1]*bf[1,1]*cf[1,1]

# calculate sample number
sn <- pwr.t.test(d = d, power = 0.80, sig.level = 0.05)
print(sn)
