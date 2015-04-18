#library(ROCR)

overhead <- read.csv(file="../data/overhead.txt")



pdf("overhead.pdf")


par(oma=c(1,1,1,2))
plot(overhead$appId, overhead$timeWithAssertions, xlim=c(1,9),ylim=c(0,100), type="o", lty="dashed", pch=6, xlab="Experimental Objects", ylab="Run Time (sec)")
lines(overhead$appId, overhead$timeWithoutAssertions, xlim=c(1,9),type="o", lty="dashed", pch=8)
par(new=TRUE)
plot(overhead$appId, overhead$jsAssertions, ylim=c(0,2500), xlim=c(1,9),yaxt="n", xlab="", ylab="", pch=1)



axis(1, at = c(1,3,5,7,9), labels =c(1,3,5,7,9))
axis(4)
mtext("Number of Assertions",side=4,line=3)
legend("topright",  c("Run time with assertion checking", "Run time without assertion checking", "Number of assertions per application"), pch = c(6,8,1), bty="n")

dev.off()
