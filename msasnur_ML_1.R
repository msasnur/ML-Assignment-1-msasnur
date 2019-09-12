# Data set has been downoaded from Kaggle.com 
# (https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results/downloads/120-years-of-olympic-history-athletes-and-results.zip/2)
# Data set is about 120 years of Olympic history on athletes
# Data set contains basic bio data of athletes from Athens 1896 to Rio 2016

library(readr)

#downloaded dataset (in .csv file) is assigned to athletes variable

athletes<-read_csv("athlete_events.csv",col_names = TRUE)
View(athletes)

#Printing first 6 records
head(athletes,6)

#Descriptive Statistics performed on athletes Age
#To find out Mean Age
print(mean(athletes$Age, na.rm = TRUE))
#To find out Median Age
print(median(athletes$Age, na.rm = TRUE))

#to find out range in Age by knowing max and min value
print(min(athletes$Age, na.rm = TRUE))
print(max(athletes$Age, na.rm = TRUE))
print(range(athletes$Age, na.rm = TRUE))

#to find quantile range for Age COlumn
print(quantile(athletes$Age, na.rm = TRUE))
print(IQR(athletes$Age, na.rm = TRUE))

#to find variance and standard deviation for Age Column
print(var(athletes$Age, na.rm = TRUE))
print(sd(athletes$Age, na.rm = TRUE))

#Using factors and levels fuctions to find unique values in team column
teams<-factor(athletes$Team)
levels(teams)
athletes[athletes$Team == "India",]
unique(athletes$Name)

#Applying transformation on Weights variable after assigning Weight column data to it.
Weights<-athletes$Height
print(sqrt(Weights))
print(log(Weights))
print(exp(Weights))

#Using boxplot function to draw Box Plot Graph for Athletes Age in Team India  
boxplot(athletes$Age[athletes$Team=="India"], ylab = "Age", main = "Range of Indian Ages in the dataset")

#Scatter Plot showing corelation between height and weight of all the athletes in team India
x<-athletes$Height[athletes$Team=="India"]
y<-athletes$Weight[athletes$Team=="India"]
plot(x,y, xlab = "Height", ylab = "Weight", main="Corelation between Height and weight of team India")

#Corelation observed in this scatter plot between height and weight shows that as Height increase for an athlete, their weight also increases 


 
