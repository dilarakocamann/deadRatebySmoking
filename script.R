```R
library(ggplot2)
veri <- read.csv("C:/Users/Dilara/Desktop/veri.csv")
View(veri)
grafik = ggplot(veri,aes(Yillar,Yuzdeler))
grafik
grafik+geom_point(aes(colour=Ulkeler),position = "jitter")
grafik+geom_line(aes(colour=Ulkeler),position = "jitter")
grafik+geom_smooth(aes(colour=Ulkeler),position = "jitter")
grafik+geom_point()+geom_smooth() # linear regression
grafik+geom_point()+geom_smooth(method = "lm")
grafik+geom_point()+geom_smooth(method = "lm", se=FALSE) # confidence interval

//predictions
library(tidyverse)
qplot(Yillar, Yuzdeler, data=veri, geom = "point")
qplot(Yillar, Yuzdeler, data=veri, geom = "point") + geom_smooth(method = "lm", se = FALSE)
lm(Yuzdeler ~ Yillar, data=veri)
model <- lm(Yuzdeler ~ Yillar, data=veri)
View(model)
model$residuals
veri$residuals <- model$residuals
veri$predicted <- model$fitted.values
predict(model, data.frame(Yillar = c(2019, 2020, 2021)))
predict(model, data.frame(Yillar = c(2021, 2022, 2023)))
predict(model, data.frame(Yillar = c(2023, 2024, 2025)))
predict(model, data.frame(Yillar = c(2030, 2035, 2040)))
predict(model, data.frame(Yillar = c(2045, 2050, 2055)))
predict(model, data.frame(Yillar = c(2060, 2070, 2080)))
```
