###01. 선형회귀 실습
###02. 분류모델-로지스틱 회귀
###03. 분류모델-KNN
###04. 의사결정트리
###05. 앙상블-램덤포레스트트

##01. 선형회귀실습
##회귀식(regerssion equation): 회귀분석에서 변수간의 관계를 나타내는 수학적 모형
##종속변수(dependedt variabe)- 반응변수
##독립변수(independent variable)- 설명변수
##Boston데이터 셋
library(MASS)
search()
data("Boston")
head(Boston)
dim(Boston)
str(Boston)

##데이터 셋
##caret
##
idx <- sample(1:nrow(Boston), size=nrow(Boston)*0.7, replace=F)
idx
Boston_tr<- Boston[idx,]
Boston_test <- Boston[-idx,]

###regression 모델만들기
lm.Model <- lm(medv~.,)

###02. 분류모델(vs 회귀모델)
##일반적으로 종속변수가 범주혀 경우의 예측 문제에 적용
##종류: 로지스틱 회귀(0,1에 특화), KNN분류, 인공신경망, SVM, 결정트리
##앙상블 기법:랜덤포레스트, 배경, 부스팅 (두가지 이상의 기법을 사용)

##지도학습과 비지도 학습 
set.seed(1)
x1 <- rnorm(1000)
x1
x2 <- rnorm(1000)
x2
z=1+4*x1 +3*x2
pr=1/(1+exp(-z))
plot(pr)
y=rbinom(1000,1,pr)


##KNN분류
##KNN판단기준: 가장 근접한 거리에 있는 갯수   
data("iris")
names(iris)
library(dplyr)
iris2 <- sample_n(iris,150)
iris2
train <- iris2[1:120,]
test <- iris2[121:150,]
install.packages("caret")
library(caret)
knn_model = knn3(Species~ . , data=train , k=3)
knn_model
pred=predict(knn_model, test[ ,-5], type='class')
table(pred, test$Species)

##실습
names(mtcars)
str(mtcars)
dim(mtcars)
mtcars$am <- as.factor(mtcars$am)
train <- mtcars[1:21,]
test <- mtcars[22:32,]
knn = knn3(am ~ ., data=train , k=5)
knn
pre <- predict(knn, test[ , -9], type='class')
table(pre, test$am)
pre
test$am
pre

head(varDat)
