library(poliscidata)
class(world$women13)
describe(world$women13)
wtd.hist(world$women13)
sortC(world,country,women13)
wtd.hist(world$women13,
         main = "Percentage Women Legislators 90 Democracies",
         xlab = "Percentage of women in legislature",
         ylab = "",
         col = "dodgerblue")
describe(gss$science_quiz)
freqC(gss$science_quiz)
wtd.sd(gss$science_quiz)
describe(gss$wordsum)
freqC(gss$wordsum)
wtd.sd(gss$wordsum)
class(gss$attend)
# "factor" variable
freqC(gss$attend)
wtd.median(gss$attend)
printC(freqC(gss$attend))
setwd("C:/Users/tongyush/Documents")
