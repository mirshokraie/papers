#library(ROCR)

pythia <- read.csv(file="../data/pythia.txt")
artemis <- read.csv(file="../data/artemis.txt")


pdf("coverage.pdf")




#Precision

plot(pythia$AppId, pythia$Coverage, type="o", ylim=c(0, 100), xlim=c(1,11), lty="dashed", pch=22, ylab="Coverage", xlab="Experimental Objects")
lines(artemis$AppId, artemis$Coverage, xlim=c(1,11),  lty="dashed", type="o", pch=6)

axis(1, at = c(1,3,5,7,9,11), labels =c(1,3,5,7,9,11))
legend("topright", c("Pythia", "Artemis"), pch = c(22,6),
 lty=0, bty="n")

dev.off()