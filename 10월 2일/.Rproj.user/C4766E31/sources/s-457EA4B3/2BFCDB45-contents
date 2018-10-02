library("MASS")
print(str(Cars93))
dim(Cars93)
car<- Cars93
table(car$AirBags)
table(car$Model)
table(car$Manufacturer)
table(car$DriveTrain)
table(car$Cylinders)
table(car$Origin)
table(car$Make)
car.data <- data.frame(car$AirBags, car$Type)
car.data
table(car.data)

m<- matrix(c(11,17,7,5),nrow=2)
m
addmargins(m)
chisq.test(m)
