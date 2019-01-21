setwd("C:/R/paper/")

#install.packages("reshape2_1.4.3.zip", repos = NULL)
#install.packages("rmarkdown_1.10.zip", repos = NULL)
#install.packages("kableExtra_0.9.0.zip", repos = NULL)
#install.packages("knitr_1.20.zip", repos = NULL)
install.packages("ggplot2")
library("ggplot2")
datainpath <- "C:/R/paper/Data/"
Sample_ID_file <- "c:/R/paper/Data/"   #選取Samole_ID資料
data_file <-  list.files(datainpath,pattern=".*csv$",full.names = T) #choose.files()   #選取資料
Data <- read.csv(data_file)
dim(Data)
Data_colname<- names(Data)
par(mfrow = c(1,1),las = 1)
for(i in 3:15){
  plot(c(1:12),Data[,i]/10000,type = "b", main = Data_colname[i],xlab = "Batch", ylab = "Conc.(%)",ylim = c(0,max(Data[,i]/10000+0.5)))
  jpeg(file = paste0(datainpath,"BA-",Data_colname[i],".jpeg"), width = 1024, height = 768) 
  }
Data_colname[3]
