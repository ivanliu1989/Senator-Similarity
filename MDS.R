setwd("C:\\Documents and Settings\\Macro\\Desktop\\Ivandata\\Senator-Similarity")
set.seed(851982)
ex.matrix <- matrix(sample(c(-1,0,1),24,replace=T),nrow=4,ncol=6)
row.names(ex.matrix)<- c('A','B','C','D')
colnames(ex.matrix)<-c('P1','P2','P3','P4','P5','P6')

# matrix transposition and multiplication
t(ex.matrix)
ex.mult <- ex.matrix %*% t(ex.matrix)
ex.mult.2 <- t(ex.matrix) %*% ex.matrix

# distance matrix
sqrt(sum((ex.mult[1,]-ex.mult[4,])^2))
ex.dist <- dist(ex.mult)
ex.dist

# MDS
ex.mds <- cmdscale(ex.dist)
png('MDS.png')
plot(ex.mds,type='n')
text(ex.mds,c('A','B','C','D'))
dev.off()