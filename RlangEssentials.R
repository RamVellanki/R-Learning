#Split
genderdata <- split(LungCapData$Gender, LungCapData$Age)

#Sort and Unique
sort(unique(LungCapData$Age))

#implicit loops
#lapply (returns list) sapply(returns vector or matrix)
newdata <- LungCapData[1:3] #Select 3 columns which are numeric
ldata<-lapply(newdata,mean,na.rm=T) #lapply calls mean for each variable in newdata and returns list
sdata<-sapply(newdata,mean,na.rm=T) #sapply calss mean for each variable in newdata and returns vector or matrix

#replicate
fun1 = function(x){
  x*5;
}
replicate(10,fun1(5)) #calls fun1 for 10 times

#tapply - returns table
tapply(newdata$LungCap, newdata$Age, median) #for each age returns median of LungCap

##### R Environment #####
ls() #returns variables

rm(o) #removes o

rm(list=ls()) #cleans entire workspace

save.image() #save workspace to .RData file

getwd() #Get current working directory

setwd("D:/Work/R/R Learning") #Set current working directory

data(Titanic) #load data

plot(LungCapData$Age, LungCapData$LungCap) #plots graph for age and lungcap

attach(LungCapData) #attaches the data.frame 
LungCap #since lungcapdata is attached we can directly refer the variables
detach(LungCapData)

subset(LungCapData,LungCapData$Age > 10) #selects data with age > 10
transdata <- transform(LungCapData, log.height = log(LungCapData$Height)) #adds log.height along with exiting variables
View(transdata) #opens data

#following uses compund statment
withindata <- within(LungCapData, {
  log.height<-log(LungCapData$Height) #create log.height
  m<-mean(log.height) #create column mean
  centered.log.height <- log.height - m #create new column
  rm(m) #remove m that leaves log.height and centered.log.height
})
View(withindata)

##### PLOTS #####
x<-runif(50,0,2) #r uniform distribution
y <- runif(50,0,2)
plot(x,y,main="Main Title", sub="Subtitle", xlab="x-label", ylab="y-label")

plot(x,y, type="n", xlab="", ylab="",axes=F)
points(x,y)
axis(1)
axis(2,at=seq(0.2,1.8,0.2))
box()
title(main="Main Title", sub="subtitle", xlab="x-label", ylab="y-label")

h <- hist(LungCapData$LungCap, plot=F)
ylim <- range(0, h$density, dnorm(0))
hist(x, freq=F, ylim=ylim)
curve(dnorm(x), add=T)

#edit data.frame
editeddata <- edit(LungCapData)
