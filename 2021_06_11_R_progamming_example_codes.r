rm(list=ls())


x5 <- 6.25
x6 = sqrt(x5)

marks <- c(10, 6, 4, 7, 8)
x <- c(1:3, 10:13)
x1 <- c(1, 2)
x2 <- c(3, 4)
x <- c(x1, x2)
 cbind(x1, x2,x1)
 rbind(x1, x2,x1)



12345678901:12345678920

1.5 + 2.3 - 0.6 + 2.1*1.2 - 1.5/0.5 + 2^3

1.5 + 2.3 - (0.6 + 2.1)*1.2 - 1.5/0.5 + 2^3


2^4

5.1 %/% 2.5   #quotient
5.1 %% 2.5   #remainder
5 %% 2   #remainder
5 %/% 2  #quotient

log(-1)

x <- c(1, 10)
x + 2
x - 2
x * 2
x / 2
x ^ 2
2 / x
2 ^ x
c(1, NA, 3) + 10

mean(c(1,2,3,4,5))
mean(c(1:10))
sum(c(1,2,3,4,5))
sum(c(1:10))

mean(c(1,2,3,4,5, NA),na.rm=T)
mean(c(1:10, NA),na.rm=T)
sum(c(1,2,3,4,5, NA),na.rm=T)
sum(c(1:10, NA),na.rm=T)

x1 <- c(1, 10)
x2 <- c(4, 2)
x1 + x2
x1 - x2
x1 * x2
x1 / x2

x1 <- c(10, 20)
x2 <- c(1, 3, 5, 7)
x1 + x2

c(c(10, 20),c(10, 20))
c(1, 3, 5, 7)

c(1,2) + c(1,2,3)
sqrt(c(1, 4, 6.25))

c(c(1, 2),c(1))
c(1, 4, 6.25)

#try help.start() -> Search Engine & Keywords -> math

#6s challenge: https://www.youtube.com/watch?v=h2vkrxvh76c
factorial(factorial(0)+factorial(0)+factorial(0))

#sorting
x <- c(33, 55, 11,1,23,5,6)
sort(x)
## [1] 11 33 55
rev(sort(x))
sort(x,decreasing=T)
## [1] 55 33 11
order(x)
## [1] 3 1 2
x[order(x)]
##
rank(x)
## [1] 11 33 55
unique(c(6,1,2,2,3,4,5,6,1,1,1,2))
unique(c(1,2,2,3,4,5,6,1,1,1,2))
unique(1:20)
table(c(6,1,2,2,3,4,5,6,1,1,1,2))
aaa<-table(c(6,1,2,2,3,4,5,6,1,1,1,2))
aaa<-table(c("A","B","A","C","A","D","D","E","D","F","G"))

names(x)<-c("A","B","C","D","E","F","G")
names(x)<-1:7

cumsum(1:5)
## [1]  1  3  6 10 15
cumprod(1:5)
## [1]   1   2   6  24 120

seq(0, 10)
seq(0, 2*pi, length.out=100)
seq(0, 2*pi, by=1)

n<-10
rep(0, n)
rep(c(rep(c(1,6), 2),10),3)

#########################
sqrt(-1)
## [1] NaN
## Warning message:
## In sqrt(-1) : NaNs produced

#logic operation
aa <- (log10(15) < 2); print(aa)
aa <- (log10(15) > 2); print(aa)

a1<-"1"
a2<-1

a1==a2
mode(a1)==mode(a2)

c(1, 3, 5) > 2
(1:4) >= (4:1)
c(1, NA, 3) > 2
1 == 1
NA == NA

is.na(NA)
is.na(c(1, NA, 3))
is.na(c(1, NA, 3) > 2)
#<   <=  >  >=  ==  !=  %in%
c(1,3) %in% c(2,3,4)
c(1,3) %in% c(1,2,3,4)
c(1,2,3,4)  %in% c(1,3)

any(c(1, NA, 3) > 2)
sum((c(1, NA, 3) > 2)==T,na.rm=T)>0

which(c(FALSE, TRUE, TRUE, FALSE, NA))
aaa<-1:20
aaa[which(aaa>10)]
identical(c(1,2,3), c(1,2,NA))
identical(c(1L,2L,3L), c(1,2,3))


#####################
#Characters
######################
s1 <- c('abc', 1,2,3,45,56,10:100)
s1 <- c('abc', '', 'a cat', NA, 1234, 'Bioinformatics')
gene_list<-c("SLC1A2","TP53","HK2","HK1","SLC2A1","SLC5A1","CD4LG","CD8A","SL1","SC1")

toupper(s1)
tolower(s1)
nchar(s1)
nchar(gene_list)

substr('JAN07', 1, 3)
substr(gene_list, 1, 3)

substr('JAN07', 4, 5)
substr('JAN07', 4, 5) + 2000
as.numeric(substr('JAN07', 4, 5)) + 2000
as.numeric(substr('JAN07', 1, 2)) + 2000

as.character((1:5)*5)

bbb<-paste('file_', 1:10,'.txt',sep="")

x <- '1, 3; 5'
gsub(';', ',', x, fixed=TRUE)
gsub('SLC', 'AA', gene_list, fixed=TRUE)

unlist(strsplit(bbb[1],"_"))
unlist(strsplit(bbb[1],""))

gene_list[agrep("SLC",gene_list,max.distance=0)]
gene_list[agrep("SLC",gene_list,max.distance=1)]


