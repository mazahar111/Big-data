 

 

#R Plotting Exercise Week 4

 

 

# Define the cars vector with 5 values 

cars <- c(1, 3, 6, 4, 9) 

 

# Graph the cars vector with all defaults 

plot(cars) 

 

 

# Graph cars using blue points overlayed by a line  

plot(cars, type="o", col="blue") 

 

#Plot Types 
#"p": Points
#"l": Lines
#"b": Both
#"c": The lines part alone of "b"
#"o": Both "overplotted"
#"h": Histogram like (or high-density) vertical lines
#"n": No plotting


 

# Create a title with a red, bold/italic font 

title(main="Autos", col.main="red", font.main=4) 

 

 

# Define 2 vectors 

cars <- c(1, 3, 6, 4, 9) 

trucks <- c(2, 5, 4, 5, 12) 

 

# Graph cars using a y axis that ranges from 0 to 12 

plot(cars, type="o", col="blue", ylim=c(0,12)) 

 

# Graph trucks with red dashed line and square points 

lines(trucks, type="o", pch=22, lty=2, col="red") 

 

# Create a title with a red, bold/italic font 

title(main="Autos", col.main="red", font.main=4) 

 

 

#Next let's change the axes labels to match our data and add a legend. We'll also compute the y-axis values using the max function so any changes to our data will be automatically reflected in our graph. 

 

 

# Calculate range from 0 to max value of cars and trucks 

g_range <- range(0, cars, trucks) 

 

# Graph autos using y axis that ranges from 0 to max  

# value in cars or trucks vector.  Turn off axes and  

# annotations (axis labels) so we can specify them ourself 

plot(cars, type="o", col="blue", ylim=g_range,  

   axes=FALSE, ann=FALSE) 

 

# Make x axis using Mon-Fri labels 

axis(1, at=1:5, las=1, lab=c("Mon","Tue","Wed","Thu","Fri")) 

 

# Make y axis with horizontal labels that display ticks at  

# every 4 marks. 4*0:g_range[2] is equivalent to c(0,4,8,12). 

axis(2, las=1, at=4*0:g_range[2]) 

 

# Create box around plot 

box() 

 

# Graph trucks with red dashed line and square points 

lines(trucks, type="o", pch=22, lty=2, col="red") 

 

# Create a title with a red, bold/italic font 

title(main="Autos", col.main="red", font.main=4) 

 

# Label the x and y axes with dark green text 

title(xlab="Days", col.lab=rgb(0,0.5,0)) 

title(ylab="Total", col.lab=rgb(0,0.5,0)) 
different color 
title(ylab="Total", col.lab=rgb(0.3, 0.7, 0.9)) 
 

# Create a legend at (1, g_range[2]) that is slightly smaller  

# (cex) and uses the same line colors and points used by  

# the actual plots  

legend(1, g_range[2], c("cars","trucks"), cex=0.8,  

   col=c("blue","red"), pch=21:22, lty=1:2); 

 

#Now let's read the graph data directly from a tab-delimited file. The file contains an additional set of values for SUVs. We'll save the file in the C:/R directory (you'll use a different path if not using Windows).  

#autos.dat 

#cars  trucks suvs
#1      2     4 
#3      5     4
#6      4     6
#4      5     6
#9      12    16 

 

 

 

#We'll also use a vector for storing the colors to be used in our graph so if we want to change the colors later on, there's only one place in the file that needs to be modified.  Finally we'll send the figure directly to a PNG file. 

 

# Read car and truck values from tab-delimited autos.dat 

autos_data <- read.table("D:/Rdata/autos.dat", header=T, sep="\t")  

 

# Compute the largest y value used in the data (or we could 

# just use range again) 

max_y <- max(autos_data) 

 

# Define colors to be used for cars, trucks, suvs 

plot_colors <- c("blue","red","forestgreen") 

 

# Start PNG device driver to save output to figure.png 

png(filename="C:/hadoop/classfigure.png", height=295, width=300,  

 bg="white") 

 

# Graph autos using y axis that ranges from 0 to max_y. 

# Turn off axes and annotations (axis labels) so we can  

# specify them ourself 

plot(autos_data$cars, type="o", col=plot_colors[1],  

   ylim=c(0,max_y), axes=FALSE, ann=FALSE) 

 

# Make x axis using Mon-Fri labels 

axis(1, at=1:5, lab=c("Mon", "Tue", "Wed", "Thu", "Fri")) 

 

# Make y axis with horizontal labels that display ticks at  

# every 4 marks. 4*0:max_y is equivalent to c(0,4,8,12). 

axis(2, las=1, at=4*0:max_y) 

 

# Create box around plot 

box() 

 
 
# Graph trucks with red dashed line and square points 

lines(autos_data$trucks, type="o", pch=22, lty=2,  

   col=plot_colors[2]) 

 

# Graph suvs with green dotted line and diamond points 

lines(autos_data$suvs, type="o", pch=23, lty=3,  

   col=plot_colors[3])

 

# Create a title with a red, bold/italic font 

title(main="Autos", col.main="red", font.main=4,cex.main=6) 

 

# Label the x and y axes with dark green text 

title(xlab= "Days", col.lab=rgb(0,0.5,0)) 

title(ylab= "Total", col.lab=rgb(0,0.5,0)) 

 

# Create a legend at (1, max_y) that is slightly smaller  

# (cex) and uses the same line colors and points used by  

# the actual plots 

legend(1, max_y, names(autos_data), cex=0.8, col=plot_colors,  

   pch=21:23, lty=1:3); 

    

# Turn off device driver (to flush output to png) 

dev.off() 

 

data(mtcars) 

 

#Bar Charts  

 

# Define the cars vector with 5 values 

cars <- c(1, 3, 6, 4, 9) 

 

# Graph cars 

barplot(cars) 

 

# Read values from tab-delimited autos.dat  

autos_data <- read.table("C:/Rdatap/autos.dat", header=T, sep="\t") 

     

# Graph cars with specified labels for axes.  Use blue  

# borders and diagnal lines in bars. 

barplot(autos_data$cars, main="Cars", xlab="Days",   

   ylab="Total", names.arg=c("Mon","Tue","Wed","Thu","Fri"),  

   border="blue", density=c(10,20,30,40,50))

 

    

# Graph autos with adjacent bars using rainbow colors 

barplot(as.matrix(autos_data), main="Autos", ylab= "Total", 

   beside=TRUE, col=rainbow(5)) 

 

# Place the legend at the top-left corner with no frame   

# using rainbow colors 

legend("topleft", c("Mon","Tue","Wed","Thu","Fri"), cex=0.6,  

   bty="n", fill=rainbow(5)); 

 

 

# Graph autos (transposing the matrix) using heat colors,   

# put 10% of the space between each bar, and make labels   

# smaller with horizontal y-axis labels 

barplot(t(autos_data), main="Autos", ylab="Total",  

   col=heat.colors(3), space=0.1, cex.axis=0.8, las=1, 

   names.arg=c("Mon","Tue","Wed","Thu","Fri"), cex=0.8)  

    

# Place the legend at (6,30) using heat colors 

legend(0, 35, names(autos_data), cex=0.8, fill=heat.colors(3)); 

    

 

 

#Pie Charts  

 

# Create a pie chart for cars 

pie(cars) 

 

# Create a pie chart with defined heading and 

# custom colors and labels 

pie(cars, main="Cars", col=rainbow(length(cars)), 

   labels=c("Mon","Tue","Wed","Thu","Fri")) 

 

# Define some colors ideal for black & white print 

colors <- c("white","grey70","grey90","grey50","black") 

 

# Calculate the percentage for each day, rounded to one  

# decimal place 

car_labels <- round(cars/sum(cars) * 100, 1) 

 

# Concatenate a '%' char after each value 

car_labels <- paste(car_labels, "%", sep="") 

 

# Create a pie chart with defined heading and custom colors 

# and labels 

pie(cars, main="Cars", col=colors, labels=car_labels, cex=0.8) 

 

# Create a legend at the right    

legend(-1.8, 1.0, c("Mon","Tue","Wed","Thu","Fri"), cex=0.6,  

   fill=colors) 

 

 

 

#Dot Charts  

# Create a colored dotchart for autos with smaller labels 

dotchart(t(autos_data), color=c("red","blue","darkgreen"), 

   main="Dotchart for Autos", cex=0.8) 

 

 


 
