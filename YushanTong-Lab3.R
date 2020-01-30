library(poliscidata)
# xtp(dataset, dep.var, ind.var)
xtp(nes,envjob_3, pid_3)
# a cross tabulation & a mosaic plot
# envjob_3: Opinion about a trade off btw environment and jobs
#pid_3: Party identification
xtp(nes, 
    envjob_3, 
    pid_3,
    ylab="Environment vs. Jobs",
    xlab="Party Identification",
    main="Environmental Opinions & Party Identification" )
# formatting
# boxplot(dataset$variable.name)
boxplot(nes$ft_hclinton, 
        col = "lightgreen", 
        main = "Hillary Clinton Therometer")
# boxplot of a single variable
# ft_hclinton: Feeling therometer about Hillary Clinton
# boxplot( dep.var ~ ind.var, dataset )
boxplot(ft_hclinton ~ pid_x, 
        nes,
        col="lightgray",
        xlab="Party Identification",
        ylab="Hillary Clinton Thermometer",
        main="Hillary Clinton Thermometer & Party Identification",
        varwidth = TRUE)
# bivariate relationship
#varwidth = TRUE: Makes the width of boxplots proportionalto the number of observations for their values/categories inthe independent variable.
# compmeans( dep.var, ind.var, plot=FALSE )
compmeans(nes$ft_hclinton,nes$pid_x,plot=FALSE)
#Table of conditional means of y across x.
#If you don't use plot=FALSE, R will produce boxplots.
compmeans(nes$ft_hclinton,nes$pid_x)
# plotmeansC( dataset, ~dep.var, ~ind.var, dep.var~ind.var )
plotmeansC( nes, 
            ~ft_hclinton, 
            ~pid_x, 
            ft_hclinton ~ pid_x,
            xlab="Party Identification",
            ylab="Hillary Clinton Thermometer",
            main="Hillary Clinton Thermometer & Party Identification")
#Graph of conditional means of y across x.
stripchart( gini10 ~ dem_level4, 
            data=world,
            vertical = TRUE, 
            method="jitter",
            xlab="Political Regime",
            ylab="Gini Index, 2000-2010",
            main="Income Inequality & Political Regime")

# stripchart( dep.var ~ ind.var, 
#data = dataset,
#vertical=TRUE, 
#method="jitter" )
# formatting


states$prcapinc.k = states$prcapinc / 1000
# Invert scale for ease of interpretation, 1's become 7's
nes$aidblack_self.rev = 8 - nes$aidblack_self
states$prcapinc.k > wtd.mean(states$prcapinc.k)
#Whether one's income is greater than average
#Creating a numeric indicator variable
gss$veteran = gss$vetyears !="NONE"
# any years of service yields TRUE
gss$veteran = as.numeric(gss$veteran)
#TRUE =1 FALSE=0
freq(gss$vetyears)
freqC(gss$veteran)
