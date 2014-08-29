setwd("C:\\Documents and Settings\\Macro\\Desktop\\Ivandata\\Senator-Similarity")
library(foreign)
library(ggplot2)
data.dir <- "data/roll_call/"
data.files <- list.files(data.dir)
rollcall.data <- lapply(data.files,
                        function(f) read.dta(paste(data.dir, f, sep=""), convert.factors=FALSE))

dim(rollcall.data[[1]])
head(rollcall.data[[1]])

rollcall.simplified <- function(df){
    no.pres <- subset(df,state<99)
    for(i in 10:ncol(no.pres)){
        no.pres[,i]<-ifelse(no.pres[,i]>6,0,no.pres[,i])
        no.pres[,i]<-ifelse(no.pres[,i]>0 & no.pres[,i]<4,1,no.pres[,i])
        no.pres[,i]<-ifelse(no.pres[,i]>1,-1,no.pres[,i])
    }
    return(as.matrix(no.pres[,10:ncol(no.pres)]))
}
rollcall.simple<-lapply(rollcall.data,rollcall.simplified)
