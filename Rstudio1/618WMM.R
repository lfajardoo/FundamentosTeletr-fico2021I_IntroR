#Las barras de pan de centeno que cierta panadería distribuye a las tiendas locales tienen una longitud
#promedio de 30 centímetros y una desviación estándar de 2 centímetros. Si se supone que las longitudes están
#distribuidas normalmente, ¿qué porcentaje de las barras son
#a) más largas que 31.7 centímetros?
#b) de entre 29.3 y 33.5 centímetros de longitud?
#c) Por debajo de què valor tienen una probabilidad de 1.22%?

# mu = 30, sigma = 2

mu <- 30
sigma <- 2

#a)
proba <- 0
proba <- 1-pnorm(31.7, mu, sigma)

#b)
probb <- 0
panillo997 <- pnorm(29.3, mu, sigma)
panillo1003 <- pnorm(33.5, mu, sigma)
probb <- panillo1003-panillo997

#c)
diam15 <- 0
diam15 <- qnorm(0.0122, mu, sigma)


#Graficación
x=seq(22, 38 ,by=0.01)
par(mfrow=c(3,2 ))
curve(dnorm(x, mu, sigma),xlim=c(22,38),col="blue",lwd=2, xlab="x",ylab="f(x)",main="Función de Densidad N(10,0.03)")
curve(pnorm(x, mu, sigma),xlim=c(22,38),col="blue",lwd=2, xlab="x",ylab="f(x)",main="Función de Acumulada N(10,0.03)")
curve(dnorm(x, mu, sigma),xlim=c(22,38),col="blue",lwd=2, xlab="x",ylab="f(x)",main="Regiòn Punto a")
regiona=seq(31.7, 38, 0.01)
xP <- c(31.7,regiona,38) 
yP <- c(0,dnorm(regiona,mu, sigma),0)
polygon(xP,yP,col="orange1")
curve(dnorm(x, mu, sigma),xlim=c(22,38),col="blue",lwd=2, xlab="x",ylab="f(x)",main="Regiòn Punto b")
regiona=seq(29.3, 33.5, 0.01)
xP <- c(29.3,regiona,33.5) 
yP <- c(0,dnorm(regiona,mu, sigma),0)
polygon(xP,yP,col="orange1")
curve(dnorm(x, mu, sigma),xlim=c(22,38),col="blue",lwd=2, xlab="x",ylab="f(x)",main="Regiòn Punto c")
regiona=seq(22, 25.5, 0.01)
xP <- c(22,regiona,25.5) 
yP <- c(0,dnorm(regiona,mu, sigma),0)
polygon(xP,yP,col="orange1")






