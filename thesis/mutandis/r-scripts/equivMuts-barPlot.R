data <- read.csv(file="../data/equivMuts.txt", header=T)

pdf("equivMuts-barPlot.pdf")

x <- data$AppId
mutandisY<-data$MutandisPerc
randomY<-data$RandomPerc
PageRankY<-data$PageRankPerc
RandVarMutY<-data$RandVarMutPerc

height <- rbind(mutandisY,randomY, PageRankY,RandVarMutY)


#colors <- grey.colors(4, start = 0.8, end = 0.4, gamma = 2.2)
colors<-c("white", "lightgray", "darkgray", "black")

mp <- barplot(height, beside = TRUE, 
ylim = c(0, 20), ylab="Equivalent Mutants (%)", xlab="Experimental Objects", col=colors)



myaxis <- c(3, 8, 13, 18, 23)
myaxislab <- c(1, 2, 3, 4, 5)  

labels <- c('Mutandis', 'Random', 'PageRank', 'Random Variable Mutation')
axis(1, at = myaxis, labels = myaxislab, cex.axis = 1)
legend("topright", labels, fill=colors, bty="n")
dev.off()