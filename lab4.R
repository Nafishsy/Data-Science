#CSV file import

data <- read.csv("lab4.csv",header = TRUE,sep = ",")

#data <-edit(data)
names(data) #variable/header er name dekha jabe

#annotating dataset
names(data)
names(data)[2] <- "ID" #variabler name change

#continus data diya catagorized kortesi

data$Gender <- factor(data$Gender,
                      levels = c(1,2),
                      labels = c("Male","Female"))
  
data$Gender <- factor(data$Gender,
                      levels = c("Male","Female"),
                      labels = c(1,2))
#unclass() use kore catagorized diye numerical

data$Gender<-unclass(factor(data$Gender))


#summery of dataset
str(data)

#descriptive stats
summary(data)

#standard deviation

s<-data$Gender
sd(s)


#more than one standard deviation ber korte chai
#deep layer package install kora lagbe
#bashar pc te install R tools

install.packages("dplyr") #ai line diye install
library(dplyr)

data %>% summarise_if(is.numeric,sd)

install.packages("matrixStats")
library(matrixStats)
data<-edit(data)
data[5]
data$Loan = rowSds(as.matrix(data)[,c(2,3)])
data$Score

#randomly selects data
sample_n(data,3)

dataTest = select(data,Gender)


#missing value 

colSums(is.na(data)) #koyta missing

which(is.na(data$Section)) #ai variable e koyta missing

remove <- na.omit(data) #null value er data bad dibo
#how to find most freq value
