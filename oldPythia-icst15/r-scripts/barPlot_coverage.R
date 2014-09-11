pythia <- read.csv(file="../data/pythia.txt", header=T)
artemis <- read.csv(file="../data/artemis.txt", header=T)

pdf("barplot_coverage.pdf")

x <- pythia$AppId
pythiaY<-pythia$Coverage
artemisY<-artemis$Coverage

height <- rbind(pythiaY, artemisY)


colors <- grey.colors(2, start = 0.8, end = 0.4, gamma = 2.2)

mp <- barplot(height, beside = TRUE, 
ylim = c(0, 100), ylab="Coverage (%)", xlab="Experimental Objects", col=colors)



myaxis <- c(2, 5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35, 38)
myaxislab <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)  

labels <- c('Pythia', 'Artemis')
#inset <- c(0.1, 0.1)
axis(1, at = myaxis, labels = myaxislab, cex.axis = 1)
legend("topright", labels, fill=colors, bty="n")
dev.off()