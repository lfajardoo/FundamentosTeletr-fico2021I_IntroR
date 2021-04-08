#5.27 Si una bombilla fl uorescente tiene una probabi-lidad de 0.9 de tener una
#vida útil de al menos 800 ho-ras, calcule las probabilidades de que,de
#20 bombillasfl uorescentes,
#a) exactamente 18 tengan una vida útil de al menos 800 horas;
#b) al menos 15 tengan una vida útil de al menos 800 horas;
#c) al menos 2 no tengan una vida útil de al menos 800 horas.

#n=20, p=0.9

n<-20
p<-0.9


#a)
proba = 0
proba <- dbinom(18,20,0.9)

#b)
probb = 0
probb <- (1- sum(dbinom(0:14,20,0.9)))
probb 

#c)
probc = 0
probc <- sum(dbinom(0:18,20,0.9))

#Graficación
x<-seq(0,20,1)
par(mfrow=c(1,2))
plot(x, dbinom(x, n, p), type="h")
plot(x, pbinom(x, n, p), type="s")


