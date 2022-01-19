
  
  setwd("C://Users//diego//OneDrive//Escritorio//Universidad//2º Curso//Metodos Estadísticos de la Ingeniería//Laboratorios//Lab02")
  read.table("precios_2017.txt", header = TRUE) -> precios
  
  regresion <- function(x,y){
  
  b <- cov(x,y)/var(x)
  a <- mean(y)- b*mean(x)
  R<- cov(x,y)/sd(x)*sd(y)
  res <- c(a,b,R)
  
  plot(x,y, main=R)
  abline(a,b)
  
  return(res)
  
}
  
  
  
  

  