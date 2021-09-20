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


