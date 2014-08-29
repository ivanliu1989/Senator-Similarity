setwd("C:\\Documents and Settings\\Macro\\Desktop\\Ivandata\\Senator-Similarity")
set.seed(851982)
ex.matrix <- matrix(sample(c(-1,0,1),24,replace=T),nrow=4,ncol=6)
row.names(ex.matrix)<- c('A','B','C','D')
colnames(ex.matrix)<-c('P1','P2','P3','P4','P5','P6')

# matrix transposition and multiplication
