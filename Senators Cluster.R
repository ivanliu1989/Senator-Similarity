setwd("C:\\Documents and Settings\\Macro\\Desktop\\Ivandata\\Senator-Similarity")
library(foreign)
library(ggplot2)
data.dir <- "data/roll_call/"
data.files <- list.files(data.dir)
rollcall.data <- lapply(data.files,
                        function(f) read.dta(paste(data.dir, f, sep=""), convert.factors=FALSE))

dim(rollcall.data[[1]])
head(rollcall.data[[1]])
