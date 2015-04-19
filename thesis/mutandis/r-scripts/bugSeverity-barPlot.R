data <- read.csv(file="../data/bugSeverity.txt", header=T)

pdf("bugSeverity-barPlot.pdf")

x <- data$AppId
mutandisY<-data$Mutandis
randomY<-data$Random
PageRankY<-data$PageRank
RandVarMutY<-data$RandVarMut

height <- rbind(mutandisY,randomY, PageRankY,RandVarMutY)


#colors <- c(4, start = 0.8, end = 0.4, gamma = 2.2)
colors<-c("white", "lightgray", "darkgray", "black")

mp <- barplot(height, beside = TRUE, 
ylim = c(0, 5), ylab="Bug Severity Rank", xlab="Experimental Objects",
col=colors)



myaxis <- c(3, 8, 13, 18, 23)
myaxislab <- c(1, 2, 3, 4, 5)  

labels <- c('Mutandis', 'Random', 'PageRank', 'Random Variable Mutation')
axis(1, at = myaxis, labels = myaxislab, cex.axis = 1)
legend("topright", labels, fill=colors, bty="n")
dev.off()