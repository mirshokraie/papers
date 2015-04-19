#library(ROCR)

pythia <- read.csv(file="../data/pythia.txt")
artemis <- read.csv(file="../data/artemis.txt")


pdf("recall.pdf")




#Precision

plot(pythia$AppId, pythia$Recall, type="p", ylim=c(0, 100), xlim=c(1,11), pch=19, ylab="Recall", xlab="Experimental Objects")
points(artemis$AppId, artemis$Recall, xlim=c(1,11), type="p", pch=22)

axis(1, at = c(1,3,5,7,9,11), labels =c(1,3,5,7,9,11))
legend("topright", c("Pythia", "Artemis"), pch = c(19,22),
 lty=0, bty="n")

dev.off()