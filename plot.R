args = commandArgs(trailingOnly=TRUE)
file <- args[1]

data <-  read.csv(paste0(file,".csv"), header = F)

png(paste0(file,".png"))
plot(data)
garbage <- dev.off()
