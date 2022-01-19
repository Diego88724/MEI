setwd("C:\\Users\\diego\\OneDrive\\Escritorio\\Universidad\\2º Curso\\Metodos Estadísticos de la Ingeniería\\Laboratorios\\Lab04")

a <- read.table("a.txt")
b <- read.table("b.txt")
c<- read.table("c.txt")

vectora <- a$x #distribucion normal
vectorb <- b$x #distribucion uniforme
vectorc <- c$x #distribucion exponencial negativa


hist(vectora, freq = FALSE) 
hist(vectorb) 
hist(vectorc) 

#Vector A
mua <- mean(vectora)    #N(10,2)
mua
sa <- sd(vectora)
sa

x <- seq(5,15,0.1)
y <- dnorm(x, 10,2)


hist(vectora, freq = FALSE) 
lines(x,y, col = 'red')




#Vector B
mub <- mean(vectorb)    #N(50, 28)
mub
sb <- sd(vectorb)
sb

x2 <- c(0,100)
y2 <- c(0.01,0.01)


hist(vectorb) 
lines(x2,y2, col = 'red')


#Vector C
muc <- mean(vectorc)    #N(0.16, 0.16)
muc
sc <- sd(vectorc)
sc


x <- seq(0,1,0.1)
y <- dexp(x,6)


hist(vectorc) 
lines(x,y, col = 'red')


