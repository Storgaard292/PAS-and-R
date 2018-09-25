## part 3 til undervisning fra sidste gang (jeg var der ikke til det sidste undervisning)
mod1=lm(dist ~ speed, data=cars); mod1

class(mod1)
#we will come across lm often

head(ToothGrowth)

plot(ToothGrowth$len ~ ToothGrowth$dose)

modteeth1=lm(len ~ dose, data=ToothGrowth);modteeth1
alfa1=coef(modteeth1)
plot(len ~ dose, data=ToothGrowth)
#abline(alfa1)
modteeth2=lm(len ~ dose+I(dose^2), data=ToothGrowth);modteeth2
alfa2=coef(modteeth2)
curve( alfa2[1]+alfa2[2]*x+alfa2[3]*x^2,0.5,2,add = TRUE)

modteeth3=lm(len ~ dose+I(dose^2)+I(dose^3), data=ToothGrowth);modteeth2
alfa3=coef(modteeth3)
curve( alfa3[1]+alfa3[2]*x+alfa3[3]*x^2+alfa3[4]*x^3,0.5,2,add = TRUE)

plot(ToothGrowth$len ~ ToothGrowth$supp)
mod3 <- lm(len ~ supp, data = ToothGrowth); mod3
