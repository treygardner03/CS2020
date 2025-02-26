pdf_file<-"barcharts_simple.pdf"
cario_pdf(gb="gray98", pdf_file, width = 9, height = 6.5)
par(omi = c(), mai = c(), mgp = c(), family = "Lato Light", las = 1)
#import data and prepare chart
library(gdata)
ipsos<-read.xls("ipsos.xlsx", encoding = "latin1")
sort.ipsos <- ipsos[order(ipsos$Percent)]
attach(sort.ipsos)
#Create chart
x <- barplot(Percent, names.arg = F, horiz = T, border = NA, xlim = c(0,100), col = "grey",
             cex.names = 0.85, axes = F)

