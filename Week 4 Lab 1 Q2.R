USArrests


firstTenRows = USArrests[1:10, ]
firstTenRows

label_names =  c(rownames(firstTenRows))
label_names


pie(firstTenRows$Murder,  col=rainbow(length(firstTenRows)),
    labels=c(rownames(firstTenRows)))


  legend(-2.6, 1.0, c(rownames(firstTenRows)), cex=0.9,  fill=rainbow(length(firstTenRows)))     

title(main="Week 4 Lab 1 - Mazaharuddin Mohammad", col.main="Green", font.main=4)
