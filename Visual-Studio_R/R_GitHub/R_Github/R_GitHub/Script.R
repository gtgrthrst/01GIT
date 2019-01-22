install.packages("ggplot2")
library("ggplot2")
datainpath <- "C:/R/paper/Data/BA/"
Sample_ID_file <- "c:/R/paper/Data/BA/" #選取Samole_ID資料
data_file <- list.files(datainpath, pattern = ".*csv$", full.names = T) #choose.files()   #選取資料
Data <- read.csv(data_file)
Data_RC_num <- dim(Data)
Data_colname <- names(Data)
par(mfrow = c(1, 1), las = 1)

for (i in 2:40) {
    plot(c(1:12), Data[, i] / 10000, type = "b", main = paste0("BA_", Data_colname[i]), xlab = "Batch", ylab = "Conc.(%)", ylim = c(0, max(Data[, i] / 10000 + 0.1)))
    jpeg(file = paste0(datainpath, "BA-", Data_colname[i], ".jpeg"), width = 1024, height = 768)
}
qplot(c(1:12), Data$Si)