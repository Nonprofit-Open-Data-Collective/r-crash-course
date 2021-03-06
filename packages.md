---
title: "Getting Started"
---


If you don't have a background in computer science but want to learn data programming, the process of getting started can be both exciting and overwhelming. 

Resources available on this site are meant to introduce you to a few of the powerful data science tools that have been built with and for the R language, one of the most popular data programming languages for academics and social scientists. 

There is no right way to get started. Some enroll in formal university classes, some learn on the job, and others find online resources for self-study.

One approach is to pick an arbitrary project that requires programming skills and let your curiosity and your nerd instincts guide you:

<br>

<iframe width="315" height="560" src="https://www.youtube.com/embed/vv6umXQHzKs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<br>

These resources are meant mostly as a gentle introduction to the R universe to gain contextual knowledge about the ecosystem before diving into to serious study. 

They are meant as high-level background information about R and the platforms like R Studio that make it easier to conduct your analysis and package results. They also provide lots of concrete examples to give you a sense of what projects might look like. 

<br>
<hr>
<br>

**Beginnings** 

*Nobody tells this to people who are beginners, and I really wish somebody had told this to me.*

*All of us who do creative work, we get into it because we have good taste. But it’s like there is this gap. For the first couple years that you’re making stuff, what you’re making isn’t so good. It’s not that great. It’s trying to be good, it has ambition to be good, but it’s not that good.*

*But your taste, the thing that got you into the game, is still killer. And your taste is good enough that you can tell that what you’re making is kind of a disappointment to you. A lot of people never get past that phase. They quit.*

*Everybody I know who does interesting, creative work they went through years where they had really good taste and they could tell that what they were making wasn’t as good as they wanted it to be. They knew it fell short. Everybody goes through that.*

*And if you are just starting out or if you are still in this phase, you gotta know its normal and the most important thing you can do is do a lot of work. Do a huge volume of work. Put yourself on a deadline so that every week or every month you know you’re going to finish one story. It is only by going through a volume of work that you’re going to catch up and close that gap. And the work you’re making will be as good as your ambitions.*

*I took longer to figure out how to do this than anyone I’ve ever met. It takes awhile. It’s gonna take you a while. It’s normal to take a while. You just have to fight your way through that.*

—Ira Glass [*On Failure*](https://jamesclear.com/ira-glass-failure)

<br>
<hr>
<br>


# Set-Up

Before joining the workshop try to install the R environment and necessary tools on your computer. 

1. [Install R](https://cran.rstudio.com/) 
2. [Install R Studio Desktop](https://www.rstudio.com/products/rstudio/download/)  
3. [Register for a GitHub User Account](https://github.com/join)

**All of these tools are FREE.**

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

*These are not applicable to the bootcamp, but helpful background info and some tips for students on a budget.*

You will need a reliable laptop or desktop computer to run these programs. They will not run on a tablet. 

There are no specific hardware requirements but I would recommend the following minimum specs to do any serious work in R: 

* At least 8 Gigs of RAM 
* At least 10 Gigs of storage space available

R is a memory-intensive program, so more RAM is better. You can find a solid laptop with 8GB of RAM and 256 GB of storage for about $750, or 16GB-32GB of RAM and 5000 - 1,000 GB of storage for about $1,000. The ASUS ZenBook, for example, is a good benchmark for affordable but reliable options. 

Desktops will typically offer you more power for the same price since it doesn't require miniturized components and doesn't have to withstand the abuse a laptop does. The Dell Inspiron is a good benchmark for affordable yet reliable options. 

If you are on a budget consider buying a refurbished machine from a licensed supplier. You can find nice desktop towers for $250. Note that the quality-assurance testing requirements for refurbished machines are often higher than for new computers, so many refurbished machines are inexpensive but reliable. 

Often times large companies or schools have contracts where machines are replaced each year, so buying a refurbished computer is like buying a used car from a rental company - a steep discount on something that is low miles and well-maintained. Other times a refurbished computer might be a product that was opened and then returned to a retailer, in which case it is essentially new. Just make sure to buy from a reputable vender that has a good track record (good reviews) and a good warranty on their work (one year maintenance or replacement). 

I also recommend buying something off of a marketplace like Amazon since they will cover shipping costs if you have to return anything and if the vender is not responsive Amazon will be able to settle a dispute and can refund your purchase, offering additional protection if you run into problems. 

