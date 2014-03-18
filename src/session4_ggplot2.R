library(ggplot2)

gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)

p <- ggplot(gDat, aes(x = gdpPercap, y = lifeExp))
p

## new session with jenny.
(y <- 1:3)
(z <- 3:7)
y + z
(y <- 1:5)
(z <- 1:10)
y+z

##creating vector with c
x <- c(1, 4, 9)
str(x)
x <- c("cabbage", pi, 0.3, TRUE)
str(x)

x <- list("cabbage", pi, 0.3, TRUE)
str(x)

##address specific pieces of vector or matrix- indexing
x <- -3:3
str(x)
x < 0


set.seed(1)
(x <- round(rnorm(8), 2))
names(x) <- letters[seq_along(x)]

x[4]
x[c(3,5,8)]
x[-7]
x < 0
x[x < 0]
which(x < 0)



##get every other element of x...
##multiple solutions below
x[c(1,3,5,7)]
x[seq(1,8,2)]
x[seq(length(x))%% 2 ==0]
x[seq(2, length(x), by = 2)]


##another way to index
x["g"]
x[c("a", "e", "g")]


##MAKING A MATRIx
month.abb
month.name
##make character matrix
(x <- cbind(month.abb, month.name))
str(x)
##glue together row-wise
(x <- rbind(month.abb, month.name))
##matrix construction function
(x <- matrix(1:10, nrow = 5))

##make dataframe
(x <- data.frame(month.num = 1:12, month.abb, month.name))
str(x)
##character data was turned to factor when put in dataframe
##to inhibit conversion to factor
(x <- data.frame(month.num = 1:12, I(month.abb), I(month.name)))
str(x)


##square brackets work on multidimensional data
x[2,2]


##make dataframe from vector and matrix
x <- cbind(month.abb, month.name)
y <- data.frame(mon.num = 1:12, x)


##data visualization
##ggplot- nice documentation website
library(ggplot2)

gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)

##begin ggplot 2 plot- make assignment. p is ggplot object
p <- ggplot(gDat, aes(x = gdpPercap, y = lifeExp))
p
##want geometric point- this will generate scatterplot
p + geom_point()
##want to log transform x axis to spread out data- scaling data units
p + geom_point() + scale_x_log10()
##will always want to log X axis, so redefine p
p <- p + scale_x_log10()
p + geom_point()
##bring in continent information, mapping aesthetics depends on continent being a factor. use dataframes and factors
p + geom_point(aes(color = continent))
##changing transparency of point
p + geom_point(alpha=1/2)
##set to constant
p + geom_point(alpha=1/2, size=3)
p + geom_point(alpha=1/2, size=3) + geom_smooth()
p + geom_point(alpha=1/2, size=3) + geom_smooth(lwd =3, se = FALSE)
p + geom_point(alpha=1/2, size=3) + geom_smooth(lwd =3, se = FALSE, method = "lm")

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_point()
ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_jitter()

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_boxplot()
ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_boxplot() + geom_jitter()

##quantitative variable

ggplot(gDat, aes(x = lifeExp)) +geom_histogram()
ggplot(gDat, aes(x = lifeExp)) +geom_density()

##quantitative plus qualitative
ggplot(gDat, aes(x = lifeExp, fill = continent)) + geom_histogram(position = "identity")
ggplot(gDat, aes(x = lifeExp, fill = continent)) + geom_histogram(position = "identity")


## factor
ggplot(gDat, aes(x= continent)) + geom_bar(width = 0.5)

##facetting
p + geom_point() + facet_wrap(~ continent)
p + geom_point() + facet_wrap(~ continent) + geom_smooth(lwd = 2, se = FALSE)



