data <- read.csv(file="../data/faultDetectionRate.txt", header=T)

pdf("barplot-faultDetectionRate.pdf")

x <- data$appId
atrinaY<-data$atrina
mutationY<-data$mutation
manualY<-data$manual

atrinaNoFd <- data$atrinaNoFd
mutationNoFd <- data$mutationNoFd
manualNoFd <- data$manualNoFd

height <- rbind(atrinaY, mutationY, manualY)
length <- rbind(atrinaNoFd, mutationNoFd, manualNoFd )


#colors <- grey.colors(3, start = 0.8, end = 0.4, gamma = 2.2)

colors<-c("white", "lightgray", "black")

mp <- barplot(height, beside = TRUE, 
ylim = c(0, 100), ylab="Fault Detection Rate (%)", xlab="Experimental Objects", col=colors)

text(mp, height, labels = format(length, 3), pos = 3, cex = .80)


myaxis <- c(2.5, 6.5, 10.5, 14.5)
myaxislab <- c(1, 2, 3, 4)  

labels <- c('Atrina', 'Mutation-based', 'Human-writen')
#inset <- c(0.1, 0.1)
axis(1, at = myaxis, labels = myaxislab, cex.axis = 1)
legend("topright", labels, fill=colors, bty="n")
dev.off()
