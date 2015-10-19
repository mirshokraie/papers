data <- read.csv(file="../data/performance.txt", header=T)

pdf("performance.pdf")

x <- data$appId

atrinaY<-data$atrina
mutationY<-data$mutation


height <- rbind(atrinaY, mutationY)

#colors <- grey.colors(3, start = 0.8, end = 0.4, gamma = 2.2)

colors<-c("white", "black")

mp <- barplot(height, beside = TRUE, 
ylim = c(0, 200), ylab="Time (Seconds)", xlab="Experimental Objects", col=colors)
#text(mp, height, labels = format(length, 3), pos = 3, cex = .80)


myaxis <- c(2, 5, 8, 11, 14, 17, 20)
myaxislab <- c(1, 2, 3, 4, 5, 6, 7)  

labels <- c('Atrina', 'Mutation-based')
#inset <- c(0.1, 0.1)
axis(1, at = myaxis, labels = myaxislab, cex.axis = 1)
legend("topright", labels, fill=colors, bty="n")
dev.off()
