cats <- data.frame(coat=c("calico", "black", "tabby"),
                   weight= c(2.1, 5.0, 3.2),
                   likes_string= c(1, 0, 1))

write.csv (x=cats, file="data/feline-data.csv", row.names=FALSE)

matrix_example <- matrix (0, ncol=6, nrow=3)

matrix_exampple_2 <- matrix(c(1:10), ncol=5, nrow=2)

matrix_example_3 <- matrix(c(1:10), ncol=5, nrow=2,
                           byrow=TRUE)

matrix_example_4 <- matrix(c(1:10), ncol=3, nrow=4)

matrix_exampple_2[1:2, 2] <- c("1", "2")

x <- c(1, 5, 7, 9)
x[2]
x[c(4,1)]
x[-2]
x[-c(1,4)]

1>2

x[c(FALSE, TRUE, FALSE, FALSE)]

x[c(TRUE, FALSE, TRUE, TRUE)]

1<=1

x>5

x[x>5]

x>5 & x<9

x[x>5 & x<9]

x[c(TRUE, FALSE)]

gapminder <- read.csv ("data/gapminder-FiveYearData.csv")
head (gapminder)
nrow (gapminder)
ncol (gapminder)

seAsia <- c("Myanmar", "Thailand", "Cambodia", 
            "Vietnam", "Laos")

countries <- unique(gapminder$country)
length (countries)
head (countries)

countries == seAsia
countries == seAsia[2]

any(countries == seAsia[1])
any(countries == seAsia[2])
any(countries == seAsia[3])
any(countries == seAsia[4])
any(countries == seAsia[5])

seAsia[!seAsia %in% countries]

m <- matrix (rnorm(6*4), ncol=4, nrow=6)

m[m[,2] > 0, ]

m[m<0] <- NA

m <- matrix(1:18, nrow=3, ncol=6)

m[2, 4, 2, 5]

m[c(1,3), c(1,5)]
m[2:5]
m[4:5, 2]
m[2, 4:5]
m == 11 | m == 14

m[m == 1 | m == 20]

str (gapminder)

gapminder[1:3, 4:6]

gapminder[1:3, c("continent","lifeExp")]

gapminder$continent[1:3]

gapminder[, -4:-1]

gapminder[gapminder$year == 2002 |
          gapminder$year == 2007, ]


x <- 8

if (x >= 10) {
  print ("x is greater or equal to 10")
} else if (x > 5) {
  print ("x is smaller 10, but larger 5")
} else {
  print ("x is smaller than 5")
}

if(any(gapminder$year == 2012)){
  print ("Yes")
} else {
  print ("No")
}

any(countries == seAsia[1])
any(countries == seAsia[2])
any(countries == seAsia[3])
any(countries == seAsia[4])
any(countries == seAsia[5])

output_vector <- rep(FALSE, 5)

for (country in 1:5){
  print(seAsia[country])
  output_vector[country] <- 
    any(gapminder$country == seAsia[country])
}

mean(c(1:10))

continents <- unique(gapminder$continent)

for (continent in continents){
  sub_lifeExp <- 
    gapminder$lifeExp[gapminder$continent == continent] 
  mean_lifeExp <- mean(sub_lifeExp)
  if (mean_lifeExp < 50){
    cat (continent, " life expetancy is <50 \n")
    cat (mean_lifeExp, "\n")
  } else {
    cat (continent, " life expectancy is >50 \n")
    cat (mean_lifeExp, "\n")
  }
}


library (ggplot2)

colnames (gapminder)

ggplot(data=gapminder, 
    aes(x=year, y=lifeExp, 
        by=country)) +
  geom_line(aes(color=continent)) + 
  geom_point() + theme_dark()


ggplot (data=gapminder, 
        aes(x=gdpPercap, 
        y=lifeExp))+
  geom_point() + scale_x_log10() +
  geom_smooth()











