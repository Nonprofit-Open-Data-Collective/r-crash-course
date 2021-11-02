---
layout: home
title: Overview
---



**TABLE OF CONTENTS:**

-----------------------

* TOC
{:toc}

-----------------------

<br>

## Overview 

This is a website to archive resources and sessions from a free Bootcamp for R series offered by the Data and Analytics Section at ARNOVA. 

<br>
<hr>
<br>


> It’s easy when you start out programming to get really frustrated and think, “Oh it’s me, I’m really stupid,” or, “I’m not made out to program.” But, that is absolutely not the case. Everyone gets frustrated. I still get frustrated occasionally when writing R code. It’s just a natural part of programming. So, it happens to everyone and gets less and less over time. Don’t blame yourself. Just take a break, do something fun, and then come back and try again later.
> 
> ~Hadley Wickham  [**Advice to young and old programmers**](https://www.r-bloggers.com/advice-to-young-and-old-programmers-a-conversation-with-hadley-wickham/)

<br>
<hr>
<br>


## Module 1 - Motivating the Bootcamp

[ [**SLIDES**](resources/r-bootcamp-ARNOVA-data-and-analytics.pdf) ]

[Base R](http://github.com/rstudio/cheatsheets/raw/master/base-r.pdf)  
[Data Wrangling](https://github.com/rstudio/cheatsheets/raw/master/data-transformation.pdf)  
[Descriptive Statistics](https://github.com/rstudio/cheatsheets/raw/master/overviewR.pdf)  
[state2R syntax translations](http://github.com/rstudio/cheatsheets/raw/master/stata2r.pdf) 

* Why Learn R? 
  - Efficiency 
  - Public stewardship 
  - Reproducibility crisis 
* How should I learn R?  
  - Where to start?  
  - R versus Python versus others 
  - Resources and support 

<br>
<hr>

<iframe width="560" height="315" src="https://www.youtube.com/embed/9GF2vPioyro" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr>
<br>
<br>


## Module 2 - R fundamentals + Base Graphics 

[DEMO SCRIPT](https://raw.githubusercontent.com/Nonprofit-Open-Data-Collective/r-crash-course/main/resources/graph-demo.R)

<hr>

<iframe width="560" height="315" src="https://www.youtube.com/embed/vzL21GZq-4s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr>

**Cheat Sheets** 
* [Helpful Vocabulary](resources/helpful-r-vocabulary-and-styles.pdf)  
* [Base R Cheat Sheet](resources/base-r-cheat-sheet.pdf)  

**Basics** 
* [Functions](http://ds4ps.org/dp4ss-textbook/ch-040-functions.html) 
* [Data Types](http://ds4ps.org/dp4ss-textbook/ch-050-vectors.html) 
* [Order of Operations](http://ds4ps.org/dp4ss-textbook/ch-033-calculator.html) 

**Groups** 
* [Logical Statements](http://ds4ps.org/dp4ss-textbook/p-050-business-logic.html) 
* [Group Structure](http://ds4ps.org/dp4ss-textbook/p-073-group-structure.html) 

**Data Wrangling** 
* [Data Verbs](http://ds4ps.org/dp4ss-textbook/p-070-data-verbs.html) 
* [Data Recipes](http://ds4ps.org/dp4ss-textbook/p-072-data-recipes.html) 
* [Data Joins](http://ds4ps.org/dp4ss-textbook/p-076-merging-data.html) 


**Course Notes** 
* [Intro to R](https://watts-college.github.io/cpp-526-fall-2021//schedule/)
* [Intermediate R](https://watts-college.github.io/cpp-527-fall-2021/schedule/)


![image](https://user-images.githubusercontent.com/1209099/135105967-f1d7cf36-5718-4605-8861-fe3b9af7cd5d.png){:width="50%"}
<br>
![image](https://user-images.githubusercontent.com/1209099/135105875-9a8ba5b2-1eda-4001-8161-051f570b6ee1.png){:width="50%"}
<br>
![image](https://user-images.githubusercontent.com/1209099/135106090-f9544637-33ac-4876-b37e-4987d210b4c6.png){:width="50%"}


**Cheat Sheets** 
* [Plot Basics](resources/plot-commands.pdf) 
* [Graphical Parameters Cheat Sheet](resources/r-graphical-parameters-cheatsheet.pdf) 
* [Graph Size Cheat Sheet](resources/graph-size-cheat-sheet.pdf)

**Graphics**
* [Base Graphics](http://ds4ps.org/dp4ss-textbook/p-061-plot-basics.html) 
* [Customization](http://ds4ps.org/dp4ss-textbook/p-062-customized-graphics.html) 
* [Colors](http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf) 

<br>
![image](https://user-images.githubusercontent.com/1209099/135145312-988efcc5-40c3-4315-97f1-9340f0ca43e5.png)
<br>
![image](https://user-images.githubusercontent.com/1209099/135145124-8513c3a7-7661-4f7e-a205-339c8247e9fd.png)
<br>


**Example**
* [compensation report](https://watts-college.github.io/cpp-527-fall-2021/labs/final-project-instructions.html#step-9-graph-results)

![image](https://user-images.githubusercontent.com/1209099/135145186-f5096870-05e3-4ccb-ac77-db1fb478e883.png)


<br>
<hr>
<br>

## Module 3 - Data, Packages, and APIs 

<hr>

<iframe width="560" height="315" src="https://www.youtube.com/embed/TJI6C5V23zo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr>
 
There are over 20,000 packages available in R, which is great when you are a power user and know enough to leverage all of these tools, but it can be overwhelming when you are just getting started. 

Here are some resources that give a broad overview of R packages by topic. A good place to start is in the Tidyverse, a set of packages that were written by the same set of authors using the same syntax "grammar" so that they all work well together. Many of these are wrapper packages that provide new names and consistent argument conventions for existing R functions. 

You will find notes on data input/output operations in R so that you can load external datasets and save results when you are done with sessions. The **dplyr** package is one of the key tools you will use for data cleaning, joins, and refinement as you are preparing your data for analysis. APIs are also powerful tools that let you import data from external databases using a few lines of code. 

**R Packages**
* [R Package Explorer](https://shiny.rstudio.com/gallery/cran-explorer.html)  
* [Tidyverse](https://www.tidyverse.org/packages/)  
* [CRAN Task Views](https://cran.r-project.org/web/views/)  

**Data Wrangling** 
* [Data Verbs (dplyr)](http://ds4ps.org/dp4ss-textbook/p-070-data-verbs.html) 
* [Data Recipes (piping)](http://ds4ps.org/dp4ss-textbook/p-072-data-recipes.html) 
* [Merging Datasets](http://ds4ps.org/dp4ss-textbook/p-076-merging-data.html)  
* [Example Lab](https://watts-college.github.io/cpp-526-fall-2021//labs/lab-05-instructions.html) 

**Data IO**
* [Import](http://ds4ps.org/dp4ss-textbook/ch-100-importing.html)  
* [Export](http://ds4ps.org/dp4ss-textbook/ch-101-exporting_files.html) 
* R Data Formats: RDS, Rdata 
* Open Formats: CSV, JSON, XML, ASCII 
* Proprietary Formats (load with a package): Excel .xls, Stata .dta, SPSS .sav
* [Copy/Paste from Excel with Clipboard](https://www.johndcook.com/blog/r_excel_clipboard/)

**APIs** 
* [What is an API?](https://watts-college.github.io/cpp-527-fall-2021/practice/week-06/)
* [Some APIs on R](https://cran.r-project.org/web/views/WebTechnologies.html)  
* [Examples from Data Journalism](https://www.storybench.org/how-to-access-apis-in-r/)  


<br>
<hr>
<br>

## Module 4 - R Shiny & Simulation 

<hr>

<iframe width="560" height="315" src="https://www.youtube.com/embed/iiTOE39_Qsk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr>

**DYNAMIC WEB APPS**

![](https://cdn.educba.com/academy/wp-content/uploads/2019/11/full-stack-web-developer.png)

**R SHINY**

R shiny replaces full-stack development with a single package. Shiny functions convert R objects to HTML+Javascript objects. 

* [Example Dynamic Graphic](https://archive.nytimes.com/www.nytimes.com/interactive/2013/03/29/sports/baseball/Strikeouts-Are-Still-Soaring.html?_r=0&ref=baseball) 
* [Shiny Overview](https://github.com/Watts-College/cpp-526-fall-2021/raw/main/lectures/shiny-widgets.pdf) 
* [Shiny Demo](https://shiny.rstudio.com/gallery/kmeans-example.html)
* [Demo RMD document with Shiny](https://cdn.rawgit.com/DS4PS/Data-Science-Class/53c986f1/TEMPLATES/ShinyWidgetsDemo.Rmd)
* [Shiny Widgets Library](https://shiny.rstudio.com/gallery/widget-gallery.html) 

<br>

**SIMULATION WITH LOOPS**

* [Introduction to Loops in R](https://watts-college.github.io/cpp-527-fall-2021/lectures/p-02-loops.html#1) 
* [Example Constructors](https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/review-sessions/week-02-loops.R)  
* [Creating Animations w Loops](https://watts-college.github.io/cpp-527-fall-2021/lectures/Animations.html)  


<br>
<hr>
<br>

## Module 5 - Data-Driven Docs, Dashboards, and Reproducibility 

<br>
<hr>
<br>

## Module 6 - Text Analysis 

[Text as Data](https://nonprofit-open-data-collective.github.io/r-crash-course/tutorials/text-as-data-in-r.pdf)

<iframe title="USATODAY-Embed Player" width="540" height="350" frameborder="0" scrolling="no" allowfullscreen="true" marginheight="0" marginwidth="0" src="https://uw-media.usatoday.com/embed/video/2791495002?placement=snow-embed"></iframe>

**NOTES:** 

* [String Processing](https://watts-college.github.io/cpp-527-fall-2021/lectures/string-processing.html)  
* [String Processing Slides](https://watts-college.github.io/cpp-527-fall-2021/lectures/string-processing-slides.pdf)  
* [Regular Expression Cheat Sheet](https://github.com/DS4PS/cpp-527-spr-2020/raw/master/lectures/regular-expressions%20one-page-cheat-sheet.pdf) 
* [StringR Package](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html)

**REPLICATION FILES**

* [Bespoke Mission Taxonomies](https://fjsantam.github.io/bespoke-npo-taxonomies/)
* [Semantic Network Results](https://www.dropbox.com/s/il8s80qrqtme27x/semantic-network-comparisons.zip?dl=0)

<br>
<hr>
<br>


