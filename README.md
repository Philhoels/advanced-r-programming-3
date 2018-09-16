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
devtools::install_github("flennic/advanced-r-programming-3")
```

## Example
```{r example, eval = FALSE}
library(euclid.dijkstra)

# Example for the euclidean algorithm
euclidean(20,50)
#> [1] 10

# Example for the Dijkstra Algorithm
dijkstra(wiki_graph, 3)
#> [1]  9 10  0 11 11  2

```
