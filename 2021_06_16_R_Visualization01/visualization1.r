

# INITIALIZE THE PLOT WINDOW AND RANGES

plot(0:10, 0:10, type="n", xlab="X", ylab="Y", axes=FALSE)

# Draw Grids

abline(h=seq(0,10,2),lty=3,col="gray90")

abline(v=seq(0,10,2),lty=3,col="gray90")

# Put up some text in the plot region

text(5,5, "Plot Stuff Here", col="blue", cex=1.5)

# Draw bounding boxes

box("plot", col="red", lty = "dotted")

box("inner", col="blue", lty = "dashed")

# Let's put up some text in the margins

mtext("South Margin",1,cex=1.2, line = 2, col="blue")

mtext("West Margin",2,cex=1.2, line = 2, col="green")

mtext("North Margin",3,cex=1.2, line = 3,col="orange")

mtext("East Margin",4,cex=1.2,col="purple")

title("An Example Plot")


################################################################

plot(0:10, 0:10, type="n", xlab="X", ylab="Y", axes=FALSE)
abline(h=seq(0,10,2),lty=3,col="gray90")
abline(v=seq(0,10,2),lty=3,col="gray90")
text(5,5, "Plot Stuff Here", col="red", cex=1.5)
box("plot", col="red", lty = "dotted")
box("inner", col="blue", lty = "dashed")
mtext("South Margin",1,cex=1.2, line = 2, col="blue")
mtext("West Margin",2,cex=1.2, line = 2, col="green")
mtext("North Margin",3,cex=1.2, line = 3,col="orange")
mtext("East Margin",4,cex=1.2,col="purple")
title("An Example Plot") ; 
points(0:10,0:10,pch=20,col="red",bg="black")


################################################################

par(oma=c(2,2,2,2))
plot(0:10, 0:10, type="n", xlab="X", ylab="Y", axes=FALSE)
abline(h=seq(0,10,2), v=seq(0,10,2), lty=3,col="gray90")
text(5,5, "Plot Stuff Here", col="red", cex=1.5)
box("plot", col="red", lty = "dotted")
box("inner", col="blue", lty = "dashed")
mtext("South Margin",1, cex=1.2, line = 2, col="blue")
mtext("West  Margin",2, cex=1.2, line = 2, col="green")
mtext("North Margin",3, cex=1.2, line = 3, col="orange")
mtext("East  Margin",4, cex=1.2, col="purple")
title("An Example Plot")
mtext("Outer Margin East", 2, line=0.4, cex=1.2,col="green", outer=TRUE)
mtext("Outer Margin North", 3, line=0.4, cex=1.2,col="orange", outer=TRUE)
mtext("Outer Margin North", 4, line=0.4, cex=1.2,col="purple", outer=TRUE)


################################################################


myPlot <- function(sometext, size1, size2) {
  plot(0:10, 0:10, type="n", xlab="X", ylab="Y",axes=F)
  abline(h=seq(0,10,2), v=seq(0,10,2), lty=3,col="gray90")
  text(5,5, sometext, col="red", cex=size1)
  box("inner", col="blue", lty = "dashed")
  box("figure", lty="dotted", col="blue")
  mtext("Figure", 1, cex=size2, col="blue")
  points(10:1,10:1,col = "blue", pch=20, cex=1.2)
  title("Example Plot")
}
par(mfrow=c(2,2))
myPlot("Plot 1",1,1)
myPlot("Plot 2",2,2)
myPlot("Plot 3",3,3)
myPlot("Plot 4",0.5,0.5)


################################################################

par(cex=1.5,col="red",pch=20,cex.main=3,bg="white",mfrow=c(1,1))
plot(mpg~wt,data=mtcars,main="Sample Plot")


par(mfrow=c(1,1))
plot(mpg~wt,mtcars, main = "Sample Plot", col = "red", pch = 20, cex.main = 3)


################################################################

par(mfrow=c(1,2))
plot(mpg ~ wt, main="MPG vs WT", col="red",
     xlab="Weight in lbs/1,000",
     ylab="Miles per Gallon",
     pch=4, data = mtcars)
plot(mpg ~ wt, main="MPG vs WT", col="blue",
     xlab="Weight in lbs/1,000",
     ylab="Miles per Gallon",
     pch=23,
     bg="blue", data = mtcars)





par(mfrow=c(1,1))
ylim=c(0,50)
xlim=c(0,32)
plot(mtcars$mpg,type="l",xlim=xlim,ylim=ylim)
lines(mtcars$drat,type="l",col="green")
lines(mtcars$qsec,type="l",col="red")
legend("topright",c("mpg","drat","qsec"),col=c("black","green","red"),pch
       ="--")
title("MPG - DRAT - QSEC")

grid(col="blue")


################################################################


midx = 2
for (ii in 1:24) {
  my.title = paste("PCH =",ii,sep=" ")
  if (midx > 6) {
    midx = 2
  } else {
    midx = midx + 1
  }
  plot(1:10, 1:10, pch=ii, cex=2, main=my.title)
  text(midx,9,"R IS COOL", col = "red")
  Sys.sleep(1)
}



four.cyl = subset(mtcars, cyl == 4)
six.cyl = subset(mtcars, cyl == 6)
eight.cyl = subset(mtcars, cyl == 8)
plot(mpg~wt,data=mtcars,type="n")
points(mpg~wt,data=four.cyl,pch=4)
points(mpg~wt,data=six.cyl,pch=6)
points(mpg~wt,data=eight.cyl,pch=8)
legend("topright",c("4 Cyl","6 Cyl","8 Cyl"),
       pch=sort(unique(mtcars$cyl)))





par(mfrow=c(2,2))
plot(mtcars$mpg,main="MPG",xlab="Car",ylab="MPG",type="p")
plot(mtcars$mpg,main="MPG",xlab="Car",ylab="MPG",type="l")
plot(mtcars$mpg,main="MPG",xlab="Car",ylab="MPG",type="h")
plot(mtcars$mpg,main="MPG",xlab="Car",ylab="MPG",type="o")
legend("topleft",legend=c("Test Legend"),cex=0.8)
points(mtcars$mpg, cex = 2.0,col = "blue",pch=18)




################################################################


par(mfrow=c(2,2))
plot(mpg~wt,data=mtcars,pch=21,col="black",cex=1)
plot(mpg~wt,data=mtcars,pch=21,col="black",cex=1.5)
plot(mpg~wt,data=mtcars,pch=21,col="black",cex=2.5)
plot(mpg~wt,data=mtcars,pch=21,col="black",cex=3.5)
# OR MORE SIMPLY
par(mfrow=c(2,2))
my.font <- function(size) {
  plot(mpg~wt,data=mtcars,pch=21,col="black",cex=size)
}


################################################################


pairs(mtcars[,c(1,3:6)], cex = 1.5, pch=21,
      bg="light blue",main="Pairs plot of 5 variables")


pairs(mtcars[,c(1,3:6)],cex = 1.5,pch=21,bg="light blue",
      main="Pairs plot of 5 variables",panel=panel.smooth)


panel.cor <- function(x, y, ...) {
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- round(abs(cor(x, y)),2)
  txt <- as.character(r)
  text(0.5, 0.5, txt, cex = 2.0,col="red")
}
pairs(mtcars[,c(1,3:6)], cex = 1.5,
      pch=21,
      bg="light blue",
      main="Pairs plot of 5 variables",
      upper.panel = panel.cor,
      lower.panel = panel.smooth)



################################################################


my.factors = factor(mtcars$am,labels=c("auto","manual"))
coplot(mpg~wt | my.factors,data=mtcars,col="red",
       pch=16,main="MPG vs Weight")


coplot(mpg~wt|factor(cyl)*my.factors,data=mtcars)



my.coplot <- function(x,y,...) {
  points(x,y,col="blue",pch=16)
  abline(lm(y~x),col="red",lty=3)
}
coplot(mpg~wt|my.factors, data=mtcars, col="red",
       pch=16,main="MPG vs Weight",
       panel=my.coplot)




my.cols = rainbow(3)
my.cols
par(mfrow=c(1,1))
ylim=c(0,50)
xlim=c(0,32)
plot(mtcars$mpg,type="l",xlim=xlim,ylim=ylim,col=my.cols[1])
lines(mtcars$drat,type="l",col=my.cols[2])
lines(mtcars$qsec,type="l",col=my.cols[3])
legend("topright",c("mpg","drat","qsec"),
       col=c("black","green","red"),pch="--")



################################################################


dotchart(mtcars$mpg,labels=row.names(mtcars),
         cex=.5,
         main="Gas Milage for Car Models",
         xlab="Miles Per Gallon")



dotchart(mtcars$mpg, labels = row.names(mtcars),
         cex=.5, main="Gas Milage for Car Models",
         groups=factor(mtcars$cyl))







my.table = ( tapply(mtcars$mpg,mtcars$cyl,mean) ) 

  
barplot(my.table, col=terrain.colors(3),
        legend=TRUE, main="MPG by Cylinders")




transmissions = factor(mtcars$am, labels=c("Auto","Manual"))
plot(transmissions,mtcars$mpg,
     main="MPG by Transmission Type", col=c("blue","green"))




