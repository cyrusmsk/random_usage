args = commandArgs(trailingOnly=TRUE)
R <- as.numeric(args[1])

set.seed(123)

res <- c()

for (i in 1:1000) {
    r <- R * sqrt(runif(1))
    theta <- runif(1) * 2 * pi
    x <- r * cos(theta)
    y <- r * sin(theta)
    res <- rbind(res, c(x,y))
}

write.table(res, "rdata.csv", sep = ",", row.names = F, col.names = F)
