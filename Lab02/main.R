setwd("C://Users//diego//OneDrive//Escritorio//Universidad//2º Curso//Metodos Estadísticos de la Ingeniería//Laboratorios//Lab02")
read.table("precios_2017.txt", header = TRUE) -> precios

read.table("precios_2017.txt")


precios [ , "euros"] -> euros
precios [ , "habs"] -> habitaciones
precios [ , "m2"] -> metros

names(precios)
main = "precios_2017.txt"
nombre <- "precios_2017.txt"
read.table(nombre)
summary(precios)

plot(habitaciones)
plot(euros)
plot(metros)
plot(habitaciones, euros)
plot(metros, habitaciones)
plot(euros, metros)

regresion(euros, metros)

