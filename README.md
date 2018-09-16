# Advanced Programming in R - Assignment 3
[![Build Status](https://travis-ci.com/flennic/advanced-r-programming-3.svg?branch=master)](https://travis-ci.com/flennic/advanced-r-programming-3)

[![Coverage Status](https://img.shields.io/codecov/c/github/flennic/advanced-r-programming-3/master.svg)](https://codecov.io/github/flennic/advanced-r-programming-3?branch=master)

This is the 3rd assignment of the course Advanced Programming in R at Linköping University in 2018.

Course information and all assignments can be found at https://www.ida.liu.se/~732A94/info/courseinfo.en.shtml.

## Exercise

The exercise for the 3rd assignment is to implement the euclidean and dijkstra algorithm.


## Installation

The package can be downloaded from GitHub via R with:

```{r installation, eval = FALSE}
devtools::install_git("https://github.com/flennic/advanced-r-programming-3.git")
```

## Example
```{r example, eval = FALSE}
library(euclid.dijkstra)

# Example for the euclidean algorithm
euclidean(20,50)
#> [1] 10

# Example for the Dijkstra Algorithm
wiki_graph = data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6), v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5), w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
dijkstra(wiki_graph, 3)
#> [1]  9 10  0 11 11  2

```


