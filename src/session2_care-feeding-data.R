gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(gdURL)
gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)
gDat
head(gDat)
tail(gDat)
names(gDat)
dim(gDat)
head(rownames(gDat))
length(gDat)
width(gDat)
summary(gDat)
head(gDat)
gDat$lifeExp
summary(gDat$lifeExp)
hist(gDat$lifeExp)
class(gDat$country)
str(gDat)
levels(gDat$country)
nlevels(gDat$country)
table(gDat$country)
subset(gDat, subset = country %in% c("Cambodia", "Afghanistan"))
subset(gDat, subset = year ==1952, select = c(year, country))
##challenge:
##get data for which life expectancy is less than 32 years
##assign it to an object
##how many rows? how many observations per continent?

subset(gDat, subset = lifeExp <32)
shortlife <- subset(gDat, subset = lifeExp <32)
str(shortlife)
shortlife
summary (shortlife$continent)
##observations per continent
table(shortlife$continent)
##common in modeling to use plot
plot(lifeExp ~ year, gDat)
##don't need to create a whole new dataframe for Rwanda. just temporarily limit
plot(lifeExp ~ year, gDat, subset = country ==  "Rwanda")
##to fit linear model, just change above plot to lm
lm(lifeExp ~ year, gDat, subset = country ==  "Rwanda")
##numerical summaries
mean(gDat$lifeExp)
mean(lifeExp, gDat)

with(gDat, mean(lifeExp))

##correlation for Cambodia of lifeExp and GDP per capita
with(subset(Gdat, country == "Cambodia"),cor(lifeExp, gdpPercap))

x <- 3*4
x
is.vector(x)
length(x)
x[1]
x[2]
x <- 1:4
x
x^2
round(rnorm(2, mean = c(0, 100, 10000)), 2)
round(rnorm(3, mean = c(0, 100, 10000)), 2)
