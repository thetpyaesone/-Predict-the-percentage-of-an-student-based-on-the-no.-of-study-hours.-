install.packages("caret")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("DataExplorer")
library(caret)
library(dplyr)
library(ggplot2)
library(DataExplorer)
HS <- read_csv("C:/Users/DELL/Desktop/HS.csv")
predict_HS <- read_csv("C:/Users/DELL/Desktop/predict.HS.csv")
summary(HS)

plot_correlation(HS)
plot_histogram(HS)
plot(Scores~Hours,data = HS)
Model<-lm(Scores~Hours,data = HS)
plot<-ggplot(HS,aes(Hours,Scores))
plot+geom_col()
plot+geom_point()
plot+geom_line()
plot+geom_smooth(method = lm)

Call:
  lm(formula = Scores ~ Hours, data = HS)

Coefficients:
  (Intercept)        Hours  
2.484        9.776  

Summary(Model)

          
Call:
lm(formula = Scores ~ Hours, data = HS)
          
Residuals:
Min        1Q     Median    3Q     Max 
-10.578  -5.340   1.839   4.593   7.265 
          
Coefficients:
Estimate Std. Error t value Pr(>|t|)    
(Intercept)   2.4837     2.5317   0.981    0.337    
Hours         9.7758     0.4529  21.583   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
          
Residual standard error: 5.603 on 23 degrees of freedom
Multiple R-squared:  0.9529,	Adjusted R-squared:  0.9509 
F-statistic: 465.8 on 1 and 23 DF,  p-value: < 2.2e-16
          
predict(Model,predict_HS)
92.90985 







