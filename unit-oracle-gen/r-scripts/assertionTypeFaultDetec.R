data <- read.csv(file="../data/assertionTypeFaultDetec.txt", header=T)

pdf("assertionTypeFaultDetec.pdf")

x <- data$appId

#manualY<-data$manual
expY<-data$exp
implExpY<-data$implExp
candidExpY<-data$candidExp
atrinaY<-data$atrina

height <- rbind(expY, implExpY, candidExpY, atrinaY)



#colors <- grey.colors(3, start = 0.8, end = 0.4, gamma = 2.2)

colors<-c("white", "lightgray", "darkgray", "black")

mp <- barplot(height, beside = TRUE, 
ylim = c(0, 100), ylab="Fault Detection Rate (%)", xlab="Experimental Objects", col=colors)



myaxis <- c(3, 8, 13, 18)
myaxislab <- c(1, 2, 3, 4)  

labels <- c('Explicit Only Assertions', 'Explicit+Implicit Assertions', 'Explicit+Candidate Assertions', 'Atrina')
#inset <- c(0.1, 0.1)
axis(1, at = myaxis, labels = myaxislab, cex.axis = 1)
legend("topright", labels, fill=colors, bty="n")
dev.off()