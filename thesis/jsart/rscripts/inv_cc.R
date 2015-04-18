
 regInvar<- read.csv(file="../data/inv_cc.txt", header=T, row.names=1)

pdf("inv_cc.pdf")

ourmethod <- "spearman"

rcoef<-round(cor(regInvar$uniqueInv,regInvar$TCC, method = ourmethod),3)

t <- cor.test(regInvar$uniqueInv,regInvar$TCC, method = ourmethod, alternative = "greater")
p <- round(t$p.value, digits=3)

plot(regInvar$TCC, regInvar$uniqueInv, main=paste("r=",rcoef,"  p=", p), xlab="Total Cyclomatic Complexity", ylab="Number of Unique Invariants", pch=1)

#abline(lm(regInvar$uniqueInv~regInvar$TCC), col="red") # regression line (y~x) 




dev.off()