
##01. 비료의 투입량과 수확량 사이의 상관계수 구하기
x<- c(25,20,18,15,14,8)
y<- c(45,38,32,24,22,10)
plot(x,y)
cor(x,y)
cor.test(x,y)


##02. EuStockMarkets
data("EuStockMarkets")
help(EuStockMarkets)
str(EuStockMarkets)
summary(EuStockMarkets)

##03. 통계확인
var(EuStockMarkets[,'DAX']) ## 데이터가 퍼진정도 확인:분산
sd(EuStockMarkets[,'DAX'])

apply(EuStockMarkets,2, var)
apply(EuStockMarkets,2,sd)


###분포의 비대칭성
##왜도, 첨도   
install.packages("fBasics")
library(fBasics)
##왜도
skewness(EuStockMarkets[,'DAX'])
##첨도   
kurtosis(EuStockMarkets[,'DAX'])

##상관계수와 heatmap그리기
class(EuStockMarkets)
names(EuStockMarkets)
eur_cor<- cor(EuStockMarkets)
library(corrplot)
corrplot(eur_cor)
corrplot(cor(eur_cor), method="color", addCoef.col="black")
corrplot(eur_cor, method='ellipse')

##hist(나라별)- par(mfrow=c(2,2))
hist(EuStockMarkets)
plot(EuStockMarkets)



mtcars
names(mtcars)
table(mtcars$cyl)
table(mtcars$am)
table(mtcars$cyl, mtcars$am)
