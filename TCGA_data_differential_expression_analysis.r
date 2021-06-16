load("TCGA-COAD.RData")
data_cancer<-log(d.matrix+1)
load("TCGA-COAD_N.RData")
data_normal<-log(d.matrix+1)

dim(data_cancer)
dim(data_normal)

rownames(data_cancer)==rownames(data_normal)

#write a for-loop to conduct a t.test for each gene (row) in data_cancer vs data_normal
#help me to identify the 100 genes that are most significantly up regulated in data_cancer vs data_normal (the genes of smallest p values and higher expression in data_cancer vs data_normal)
#help me to identify the 100 genes that are most significantly down regulated in data_cancer vs data_normal (the genes of smallest p values and lower expression in data_cancer vs data_normal)

use a for to conduct the t.test for each row, store the p.values into a vector, similarly, compute the mean difference, and use sort/which/... commands properly -> to get the gene list

p<-c(0,NA,0.1,1)
p[which(is.na(p)==1)]<-1
which(p<=sort(p)[2])

