a<-rnorm(500,0,1)
b<-rnorm(500,10,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second


a<-rnorm(100,0,1)
b<-rnorm(100,5,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second

#p-value < 2.2e-16

a<-rnorm(100,0,15)
b<-rnorm(100,5,15)
t.test(a,b)
p1<-hist(a,breaks=30)
p2<-hist(b,breaks=30)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second

sort(a)
sort(b)
#p-value < 2.2e-16


#fixed SD, fixed samples size, change the difference of mean

a<-rnorm(100,0,1)
b<-rnorm(100,1,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second


a<-rnorm(100,0,1)
b<-rnorm(100,0.1,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second





#fixed SD, fixed difference of mean, change the sample size

a<-rnorm(200,0,1)
b<-rnorm(200,2,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second

p-value < 2.2e-16

a<-rnorm(10,0,1)
b<-rnorm(10,2,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second

p-value = 0.00183

a<-rnorm(5,0,1)
b<-rnorm(5,2,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second

p-value = 0.0003101


a<-rnorm(3,0,1)
b<-rnorm(3,2,1)
t.test(a,b)
p1<-hist(a)
p2<-hist(b)
plot( p1, col=rgb(1,0,0,1/2), xlim=c(min(c(a,b)),max(c(a,b))))  # first histogram
plot( p2, col=rgb(0,0,1,1/2), add=T)  # second

p-value = 0.368


############################################

u1<-0
u2<-2
sd1<-1
sd2<-1
n1<-100
n2<-100
rounds<-10

u2_all<-seq(-40,40,by=2)/10
p_matrix<-matrix(0,length(u2_all),rounds)
rownames(p_matrix)<-as.character(u2_all)
colnames(p_matrix)<-1:rounds

for(i in 1:length(u2_all))
{
	u2<-u2_all[i]
	for(j in 1:rounds)
	{
		a<-rnorm(n1,u1,sd1)
		b<-rnorm(n2,u2,sd2)
		p_matrix[i,j]<-t.test(a,b)$p.value
	}
}

par(mfcol=c(2,2))
plot(u2_all,apply(p_matrix,1,mean))
abline(h=0.05,col=2,lty=2)
boxplot(t(p_matrix))
abline(h=0.05,col=2,lty=2)
boxplot(t(-log(p_matrix)))
abline(h=-log(0.05),col=2,lty=2)

############################################

u1<-0
u2<-0.1
sd1<-1
sd2<-1 
n1<-100
n2<-100
rounds<-10

sd2_all<-seq(1,100,by=2)/100
p_matrix<-matrix(0,length(sd2_all),rounds)
rownames(p_matrix)<-as.character(sd2_all)
colnames(p_matrix)<-1:rounds

for(i in 1:length(sd2_all))
{
	sd1<-sd2_all[i]
	sd2<-sd2_all[i]
	for(j in 1:rounds)
	{
		a<-rnorm(n1,u1,sd1)
		b<-rnorm(n2,u2,sd2)
		p_matrix[i,j]<-t.test(a,b)$p.value
	}
}

par(mfcol=c(2,2))
plot(sd2_all,apply(p_matrix,1,mean))
abline(h=0.05,col=2,lty=2)
boxplot(t(p_matrix))
abline(h=0.05,col=2,lty=2)
boxplot(t(-log(p_matrix)))
abline(h=-log(0.05),col=2,lty=2)


##########################################






