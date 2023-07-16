#Load the data
mydata <- read.csv(file.choose())

#Create plot LikelinessToAdopt by Gender:
ggplot(mydata, aes(x= Gender, y=LikelinessToAdopt, fill = Gender)) 
+ geom_boxplot() + theme_classic()

#T-test
t.test(LikelinessToAdopt ~ Gender, data =mydata)

#Create plot LikelinessToAdopt by Education Level:
ggplot(mydata, aes(x= EducationLevel, y=LikelinessToAdopt, fill = EducationLevel))
+ geom_boxplot() + theme_classic()

#ANOVA Test
anova1 <- aov(LikelinessToAdopt ~ EducationLevel, data = mydata)
summary(anova1)

