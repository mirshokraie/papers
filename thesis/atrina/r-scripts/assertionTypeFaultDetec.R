data <- read.csv(file="../data/assertionTypeFaultDetec.txt", header=T)

pdf("assertionTypeFaultDetec.pdf")

x <- data$appId

#manualY<-data$manual
expY<-data$exp
atrinaY<-data$atrina
implExpY<-data$implExp
candidExpY<-data$candidExp


atrinaNoFd <- data$atrinaNoFd
expNoFd <- data$expNoFd
implExpNoFd <- data$implExpNoFd
candidExpNoFd <- data$candidExpNoFd


height <- rbind(atrinaY, expY, implExpY, candidExpY)
length <- rbind( atrinaNoFd, expNoFd, implExpNoFd, candidExpNoFd )



#colors <- grey.colors(3, start = 0.8, end = 0.4, gamma = 2.2)

colors<-c("white", "lightgray", "darkgray", "black")

mp <- barplot(height, beside = TRUE, 
ylim = c(0, 100), ylab="Fault Detection Rate (%)", xlab="Experimental Objects", col=colors)
text(mp, height, labels = format(length, 3), pos = 3, cex = .80)


myaxis <- c(3, 8, 13, 18)
myaxislab <- c(1, 2, 3, 4)  

labels <- c('Atrina', 'Explicit Only Assertions', 'Explicit+Implicit Assertions', 'Explicit+Candidate Assertions')
#inset <- c(0.1, 0.1)
axis(1, at = myaxis, labels = myaxislab, cex.axis = 1)
legend("topright", labels, fill=colors, bty="n")
dev.off()
