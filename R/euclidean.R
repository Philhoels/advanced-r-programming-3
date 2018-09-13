#' Euclidean Algorithm
#'
#' @param a Any numeric value greater than 0.
#' @param b Any numeric value greater than 0.
#'
#' @return The function returns the greatest common denominator of a and b.
#'
#' @references https://en.wikipedia.org/wiki/Euclidean_algorithm
#'
#' @examples
#' euclidean (6, 22)
#' euclidean (100, 1000)
euclidean = function(a, b){

  stopifnot(is.numeric(a) && is.numeric(b))

  a = abs(a)
  b = abs(b)

  while (b != 0) {
    t = b
    b = a %% b
    a = t
  }
  return(a)
}

