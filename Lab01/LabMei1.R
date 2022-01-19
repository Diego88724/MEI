

setwd("C://Users//diego//OneDrive//Escritorio//Universidad//2º Curso//Metodos Estadísticos de la Ingeniería//Laboratorios//Lab01")

read.table("a.txt", header = TRUE) -> datos

vdatos <- datos$x
hist(vdatos)

hist(vdatos, col = "green")


names(datos)

hist(vdatos, breaks = 6)

breaks <- c(1,5,7,13,15,19)

hist(vdatos, breaks = 6 ,freq = TRUE, rights = FALSE)

hist(vdatos, freq = TRUE)

plot(FALSE)



hist(vdatos, freq = FALSE, right = FALSE)


main = "a.txt"
nombre <- "a.txt"

read.table(nombre)

main = nombre

summary(vdatos)

text(10,0.15, "hola")

a <- min(vdatos)
q1 <- quantile(vdatos, 0.25)
Me <- quantile(vdatos, 0.5)
q3 <- quantile(vdatos, 0.75)
m <- mean(vdatos)



#Q1
text(q1, 0, "Q1", col = 2)
points(q1, 0)
abline(v = q1, col = 2)
text(q1, 0, paste("Q1", round(q1)))


#Me
text(Me, 0, "Me", col = "blue")
points(Me, 0)
abline(v = Me, col = "blue")
text(Me, 0, paste("Me", round(Me)))


#Q3
text(q3, 0, "Q3", col = "orange")
points(q3, 0)
abline(v = q3, col = "orange")
text(q3, 0, paste("q3", round(q3)))




hist(vdatos, breaks = c(min(vdatos), q1, Me, q3, max(vdatos)))



vdatos <- datos$x
n <- 500


for (n in c(5,50,500,5000)) {
  
  muestra <- sample(vdatos,n)
  hist(muestra, main = paste("n =", n))
}

