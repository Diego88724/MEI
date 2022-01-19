#Distribucion de x

setwd("C:\\Users\\diego\\OneDrive\\Escritorio\\Universidad\\2º Curso\\Metodos Estadísticos de la Ingeniería\\Laboratorios\\Lab04")

file<- "a.txt"

datos <- read.table("a.txt")$x

#elegimos tamaño de muestra
n <- 8
#tomamos muchas muestras
k <- 100

medias <- c()


for (i in 1:k) {
muestra <- sample(datos, n)
#print(mean(muestra))
m <- mean(muestra)
medias <- c(medias, m)
}

hist(medias, freq = FALSE)

x<- seq(min(medias), max(medias), 0.01)
y <- dnorm(x, mean(datos), sd(datos))

lines(x,y, col = 'red')



