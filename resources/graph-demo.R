### PACKAGES

# install.packages( "dplyr" )
# install.packages( "Lahman" )
# install.packages( "pander" )

library( dplyr )   # data wrangling
library( pander )  # formatting tables 
library( Lahman )  # baseball data
data( Master )

Master %>% head() %>% pander()





#############
#############    FUNCTIONS 
#############

# * arguments 
# * argument defaults 
# * implicit vs explicit arguments 
# * object vs argument assignment 



calcMortgage <- function( principal, years=30, APR=0.05 )
 {
   
    months <- years * 12   # covert years to months
    int.rate <- APR / 12   # convert annual rate to monthly
    
    # amortization formula
    monthly.payment <- ( principal * int.rate ) / 
                       (1 - (1 + int.rate)^(-months) )
    
    monthly.payment <- round( monthly.payment, 2 )
    
    return( monthly.payment )
 
 }
 
 


# Calculate a mortgage for a $100,000 house for 15 years with a 3 percent APR

calcMortgage( principal=100000, years=15, APR=0.03 )

# Notice the default arguments:
args( calcMortgage )

# Calculate a mortgage for a $100,000 house for 30 years with a 4.5 percent APR
calcMortgage( principal=100000, years=30, APR=0.045 )

# This works
calcMortgage( principal=100000 )

# These don't
calcMortgage(  )
calcMortgage( years=30 )
calcMortgage( APR=0.045 )

# Implicit argument calls 

calcMortgage( principal=100000, years=30, APR=0.05 )
calcMortgage( 100000, 30, 0.05 )

calcMortgage( years=30, principal=100000, APR=0.05 )
calcMortgage( 30, 100000, 0.05 )

# what about these? 

calcMortgage(  30, 0.05, principal=100000 )
calcMortgage( principle=100000 )
calcMortgage( prin=100000 )










#############
#############    plot() demo:   CORN ~ FERTILIZER
#############


source( "https://raw.githubusercontent.com/DS4PS/Data-Science-Class/master/DATA/corn_stalks.R" )
ls()  # see what was loaded 


plot( x=fertilizer, y=corn.height )

plot( 

  x=fertilizer,          # data, if x is omitted then uses 1:length(y)
  y=corn.height,                   
  xlim=c(-10,110),         # min and max value of axes
  ylim=c(200,350),   
  frame.plot=FALSE,      # draw a box around the data?
  col="steel blue",      # color of the points
  type="b",              # points="p", lines="l", both="b", or none="n"
  pch=19,                # shape of points to plot
  cex=2,                 # size of points
  main="Plot Title",     # title of your plot
  col.main="darkorange",
  cex.main=1.5,
  
  xlab="Label for X",    # axes labels
  ylab="Label for Y",  
  cex.lab=1.5,            # aspect ratio for axes labels
  col.lab="firebrick"
  
  )

title( xlab="<--  xlim=c(0,100)  -->", 
       line=-1.5, cex.lab=1, col.lab="gray20", family="mono" )
title( ylab="<-- ylim=c(200,350) -->    ", 
       line=-1.5, cex.lab=1, col.lab="gray20", adj=1, family="mono" )
text( 85, 345, "pch = 19", col="steelblue", cex=0.9, pos=4 )
text( 85, 335, "type = 'b'", col="steelblue", cex=0.9, pos=4 )
text( 85, 325, "cex = 2", col="steelblue", cex=0.9, pos=4 )
text( 85, 315, "col = 'steelblue'", col="steelblue", cex=0.9, pos=4 )
title( main="( col.main = 'darkorange' )              ", 
       adj=1, col.main="darkorange", cex.main=1 )
title( xlab="( col.lab = 'firebrick' )                     ", 
       adj=1, col.lab="firebrick", cex.main=0.8 )








#############
#############   PRIMARY PLOT FUNCTIONS
#############



points(
  x=x, y=y,              # plots points at the x,y positions 
  pch=19,                # the type of point to plot
  cex=2,                 # aspect ratio of point size
  col="red",             # color of points
  bg="green"             # fill color for open symbols
 )
text(
  x=x, y=y,              # draws a line by connecting points 
  labels=some.text,      # vector of labels to plot on the graph
  pos=3,                 # position: 1=below, 2=left, 3=above, 4=right
  cex=2,                 # aspect ratio of text size
  col="red"              # color of text
 )
lines(
  x=x, y=y,              # draws a line by connecting points 
  lty="l",               # type of lines, same as above
  lwd=0.5,               # line thickness
)
segments(
  x0=x0, y0=y0,          # starting points of the segments (usually a vector)
  x1=x1, y1=y1,          # end points of the segments (usually a vector)
  ...                    # other arguments from lines()
 )
title(
  main="Plot Title",     # text for the plot title
  xlab="x variable",     # text for the x-axis label
  ylab="y variable",     # text for the y-axis label
  line= -1               # move the title closer / further
)
 
axis(
  side=1                   # 1=below, 2=left, 3=above, 4=right
  at=c(10,20,30),          # position of tick marks
  labels=c("S","M","L")    # labels for tick marks 
)





# library( Lahman )
# data( Master )
# help( package="Lahman" )


t <- 
  Master %>% 
  filter( birthYear > 1849 & birthYear < 1996 ) %>% 
  mutate( bmi = ( weight * 0.45359237) / ( height / 39.370)^2  ) %>% 
  group_by( birthYear ) %>% 
  summarize( ave.bmi = mean( bmi, na.rm=T ) ) 

head( t ) %>% pander()


plot( t$birthYear, t$ave.bmi, 
      pch=19, type="b",
      frame.plot=F,
      xlab="Year of Birth",
      ylab="Average BMI",
      main="Body Mass Index of MLB Players Over Time" )


# BUILD FROM SCRATCH 

# find max and min values for each variable
xmin <- min( Master$height )
xmax <- max( Master$height )
ymin <- min( Master$weight )
ymax <- max( Master$weight )

# empty plot
plot.new()
plot.window( xlim=c(xmin,xmax), ylim=c(ymin,ymax) )
box( col="black" )
box( "outer", col="gray" )
text( 64, 200, "(Empty Canvas)", cex=2 )




### Add Points

plot.new()
plot.window( xlim=c(xmin,xmax), ylim=c(ymin,ymax) )
box( col="black" )
box( "outer", col="gray" )
points( Master$height, Master$weight, pch=19 )


### Add axes
# add an x-axis and y-axis

plot.new()
plot.window( xlim=c(xmin,xmax), ylim=c(ymin,ymax) )
box( "outer", col="gray" )
points( Master$height, Master$weight, pch=19 )
axis( side=1 )
axis( side=2, las=1 )   # las turns the y-axis tick mark numbers 

### Add Axis Labels
# add axis labels

plot.new()
plot.window( xlim=c(xmin,xmax), ylim=c(ymin,ymax) )
points( Master$height, Master$weight, pch=19 )
axis( side=1 )
axis( side=2, las=1 )
title( xlab="Height (inches)", ylab="Weight (lbs)" )
title( main="Relationship Between Height and Weight of MLB Players" )








#############
#############   COLORS 
#############


palette()  # default palette

# factor as color uses palette
plot( x=1:5, y=rep(3,5), 
      col=factor( c("a","b","c","d","e") ),   
      pch=19, cex=10 )


##  gray palette

plot( rnorm(100), 
      col=gray( level=0.5, alpha=0.2 ),
      pch=19, cex=4 )



## custom palette

color.function <- colorRampPalette( c("red", "gray80", "blue"), space = "Lab" )
color.function( 5 )  # "#FF0000" "#F5856A" "#CCCCCC" "#9973E8" "#0000FF"

plot( x=1:5, y=rep(3,5), 
      col=color.function(5),
      pch=19, cex=10 )







#########
#########  SOME PLOT OPTIONS FROM HELP FILES 
#########

## Show the different plot types

x <- 0:12
y <- sin(pi/5 * x)
op <- par(mfrow = c(3,3), mar = .1+ c(2,2,3,1))
for (tp in c("p","l","b",  "c","o","h",  "s","S","n")) {
   plot(y ~ x, type = tp, main = paste0("plot(*, type = \"", tp, "\")"))
   if(tp == "S") {
      lines(x, y, type = "s", col = "red", lty = 2)
      mtext("lines(*, type = \"s\", ...)", col = "red", cex = 0.8)
   }
}
par(op)


##-------- Showing all the extra & some char graphics symbols ---------
pchShow <-
  function(extras = c("*",".", "o","O","0","+","-","|","%","#"),
           cex = 3, ## good for both .Device=="postscript" and "x11"
           col = "red3", bg = "gold", coltext = "brown", cextext = 1.2,
           main = paste("plot symbols :  points (...  pch = *, cex =",
                        cex,")"))
  {
    nex <- length(extras)
    np  <- 26 + nex
    ipch <- 0:(np-1)
    k <- floor(sqrt(np))
    dd <- c(-1,1)/2
    rx <- dd + range(ix <- ipch %/% k)
    ry <- dd + range(iy <- 3 + (k-1)- ipch %% k)
    pch <- as.list(ipch) # list with integers & strings
    if(nex > 0) pch[26+ 1:nex] <- as.list(extras)
    plot(rx, ry, type = "n", axes  =  FALSE, xlab = "", ylab = "", main = main)
    abline(v = ix, h = iy, col = "lightgray", lty = "dotted")
    for(i in 1:np) {
      pc <- pch[[i]]
      ## 'col' symbols with a 'bg'-colored interior (where available) :
      points(ix[i], iy[i], pch = pc, col = col, bg = bg, cex = cex)
      if(cextext > 0)
          text(ix[i] - 0.3, iy[i], pc, col = coltext, cex = cextext)
    }
  }

pchShow()
pchShow(c("o","O","0"), cex = 2.5)
pchShow(NULL, cex = 4, cextext = 0, main = NULL)




## ------------ test code for various pch specifications -------------
# Try this in various font families (including Hershey)
# and locales.  Use sign = -1 asserts we want Latin-1.
# Standard cases in a MBCS locale will not plot the top half.
TestChars <- function(sign = 1, font = 1, ...)
{
   MB <- l10n_info()$MBCS
   r <- if(font == 5) { sign <- 1; c(32:126, 160:254)
       } else if(MB) 32:126 else 32:255
   if (sign == -1) r <- c(32:126, 160:255)
   par(pty = "s")
   plot(c(-1,16), c(-1,16), type = "n", xlab = "", ylab = "",
        xaxs = "i", yaxs = "i",
        main = sprintf("sign = %d, font = %d", sign, font))
   grid(17, 17, lty = 1) ; mtext(paste("MBCS:", MB))
   for(i in r) try(points(i%%16, i%/%16, pch = sign*i, font = font,...))
}
TestChars()
try(TestChars(sign = -1))
TestChars(font = 5)  # Euro might be at 160 (0+10*16).
                     # macOS has apple at 240 (0+15*16).
try(TestChars(-1, font = 2))  # bold





