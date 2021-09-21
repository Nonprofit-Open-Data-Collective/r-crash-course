---
title: "Getting Started"
---


## Set-Up

Before joining the workshop try to install the R environment and necessary tools on your computer. **All of these tools are FREE.**

1. [Install R](https://cran.rstudio.com/) 
2. [Install R Studio Desktop](https://www.rstudio.com/products/rstudio/download/)  
3. [Register for a GitHub User Account](https://github.com/join)


<br>
<hr> 
<br> 


## Installing Packages

We will use a number of R packages throughout the workshop. I will keep adding to the list here for easy reference and installation: 


```r
install.packages( c( "dplyr","pander","shiny","tidyverse","devtools","knitr" ) )
```

You only need to install packages once. After installation you will load each using the library() command: 

```r
library( dplyr )
library( pander )
```

Note that the **tidyverse** is a core set of packages that you will consistently use for data wrangling and visualization. When you load the **tidyverse** package you are actually loading a large collection of packages. You can learn more at the [Tidyverse website](https://www.tidyverse.org/packages/). 


<br>
<hr> 
<br> 

## Notes on Hardware 

*These are not applicable to the bootcamp, but helpful info in general.*

You will need a reliable laptop or desktop computer to run these programs. They will not run on a tablet. 

There are no specific hardware requirements but I would recommend the following minimum specs to work with the types of data files or computational procedures you will encounter in common data analysis: 

* At least 8 Gigs of RAM 
* At least 10 Gigs of storage space available
* High-speed internet 
* Any operating system is fine (Windows or Apple) but no support will be provided for Linux and Apple machines require more time configuring software 

R is a memory-intensive program, so more RAM is better. You can find a solid laptop with 8GB of RAM and 256 GB of storage for about $750, or 16GB-32GB of RAM and 5000 - 1,000 GB of storage for about $1,000. The ASUS ZenBook, for example, is a good benchmark for affordable but reliable options. 

Desktops will typically offer you more power for the same price since it doesn't require miniturized components and doesn't have to withstand the abuse a laptop does. The Dell Inspiron is a good benchmark for affordable yet reliable options. 

*If you are on a budget consider buying a refurbished machine from a licensed supplier. You can find nice desktop towers for $250. Note that the quality-assurance testing requirements for refurbished machines are often higher than for new computers, so many refurbished machines are inexpensive but reliable. Often times large companies or schools have contracts where machines are replaced each year, so buying a refurbished computer is like buying a used car from a rental company - a steep discount on something that is low miles and well-maintained. Other times a refurbished computer might be a product that was opened and then returned to a retailer, in which case it is essentially new. Just make sure to buy from a reputable vender that has a good track record (good reviews) and a good warranty on their work (one year maintenance or replacement). I also recommend buying something off of a marketplace like Amazon since they will cover shipping costs if you have to return anything and if the vender is not responsive Amazon will be able to settle a dispute and can refund your purchase, offering additional protection if you do run into problems.* 

